import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';

const String androidBackgroundStepsRoute = '/android/android-background-steps';

class AndroidBackgroundSteps extends StatefulWidget {
  const AndroidBackgroundSteps({super.key});

  @override
  State<AndroidBackgroundSteps> createState() => _AndroidBackgroundStepsState();
}

class _AndroidBackgroundStepsState extends State<AndroidBackgroundSteps> {
  final Logger logger = Logger('AndroidBackgroundSteps');

  bool isLoading = false;
  bool isAvailable = false;
  bool isActive = false;
  bool hasPermissions = false;

  int steps = 0;

  @override
  void initState() {
    AndroidStepsManager.syncTodayAndroidStepsCount().then((todaySteps) {
      setState(
        () => steps = todaySteps,
      );
    }).catchError((error) {
      logger.info('Error obtaining steps: $error');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Android Steps Manager',
      alignment: Alignment.topCenter,
      child: FocusDetector(
        onFocusGained: checkStepsServiceStatus,
        child: Column(
          children: [
            CheckboxListTile(
              value: isActive,
              onChanged: (value) {},
              title: Text(
                isActive
                    ? "Background Steps is running"
                    : "Background Steps is stopped",
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
                    : AndroidStepsManager.requestPermissions,
                child: const Text('Request permissions'),
              ),
            if (isAvailable)
              FilledButton(
                onPressed: isLoading
                    ? null
                    : isActive
                        ? stopStepsService
                        : startStepsService,
                child: Text(
                  isActive ? 'Stop Background Steps' : 'Start Background Steps',
                ),
              ),
            const SizedBox(height: 20),
            Text('Total steps of today: $steps'),
          ],
        ),
      ),
    );
  }

  void checkStepsServiceStatus() async {
    final isAvailable = await AndroidStepsManager.isAvailable();
    final isActive = await AndroidStepsManager.isBackgroundAndroidStepsActive();
    final hasPermissions = await AndroidStepsManager.hasPermissions();

    setState(() {
      isLoading = false;

      this.isAvailable = isAvailable;
      this.isActive = isActive;
      this.hasPermissions = hasPermissions;
    });
  }

  void startStepsService() async {
    setState(
      () => isLoading = true,
    );

    try {
      await AndroidStepsManager.enableBackgroundAndroidSteps();

      checkStepsServiceStatus();
    } catch (error) {
      logger.info('Error starting steps service: $error');

      setState(
        () => isLoading = false,
      );
    }
  }

  void stopStepsService() async {
    setState(
      () => isLoading = true,
    );

    try {
      await AndroidStepsManager.disableBackgroundAndroidSteps();

      checkStepsServiceStatus();
    } catch (error) {
      logger.info('Error stopping steps service: $error');

      setState(
        () => isLoading = false,
      );
    }
  }
}
