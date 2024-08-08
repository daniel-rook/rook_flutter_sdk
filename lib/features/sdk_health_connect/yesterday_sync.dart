import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String yesterdaySyncRoute = '/android/yesterday-sync';

class YesterdaySync extends StatefulWidget {
  const YesterdaySync({super.key});

  @override
  State<YesterdaySync> createState() => _YesterdaySyncState();
}

class _YesterdaySyncState extends State<YesterdaySync> {
  final Logger logger = Logger('YesterdaySync');

  SharedPreferences? sharedPreferences;

  bool androidPermissionsChecked = false;
  bool androidPermissionsPreviouslyDenied = false;
  bool healthConnectPermissionsChecked = false;
  bool yesterdaySyncChecked = false;

  StreamSubscription<bool>? androidPermissionsSubscription;
  StreamSubscription<bool>? healthConnectPermissionsSubscription;

  @override
  void initState() {
    SharedPreferences.getInstance().then((value) => sharedPreferences = value);

    androidPermissionsSubscription = HCRookHealthPermissionsManager
        .requestAndroidPermissionsUpdates
        .listen((permissionsGranted) {
      setState(
        () => androidPermissionsChecked = permissionsGranted,
      );
    });

    healthConnectPermissionsSubscription = HCRookHealthPermissionsManager
        .requestHealthConnectPermissionsUpdates
        .listen((permissionsGranted) {
      setState(
        () => healthConnectPermissionsChecked = permissionsGranted,
      );
    });

    HCRookHealthPermissionsManager.shouldRequestAndroidPermissions().then(
      (shouldRequestPermissions) => setState(
        () => androidPermissionsPreviouslyDenied = !shouldRequestPermissions,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    androidPermissionsSubscription?.cancel();
    healthConnectPermissionsSubscription?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Yesterday Sync Permissions',
      alignment: Alignment.topCenter,
      child: FocusDetector(
        onFocusGained: () {
          checkPermissions();
          checkYesterdaySyncAcceptation();
        },
        child: Column(
          children: [
            CheckboxListTile(
              title: const Text("Android permissions"),
              value: androidPermissionsChecked,
              onChanged: (value) {},
            ),
            if (!androidPermissionsPreviouslyDenied &&
                !androidPermissionsChecked)
              FilledButton(
                onPressed: requestAndroidPermissions,
                child: const Text("Request Android permissions"),
              ),
            if (androidPermissionsPreviouslyDenied &&
                !androidPermissionsChecked)
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "You previously denied permissions, now you must manually grant them.",
                      ),
                      TextButton(
                        onPressed: AppSettings.openAppSettings,
                        child: Text("Open application Settings"),
                      )
                    ],
                  ),
                ),
              ),
            const SizedBox(height: 20),
            CheckboxListTile(
              title: const Text("Health Connect permissions"),
              value: healthConnectPermissionsChecked,
              onChanged: (value) {},
            ),
            FilledButton(
              onPressed: requestHealthConnectPermissions,
              child: const Text("Request Health Connect permissions"),
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
            const SizedBox(height: 20),
            CheckboxListTile(
              title: const Text("Yesterday Sync"),
              value: yesterdaySyncChecked,
              onChanged: (value) {},
            ),
            FilledButton(
              onPressed: yesterdaySyncChecked
                  ? disableYesterdaySync
                  : enableYesterdaySync,
              child: Text(
                yesterdaySyncChecked
                    ? "Disable Yesterday Sync"
                    : "Enable Yesterday Sync",
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checkPermissions() {
    HCRookHealthPermissionsManager.checkAndroidPermissions()
        .then((permissionsGranted) {
      setState(
        () => androidPermissionsChecked = permissionsGranted,
      );
    }).catchError((error) {
      logger.severe("checkAndroidPermissions - error: $error");
    });

    HCRookHealthPermissionsManager.checkHealthConnectPermissions()
        .then((permissionsGranted) {
      setState(
        () => healthConnectPermissionsChecked = permissionsGranted,
      );
    }).catchError((error) {
      logger.severe("hasHealthConnectPermissions - error: $error");
    });
  }

  void requestAndroidPermissions() async {
    try {
      final shouldRequestPermissions =
          await HCRookHealthPermissionsManager.shouldRequestAndroidPermissions();

      if (shouldRequestPermissions) {
        final requestPermissionsStatus =
            await HCRookHealthPermissionsManager.requestAndroidPermissions();

        final permissionsAlreadyGranted =
            requestPermissionsStatus == RequestPermissionsStatus.alreadyGranted;

        if (permissionsAlreadyGranted) {
          setState(
            () => androidPermissionsChecked = true,
          );
        }
      } else {
        setState(
          () => androidPermissionsPreviouslyDenied = true,
        );
      }
    } catch (error) {
      logger.severe('requestAndroidPermissions - error: $error');
    }
  }

  void requestHealthConnectPermissions() {
    HCRookHealthPermissionsManager.requestHealthConnectPermissions()
        .then((requestPermissionsStatus) {
      final permissionsAlreadyGranted =
          requestPermissionsStatus == RequestPermissionsStatus.alreadyGranted;

      if (permissionsAlreadyGranted) {
        setState(
          () => healthConnectPermissionsChecked = true,
        );
      }
    }).catchError((error) {
      logger.severe('Error requesting permissions: $error');
    });
  }

  void openHealthConnect() {
    logger.info('Opening Health Connect...');

    HCRookHealthPermissionsManager.openHealthConnectSettings().then((_) {
      logger.info('Health Connect was opened');
    }).catchError((error) {
      logger.severe('Error opening Health Connect: $error');
    });
  }

  void checkYesterdaySyncAcceptation() {
    final acceptedYesterdaySync = sharedPreferences?.getBool(
      "ACCEPTED_YESTERDAY_SYNC",
    );

    setState(
      () => yesterdaySyncChecked = acceptedYesterdaySync ?? false,
    );
  }

  void enableYesterdaySync() {
    sharedPreferences?.setBool("ACCEPTED_YESTERDAY_SYNC", true);
    checkYesterdaySyncAcceptation();
  }

  void disableYesterdaySync() {
    sharedPreferences?.setBool("ACCEPTED_YESTERDAY_SYNC", false);
    checkYesterdaySyncAcceptation();
  }
}
