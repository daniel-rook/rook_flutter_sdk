import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:logging/logging.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:url_launcher/url_launcher.dart';

class HealthConnectSteps extends StatefulWidget {
  const HealthConnectSteps({super.key});

  @override
  State<HealthConnectSteps> createState() => _HealthConnectStepsState();
}

class _HealthConnectStepsState extends State<HealthConnectSteps> {
  final Logger logger = Logger('HealthConnectSteps');

  HCAvailabilityStatus healthConnectAvailabilityStatus =
      HCAvailabilityStatus.notSupported;

  int steps = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FocusDetector(
        onFocusGained: checkHealthConnectStatus,
        child: switch (healthConnectAvailabilityStatus) {
          HCAvailabilityStatus.installed => SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: requestHealthConnectPermissions,
                    child: const Text("Request permissions"),
                  ),
                  FilledButton(
                    onPressed: () {
                      HCRookEventManager.syncTodayHealthConnectStepsCount()
                          .then((syncStatusWithData) {
                        switch (syncStatusWithData) {
                          case Synced(data: final syncedSteps):
                            setState(() => steps = syncedSteps ?? 0);
                            break;
                          case RecordsNotFound():
                            logger.info('Steps not found for today');
                            break;
                        }
                      }).catchError((error) {
                        logger.severe('Error syncing steps: $error');
                      });
                    },
                    child: const Text("Sync today steps"),
                  ),
                  if (steps > 0) Text("Steps synced: $steps")
                ],
              ),
            ),
          HCAvailabilityStatus.notInstalled => Center(
              child: FilledButton(
                onPressed: downloadHealthConnect,
                child: const Text('Download Health Connect'),
              ),
            ),
          _ => const Center(
              child: Text("Health Connect is not supported in your device"),
            ),
        },
      ),
    );
  }

  Future<void> checkHealthConnectStatus() async {
    final status = await HCRookHealthPermissionsManager.checkAvailability();

    setState(() {
      healthConnectAvailabilityStatus = status;
    });
  }

  void downloadHealthConnect() async {
    try {
      await launchUrl(Uri.parse(
        'https://play.google.com/store/apps/details?id=com.google.android.apps.healthdata',
      ));
    } catch (ignored) {
      // Ignored
    }
  }

  void requestHealthConnectPermissions() {
    HCRookHealthPermissionsManager.requestHealthConnectPermissions()
        .then((requestPermissionsStatus) {
      final permissionsAlreadyGranted =
          requestPermissionsStatus == RequestPermissionsStatus.alreadyGranted;

      if (permissionsAlreadyGranted) {
        logger.info("Permissions are already granted, no request was sent.");
      } else {
        logger.info("Request sent.");
      }
    }).catchError((error) {
      logger.severe('Error requesting permissions: $error');
    });
  }
}
