import 'dart:async';

import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';

const String iosCaloriesTrackerPlaygroundRoute =
    '/ios/calories-tracker-playground';

class IosCaloriesTrackerPlayground extends StatefulWidget {
  const IosCaloriesTrackerPlayground({super.key});

  @override
  State<IosCaloriesTrackerPlayground> createState() =>
      _IosCaloriesTrackerPlaygroundState();
}

class _IosCaloriesTrackerPlaygroundState
    extends State<IosCaloriesTrackerPlayground> {
  final Logger logger = Logger('IosCaloriesTrackerPlayground');

  Timer? timer;

  bool isLoading = false;
  bool isActive = false;

  int calories = 0;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      IosCaloriesTracker.getTodayCalories().then((todayCalories) {
        setState(() => calories = todayCalories);
      }).catchError((exception) {
        final error = switch (exception) {
          _ => exception.toString(),
        };

        logger.info('Error obtaining calories: $error');
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
      name: 'Ios Calories Tracker',
      alignment: Alignment.topCenter,
      child: FocusDetector(
        onFocusGained: checkCaloriesTrackerStatus,
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
                      ? stopCaloriesTracker
                      : startCaloriesTracker,
              child: Text(isActive ? 'Stop tracker' : 'Start tracker'),
            ),
            const SizedBox(height: 20),
            Text('Total calories of today: $calories'),
          ],
        ),
      ),
    );
  }

  void checkCaloriesTrackerStatus() async {
    setState(() => isLoading = true);

    final isActive = await IosCaloriesTracker.isActive();

    setState(() {
      isLoading = false;
      this.isActive = isActive;
    });
  }

  void startCaloriesTracker() async {
    setState(() => isLoading = true);

    try {
      await IosCaloriesTracker.start();

      checkCaloriesTrackerStatus();
    } catch (exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      logger.info('Error starting calories tracker: $error');

      setState(() => isLoading = false);
    }
  }

  void stopCaloriesTracker() async {
    setState(() => isLoading = true);

    try {
      await IosCaloriesTracker.stop();

      checkCaloriesTrackerStatus();
    } catch (exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      logger.info('Error stopping calories tracker: $error');

      setState(() => isLoading = false);
    }
  }
}
