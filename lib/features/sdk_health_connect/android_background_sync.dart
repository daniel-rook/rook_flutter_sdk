import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/future_extensions.dart';
import 'package:rook_flutter_sdk/common/preferences.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';

const String androidBackgroundSyncRoute = '/android/background-sync';

class AndroidBackgroundSync extends StatefulWidget {
  const AndroidBackgroundSync({super.key});

  @override
  State<AndroidBackgroundSync> createState() => _AndroidBackgroundSyncState();
}

class _AndroidBackgroundSyncState extends State<AndroidBackgroundSync> {
  final Logger logger = Logger('AndroidBackgroundSync');

  bool isBackgroundSyncSupported = false;
  bool hasDataTypesPermissions = false;
  bool hasBackgroundReadPermissions = false;
  bool backgroundEnabled = false;

  ConsoleOutput backgroundSyncOutput = ConsoleOutput();

  StreamSubscription<HealthConnectPermissionsSummary>?
      healthConnectPermissionsSubscription;
  StreamSubscription<bool>? isScheduledUpdatesSubscription;

  @override
  void initState() {
    healthConnectPermissionsSubscription = HCRookHealthPermissionsManager
        .requestHealthConnectPermissionsUpdates
        .listen((permissionsSummary) {
      setState(() {
        hasDataTypesPermissions = permissionsSummary.dataTypesGranted ||
            permissionsSummary.dataTypesPartiallyGranted;
        hasBackgroundReadPermissions = permissionsSummary.backgroundReadGranted;
      });
    });

    isScheduledUpdatesSubscription =
        HCRookBackgroundSync.isScheduledUpdates.listen((isScheduled) {
      setState(() {
        backgroundEnabled = isScheduled;
      });
    });

    checkAvailabilityAndPermissions();
    automaticallyStartBackgroundSync();

    super.initState();
  }

  @override
  void dispose() {
    healthConnectPermissionsSubscription?.cancel();
    isScheduledUpdatesSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final errorTextStyle = Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(color: Theme.of(context).colorScheme.error);

    return ScrollableScaffold(
      name: 'Background Sync',
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          if (!isBackgroundSyncSupported)
            Text(
              "Background sync is not supported on your device",
              style: errorTextStyle,
            ),
          CheckboxListTile(
            title: const Text("Data types permissions"),
            value: hasDataTypesPermissions,
            onChanged: (value) {},
          ),
          CheckboxListTile(
            title: const Text("Background read permissions"),
            value: hasBackgroundReadPermissions,
            onChanged: (value) {},
          ),
          FilledButton(
            onPressed: requestPermissions,
            child: const Text("Request permissions"),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "If you don't see the permission request list you must manually grant them.",
                  ),
                  TextButton(
                    onPressed: openHealthConnect,
                    child: const Text("Open Health Connect"),
                  )
                ],
              ),
            ),
          ),
          CheckboxListTile(
            title: const Text("Background Sync"),
            value: backgroundEnabled,
            onChanged: (value) {},
          ),
          Text(backgroundSyncOutput.current),
          FilledButton(
            onPressed: (hasDataTypesPermissions &&
                    hasBackgroundReadPermissions &&
                    !backgroundEnabled)
                ? enableBackgroundSync
                : null,
            child: const Text("Enable Background Sync"),
          ),
          FilledButton(
            onPressed: backgroundEnabled ? disableBackgroundSync : null,
            child: const Text("Disable Background Sync"),
          ),
        ],
      ),
    );
  }

  void checkAvailabilityAndPermissions() async {
    final hasPermissions =
        await HCRookHealthPermissionsManager.checkHealthConnectPermissions()
            .getOrFalse();

    final hasPartialPermissions = await HCRookHealthPermissionsManager
            .checkHealthConnectPermissionsPartially()
        .getOrFalse();

    HCBackgroundReadStatus backgroundReadStatus;

    try {
      backgroundReadStatus =
          await HCRookHealthPermissionsManager.checkBackgroundReadStatus();
    } catch (ignored) {
      backgroundReadStatus = HCBackgroundReadStatus.unavailable;
    }

    setState(() {
      isBackgroundSyncSupported =
          backgroundReadStatus != HCBackgroundReadStatus.unavailable;
      hasDataTypesPermissions = hasPermissions || hasPartialPermissions;
      hasBackgroundReadPermissions =
          backgroundReadStatus == HCBackgroundReadStatus.permissionGranted;
    });
  }

  void requestPermissions() async {
    try {
      final requestPermissionsStatus = await HCRookHealthPermissionsManager
          .requestHealthConnectPermissions();

      String message = switch (requestPermissionsStatus) {
        RequestPermissionsStatus.alreadyGranted =>
          'Permissions already granted',
        RequestPermissionsStatus.requestSent =>
          'Permissions request sent, if nothing happens open Health Connect settings and give permissions manually',
      };

      logger.info(message);
    } catch (error) {
      logger.severe("Error requesting Health Connect permissions: $error");
    }
  }

  void openHealthConnect() async {
    try {
      await HCRookHealthPermissionsManager.openHealthConnectSettings();

      logger.info("Health Connect settings were opened");
    } catch (error) {
      logger.severe("Error opening Health Connect settings: $error");
    }
  }

  void automaticallyStartBackgroundSync() async {
    final autoSyncAcceptation = await AppPreferences().getAutoSyncAcceptation();

    backgroundSyncOutput.clear();

    if (autoSyncAcceptation) {
      setState(() {
        backgroundSyncOutput.append("Enabling background sync...");
      });

      try {
        await HCRookBackgroundSync.enableBackground(enableNativeLogs: isDebug);

        setState(() {
          backgroundSyncOutput.append("Background sync enabled");
        });
      } catch (error) {
        setState(() {
          backgroundSyncOutput.append("Error enabling background sync $error");
        });
      }
    } else {
      setState(() {
        backgroundSyncOutput.append("Disabling background sync...");
      });

      try {
        await HCRookBackgroundSync.disableBackground();

        setState(() {
          backgroundSyncOutput.append("Background sync disabled");
        });
      } catch (error) {
        setState(() {
          backgroundSyncOutput.append("Error disabling background sync $error");
        });
      }
    }
  }

  void enableBackgroundSync() async {
    await AppPreferences().setAutoSyncAcceptation(true);
    automaticallyStartBackgroundSync();
  }

  void disableBackgroundSync() async {
    await AppPreferences().setAutoSyncAcceptation(false);
    automaticallyStartBackgroundSync();
  }
}
