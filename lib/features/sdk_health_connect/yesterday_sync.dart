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

  final rookHealthPermissionsManager = HCRookHealthPermissionsManager();

  SharedPreferences? sharedPreferences;

  bool androidPermissionsChecked = false;
  bool healthConnectPermissionsChecked = false;
  bool userAcceptedYesterdaySync = false;

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
              subtitle: const Text(
                "POST_NOTIFICATIONS, FOREGROUND_SERVICE, FOREGROUND_SERVICE_HEALTH, ACTIVITY_RECOGNITION",
              ),
              value: androidPermissionsChecked,
              onChanged: (value) {},
            ),
            const SizedBox(height: 10),
            const FilledButton(
              onPressed:
                  HCRookYesterdaySyncPermissions.requestAndroidPermissions,
              child: Text("Request Permissions"),
            ),
            const SizedBox(height: 20),
            CheckboxListTile(
              title: const Text("Health Connect permissions"),
              subtitle: const Text("SLEEP, PHYSICAL, BODY"),
              value: healthConnectPermissionsChecked,
              onChanged: (value) {},
            ),
            const SizedBox(height: 10),
            const FilledButton(
              onPressed: HCRookYesterdaySyncPermissions
                  .requestHealthConnectPermissions,
              child: Text("Request Permissions"),
            ),
            FilledButton(
              onPressed: openHealthConnect,
              child: const Text("Open Health Connect"),
            ),
            const SizedBox(height: 20),
            CheckboxListTile(
              title: const Text("Yesterday Sync"),
              value: userAcceptedYesterdaySync,
              onChanged: (value) {},
            ),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: userAcceptedYesterdaySync
                  ? disableYesterdaySync
                  : enableYesterdaySync,
              child: Text(
                userAcceptedYesterdaySync
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
    HCRookYesterdaySyncPermissions.hasAndroidPermissions()
        .then((hasAndroidPermissions) {
      setState(() => androidPermissionsChecked = hasAndroidPermissions);
    }).catchError((error) {
      logger.severe("hasAndroidPermissions - error: $error");
    });

    HCRookYesterdaySyncPermissions.hasHealthConnectPermissions()
        .then((hasHealthConnectPermissions) {
      setState(
          () => healthConnectPermissionsChecked = hasHealthConnectPermissions);
    }).catchError((error) {
      logger.severe("hasHealthConnectPermissions - error: $error");
    });
  }

  void openHealthConnect() {
    logger.info('Opening Health Connect...');

    rookHealthPermissionsManager.openHealthConnectSettings().then((_) {
      logger.info('Health Connect was opened');
    }).catchError((exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (HealthConnectNotInstalledException it) =>
          'HealthConnectNotInstalledException: ${it.message}',
        (DeviceNotSupportedException it) =>
          'DeviceNotSupportedException: ${it.message}',
        _ => exception.toString(),
      };

      logger.info('Error opening Health Connect:');
      logger.info(error);
    });
  }

  void checkYesterdaySyncAcceptation() async {
    try {
      sharedPreferences = await SharedPreferences.getInstance();

      final acceptedYesterdaySync =
          sharedPreferences?.getBool("ACCEPTED_YESTERDAY_SYNC") ?? false;

      setState(() => userAcceptedYesterdaySync = acceptedYesterdaySync);
    } catch (error) {
      logger.severe("Error getting SharedPreferences: $error");
    }
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
