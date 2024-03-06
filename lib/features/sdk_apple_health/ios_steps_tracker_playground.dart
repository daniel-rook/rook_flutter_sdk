import 'dart:async';

import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';

const String iosStepsTrackerPlaygroundRoute = '/ios/steps-tracker-playground';

class IosStepsTrackerPlayground extends StatefulWidget {
  const IosStepsTrackerPlayground({super.key});

  @override
  State<IosStepsTrackerPlayground> createState() =>
      _IosStepsTrackerPlaygroundState();
}

class _IosStepsTrackerPlaygroundState extends State<IosStepsTrackerPlayground> {
  final Logger logger = Logger('IosStepsTrackerPlayground');

  Timer? timer;

  bool isLoading = false;
  bool isActive = false;

  int steps = 0;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      IosStepsTracker.getTodaySteps().then((todaySteps) {
        setState(() => steps = todaySteps);
      }).catchError((exception) {
        final error = switch (exception) {
          _ => exception.toString(),
        };

        logger.info('Error obtaining steps: $error');
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Ios Steps Tracker',
      alignment: Alignment.topCenter,
      child: FocusDetector(
        onFocusGained: checkStepsTrackerStatus,
        child: Column(
          children: [
            CheckboxListTile(
              value: isActive,
              onChanged: (value) {},
              title: Text(
                isActive ? "Tracker is running" : "Tracker is stopped",
              ),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: isLoading
                  ? null
                  : isActive
                      ? stopStepsTracker
                      : startStepsTracker,
              child: Text(isActive ? 'Stop tracker' : 'Start tracker'),
            ),
            const SizedBox(height: 20),
            Text('Total steps of today: $steps'),
          ],
        ),
      ),
    );
  }

  void checkStepsTrackerStatus() async {
    setState(() => isLoading = true);

    final isActive = await IosStepsTracker.isActive();

    setState(() {
      isLoading = false;
      this.isActive = isActive;
    });
  }

  void startStepsTracker() async {
    setState(() => isLoading = true);

    try {
      await IosStepsTracker.start();

      checkStepsTrackerStatus();
    } catch (exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      logger.info('Error starting steps tracker: $error');

      setState(() => isLoading = false);
    }
  }

  void stopStepsTracker() async {
    setState(() => isLoading = true);

    try {
      await IosStepsTracker.stop();

      checkStepsTrackerStatus();
    } catch (exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      logger.info('Error stopping steps tracker: $error');

      setState(() => isLoading = false);
    }
  }
}
