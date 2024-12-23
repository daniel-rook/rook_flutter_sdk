import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String androidContinuousUploadRoute = '/android/continuous-upload';

class AndroidContinuousUpload extends StatefulWidget {
  const AndroidContinuousUpload({super.key});

  @override
  State<AndroidContinuousUpload> createState() =>
      _AndroidContinuousUploadState();
}

class _AndroidContinuousUploadState extends State<AndroidContinuousUpload> {
  final Logger logger = Logger('AndroidContinuousUpload');

  SharedPreferences? sharedPreferences;

  bool androidPermissionsChecked = false;
  bool androidPermissionsPreviouslyDenied = false;
  bool healthConnectPermissionsChecked = false;
  bool continuousChecked = false;

  ConsoleOutput continuousUploadOutput = ConsoleOutput();

  StreamSubscription<AndroidPermissionsSummary>? androidPermissionsSubscription;
  StreamSubscription<HealthConnectPermissionsSummary>?
      healthConnectPermissionsSubscription;

  @override
  void initState() {
    SharedPreferences.getInstance().then((value) => sharedPreferences = value);

    androidPermissionsSubscription = HCRookHealthPermissionsManager
        .requestAndroidPermissionsUpdates
        .listen((permissionsSummary) {
      setState(() {
        androidPermissionsChecked = permissionsSummary.permissionsGranted;
        androidPermissionsPreviouslyDenied =
            !permissionsSummary.dialogDisplayed;
      });
    });

    healthConnectPermissionsSubscription = HCRookHealthPermissionsManager
        .requestHealthConnectPermissionsUpdates
        .listen((permissionsSummary) {
      setState(() {
        healthConnectPermissionsChecked = permissionsSummary.dataTypesGranted ||
            permissionsSummary.dataTypesPartiallyGranted;
      });
    });

    HCRookHealthPermissionsManager.shouldRequestAndroidPermissions()
        .then((shouldRequestPermissions) {
      setState(() {
        androidPermissionsPreviouslyDenied = !shouldRequestPermissions;
      });
    });

    automaticallyStartContinuousUpload();
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
      name: 'Continuous upload',
      alignment: Alignment.topCenter,
      child: FocusDetector(
        onFocusGained: checkPermissions,
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
              title: const Text("Continuous Upload"),
              value: continuousChecked,
              onChanged: (value) {},
            ),
            Text(continuousUploadOutput.current),
            FilledButton(
              onPressed: continuousChecked
                  ? disableContinuousUpload
                  : enableContinuousUpload,
              child: Text(
                continuousChecked
                    ? "Disable Continuous Upload"
                    : "Enable Continuous Upload",
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
      final shouldRequestPermissions = await HCRookHealthPermissionsManager
          .shouldRequestAndroidPermissions();

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

  void automaticallyStartContinuousUpload() async {
    final acceptedContinuous =
        sharedPreferences?.getBool(acceptedAndroidContinuousKey) ?? false;

    if (acceptedContinuous) {
      continuousUploadOutput.clear();

      setState(() {
        continuousUploadOutput.append("Enabling continuous upload...");
      });

      HCRookYesterdaySyncManager.scheduleYesterdaySync(
        enableNativeLogs: isDebug,
      ).then((_) {
        setState(() {
          continuousUploadOutput.append("Continuous upload enabled");
        });
      }).catchError((error) {
        setState(() {
          continuousUploadOutput.append(
            "Error enabling continuous upload $error",
          );
        });
      });
    }

    setState(() {
      continuousChecked = acceptedContinuous;
    });
  }

  void enableContinuousUpload() {
    sharedPreferences?.setBool(acceptedAndroidContinuousKey, true);
    automaticallyStartContinuousUpload();
  }

  void disableContinuousUpload() {
    sharedPreferences?.setBool(acceptedAndroidContinuousKey, false);
    automaticallyStartContinuousUpload();
  }
}

const acceptedAndroidContinuousKey = "ACCEPTED_ANDROID_CONTINUOUS";
