import 'dart:async';

import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';

const String androidStepsTrackerPlaygroundRoute =
    '/android/steps-tracker-playground';

class AndroidStepsTrackerPlayground extends StatefulWidget {
  const AndroidStepsTrackerPlayground({super.key});

  @override
  State<AndroidStepsTrackerPlayground> createState() =>
      _AndroidStepsTrackerPlaygroundState();
}

class _AndroidStepsTrackerPlaygroundState
    extends State<AndroidStepsTrackerPlayground> {
  final Logger logger = Logger('AndroidStepsTrackerPlayground');

  Timer? timer;

  bool isLoading = false;
  bool isAvailable = false;
  bool isActive = false;
  bool hasPermissions = false;

  int steps = 0;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      AndroidStepsTracker.getTodaySteps().then((todaySteps) {
        setState(() => steps = todaySteps);
      }).catchError((exception) {
        final error = switch (exception) {
          (SDKNotInitializedException it) =>
            'SDKNotInitializedException: ${it.message}',
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
      name: 'Android Steps Tracker',
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
            CheckboxListTile(
              value: hasPermissions,
              onChanged: (value) {},
              title: Text(
                hasPermissions
                    ? "Permissions are granted"
                    : "Missing permissions!",
              ),
            ),
            const SizedBox(height: 20),
            if (isAvailable)
              FilledButton(
                onPressed: hasPermissions
                    ? null
                    : AndroidStepsTracker.requestPermissions,
                child: const Text('Request permissions'),
              ),
            if (isAvailable)
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
    final isAvailable = await AndroidStepsTracker.isAvailable();
    final isActive = await AndroidStepsTracker.isActive();
    final hasPermissions = await AndroidStepsTracker.hasPermissions();

    setState(() {
      isLoading = false;

      this.isAvailable = isAvailable;
      this.isActive = isActive;
      this.hasPermissions = hasPermissions;
    });
  }

  void startStepsTracker() async {
    setState(() => isLoading = true);

    try {
      await AndroidStepsTracker.start();

      checkStepsTrackerStatus();
    } catch (exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (MissingAndroidPermissionsException it) =>
          'MissingAndroidPermissionsException: ${it.message}',
        _ => exception.toString(),
      };

      logger.info('Error starting steps tracker: $error');

      setState(() => isLoading = false);
    }
  }

  void stopStepsTracker() async {
    setState(() => isLoading = true);

    try {
      await AndroidStepsTracker.stop();

      checkStepsTrackerStatus();
    } catch (exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        _ => exception.toString(),
      };

      logger.info('Error stopping steps tracker: $error');

      setState(() => isLoading = false);
    }
  }
}
