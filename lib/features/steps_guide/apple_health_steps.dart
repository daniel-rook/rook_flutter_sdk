import 'package:flutter/cupertino.dart';
import 'package:logging/logging.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';

class AppleHealthSteps extends StatefulWidget {
  const AppleHealthSteps({super.key});

  @override
  State<AppleHealthSteps> createState() => _AppleHealthStepsState();
}

class _AppleHealthStepsState extends State<AppleHealthSteps> {
  final Logger logger = Logger('AppleHealthSteps');

  int steps = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CupertinoButton(
              onPressed: AHRookHealthPermissionsManager.requestPermissions,
              child: Text("Request permissions"),
            ),
            CupertinoButton(
              onPressed: () {
                AHRookEventManager.syncTodayAppleHealthStepsCount()
                    .then((syncedSteps) {
                  setState(() => steps = syncedSteps ?? 0);
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
    );
  }
}
