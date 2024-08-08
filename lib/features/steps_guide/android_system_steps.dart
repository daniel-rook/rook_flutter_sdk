import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:logging/logging.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';

class AndroidSystemSteps extends StatefulWidget {
  const AndroidSystemSteps({super.key});

  @override
  State<AndroidSystemSteps> createState() => _AndroidSystemStepsState();
}

class _AndroidSystemStepsState extends State<AndroidSystemSteps> {
  final Logger logger = Logger('AndroidSystemSteps');

  bool isStepsServiceAvailable = false;
  bool hasAndroidPermissions = false;
  bool androidPermissionsPreviouslyDenied = false;
  bool isTrackingSteps = false;

  int steps = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FocusDetector(
        onFocusGained: checkStepsServiceStatus,
        child: isStepsServiceAvailable
            ? SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (!androidPermissionsPreviouslyDenied &&
                        !hasAndroidPermissions)
                      FilledButton(
                        onPressed: requestAndroidPermissions,
                        child: const Text("Request Android permissions"),
                      ),
                    if (androidPermissionsPreviouslyDenied &&
                        !hasAndroidPermissions)
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
                    if (hasAndroidPermissions && !isTrackingSteps)
                      FilledButton(
                        onPressed: () {
                          AndroidStepsManager.enableBackgroundAndroidSteps()
                              .then((_) {
                            checkStepsServiceStatus();
                          }).catchError((error) {
                            logger.severe("Error enabling steps: $error");
                          });
                        },
                        child: const Text("Enable steps tracking"),
                      ),
                    if (isTrackingSteps)
                      FilledButton(
                        onPressed: () {
                          AndroidStepsManager.disableBackgroundAndroidSteps()
                              .then((_) {
                            checkStepsServiceStatus();
                          }).catchError((error) {
                            logger.severe("Error disabling steps: $error");
                          });
                        },
                        child: const Text("Disable steps tracking"),
                      ),
                    if (isTrackingSteps)
                      FilledButton(
                        onPressed: () {
                          AndroidStepsManager.syncTodayAndroidStepsCount()
                              .then((syncedSteps) {
                            setState(() => steps = syncedSteps);
                          }).catchError((error) {
                            logger.severe('Error syncing steps: $error');
                          });
                        },
                        child: const Text("Sync today steps"),
                      ),
                    if (isTrackingSteps && steps > 0)
                      Text("Steps synced: $steps"),
                  ],
                ),
              )
            : const Center(
                child: Text("Steps service is not available in your device"),
              ),
      ),
    );
  }

  Future<void> checkStepsServiceStatus() async {
    final isStepsServiceAvailable = await AndroidStepsManager.isAvailable();
    final hasAndroidPermissions =
        await HCRookHealthPermissionsManager.checkAndroidPermissions();
    final isActive = await AndroidStepsManager.isBackgroundAndroidStepsActive();

    setState(() {
      this.isStepsServiceAvailable = isStepsServiceAvailable;
      this.hasAndroidPermissions = hasAndroidPermissions;
      isTrackingSteps = isActive;
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
            () => hasAndroidPermissions = true,
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
}
