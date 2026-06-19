import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/core/presentation/widget/scrollable_scaffold.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';

const String androidStepsRoute = '/android/steps';

class AndroidSteps extends StatefulWidget {
  const AndroidSteps({super.key});

  @override
  State<AndroidSteps> createState() => _AndroidStepsState();
}

class _AndroidStepsState extends State<AndroidSteps> {
  final Logger logger = Logger('AndroidSteps');

  bool isStepsCounterAvailable = false;
  bool isStepsCounterActive = false;

  int steps = 0;

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Steps',
      alignment: Alignment.topCenter,
      child: FocusDetector(
        onFocusGained: checkStepsCounterStatus,
        child: Column(
          children: [
            CheckboxListTile(
              value: isStepsCounterAvailable,
              onChanged: (value) {},
              title: const Text("Steps counter available"),
            ),
            CheckboxListTile(
              value: isStepsCounterActive,
              onChanged: (value) {},
              title: const Text("Steps counter active"),
            ),
            if (isStepsCounterAvailable && !isStepsCounterActive)
              FilledButton(
                onPressed: () {
                  AndroidStepsCounter.enableStepsCounter()
                      .then((_) {
                        checkStepsCounterStatus();
                      })
                      .catchError((error) {
                        logger.severe("Error enabling steps counter: $error");
                      });
                },
                child: const Text("Enable steps counter"),
              ),
            if (isStepsCounterActive)
              FilledButton(
                onPressed: () {
                  AndroidStepsCounter.disableStepsCounter()
                      .then((_) {
                        checkStepsCounterStatus();
                      })
                      .catchError((error) {
                        logger.severe("Error disabling steps counter: $error");
                      });
                },
                child: const Text("Disable steps counter"),
              ),
            if (isStepsCounterActive)
              FilledButton(
                onPressed: () {
                  AndroidStepsCounter.getTodayStepsCount()
                      .then((syncedSteps) {
                        setState(() => steps = syncedSteps);
                      })
                      .catchError((error) {
                        logger.severe('Error syncing steps counter: $error');
                      });
                },
                child: const Text("Sync today steps"),
              ),
            if (isStepsCounterActive && steps > 0) Text("Steps synced: $steps"),
          ],
        ),
      ),
    );
  }

  Future<void> checkStepsCounterStatus() async {
    final isStepsCounterAvailable =
        await AndroidStepsCounter.isStepsCounterAvailable();
    final isStepsCounterActive =
        await AndroidStepsCounter.isStepsCounterActive();

    setState(() {
      this.isStepsCounterAvailable = isStepsCounterAvailable;
      this.isStepsCounterActive = isStepsCounterActive;
    });
  }
}
