import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/future_extensions.dart';
import 'package:rook_flutter_sdk/common/preferences.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/rook_sdk_samsung_health.dart';

const String samsungBackgroundSyncRoute = '/samsung/background-sync';

class SamsungBackgroundSync extends StatefulWidget {
  const SamsungBackgroundSync({super.key});

  @override
  State<SamsungBackgroundSync> createState() => _SamsungBackgroundSyncState();
}

class _SamsungBackgroundSyncState extends State<SamsungBackgroundSync> {
  final Logger logger = Logger('SamsungBackgroundSync');

  bool hasDataTypesPermissions = false;
  bool backgroundEnabled = false;

  ConsoleOutput backgroundSyncOutput = ConsoleOutput();

  StreamSubscription<SamsungHealthPermissionsSummary>?
      samsungHealthPermissionsSubscription;
  StreamSubscription<bool>? isScheduledUpdatesSubscription;

  @override
  void initState() {
    samsungHealthPermissionsSubscription = RookSamsung
        .requestSamsungHealthPermissionsUpdates
        .listen((permissionsSummary) {
      setState(() {
        hasDataTypesPermissions = permissionsSummary.dataTypesGranted ||
            permissionsSummary.dataTypesPartiallyGranted;
      });
    });

    isScheduledUpdatesSubscription =
        RookSamsung.isScheduledUpdates.listen((isScheduled) {
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
    samsungHealthPermissionsSubscription?.cancel();
    isScheduledUpdatesSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Background Sync',
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          CheckboxListTile(
            title: const Text("Data types permissions"),
            value: hasDataTypesPermissions,
            onChanged: (value) {},
          ),
          FilledButton(
            onPressed: requestPermissions,
            child: const Text("Request permissions"),
          ),
          CheckboxListTile(
            title: const Text("Background Sync"),
            value: backgroundEnabled,
            onChanged: (value) {},
          ),
          Text(backgroundSyncOutput.current),
          FilledButton(
            onPressed: (hasDataTypesPermissions && !backgroundEnabled)
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
        await RookSamsung.checkSamsungHealthPermissions(_samsungPermissions)
            .getOrFalse();

    final hasPartialPermissions =
        await RookSamsung.checkSamsungHealthPermissions(_samsungPermissions)
            .getOrFalse();

    setState(() {
      hasDataTypesPermissions = hasPermissions || hasPartialPermissions;
    });
  }

  void requestPermissions() async {
    try {
      final requestPermissionsStatus =
          await RookSamsung.requestSamsungHealthPermissions(_samsungPermissions);

      String message = switch (requestPermissionsStatus) {
        RequestPermissionsStatus.alreadyGranted =>
          'Permissions already granted',
        RequestPermissionsStatus.requestSent =>
          'Permissions request sent',
      };

      logger.info(message);
    } catch (error) {
      logger.severe("Error requesting Samsung Health permissions: $error");
    }
  }

  void automaticallyStartBackgroundSync() async {
    final autoSyncAcceptation = await AppPreferences().getSamsungAutoSyncAcceptation();

    backgroundSyncOutput.clear();

    if (autoSyncAcceptation) {
      setState(() {
        backgroundSyncOutput.append("Enabling background sync...");
      });

      try {
        await RookSamsung.enableBackground(enableNativeLogs: isDebug);

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
        await RookSamsung.disableBackground();

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
    await AppPreferences().setSamsungAutoSyncAcceptation(true);
    automaticallyStartBackgroundSync();
  }

  void disableBackgroundSync() async {
    await AppPreferences().setSamsungAutoSyncAcceptation(false);
    automaticallyStartBackgroundSync();
  }
}

const _samsungPermissions = [
  SamsungHealthPermission.activitySummary,
  SamsungHealthPermission.bloodGlucose,
  SamsungHealthPermission.bloodOxygen,
  SamsungHealthPermission.bloodPressure,
  SamsungHealthPermission.bodyComposition,
  SamsungHealthPermission.exercise,
  SamsungHealthPermission.exerciseLocation,
  SamsungHealthPermission.floorsClimbed,
  SamsungHealthPermission.heartRate,
  SamsungHealthPermission.nutrition,
  SamsungHealthPermission.sleep,
  SamsungHealthPermission.steps,
  SamsungHealthPermission.waterIntake,
];
