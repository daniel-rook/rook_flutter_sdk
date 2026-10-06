import 'package:app_settings/app_settings.dart';
import 'package:material_ui/material_ui.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/core/presentation/widget/scrollable_scaffold.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';

const String androidBackgroundStepsRoute = '/android/background-steps';

class AndroidBackgroundSteps extends StatefulWidget {
  const AndroidBackgroundSteps({super.key});

  @override
  State<AndroidBackgroundSteps> createState() => _AndroidBackgroundStepsState();
}

class _AndroidBackgroundStepsState extends State<AndroidBackgroundSteps>
    with WidgetsBindingObserver {
  final Logger logger = Logger('AndroidBackgroundSteps');

  bool isStepsServiceAvailable = false;
  bool hasAndroidPermissions = false;
  bool androidPermissionsPreviouslyDenied = false;
  bool isTrackingSteps = false;

  int steps = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    checkStepsServiceStatus();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      checkStepsServiceStatus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Background steps',
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          CheckboxListTile(
            value: isStepsServiceAvailable,
            onChanged: (value) {},
            title: const Text("Steps service available"),
          ),
          CheckboxListTile(
            value: hasAndroidPermissions,
            onChanged: (value) {},
            title: const Text("Android permissions"),
          ),
          CheckboxListTile(
            value: isTrackingSteps,
            onChanged: (value) {},
            title: const Text("Steps tracking active"),
          ),
          if (isStepsServiceAvailable &&
              !androidPermissionsPreviouslyDenied &&
              !hasAndroidPermissions)
            FilledButton(
              onPressed: requestAndroidPermissions,
              child: const Text("Request Android permissions"),
            ),
          if (isStepsServiceAvailable &&
              androidPermissionsPreviouslyDenied &&
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
                    ),
                  ],
                ),
              ),
            ),
          if (isStepsServiceAvailable &&
              hasAndroidPermissions &&
              !isTrackingSteps)
            FilledButton(
              onPressed: () {
                AndroidStepsManager.enableBackgroundAndroidSteps()
                    .then((_) {
                      checkStepsServiceStatus();
                    })
                    .catchError((error) {
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
                    })
                    .catchError((error) {
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
                    })
                    .catchError((error) {
                      logger.severe('Error syncing steps: $error');
                    });
              },
              child: const Text("Sync today steps"),
            ),
          if (isTrackingSteps && steps > 0) Text("Steps synced: $steps"),
        ],
      ),
    );
  }

  Future<void> checkStepsServiceStatus() async {
    final isStepsServiceAvailable = await AndroidStepsManager.isAvailable();
    final hasAndroidPermissions =
        await HCRookHealthPermissionsManager.checkAndroidPermissions();
    final isActive = await AndroidStepsManager.isBackgroundAndroidStepsActive();

    if (!mounted) return;

    setState(() {
      this.isStepsServiceAvailable = isStepsServiceAvailable;
      this.hasAndroidPermissions = hasAndroidPermissions;
      isTrackingSteps = isActive;
    });
  }

  void requestAndroidPermissions() async {
    try {
      final shouldRequestPermissions =
          await HCRookHealthPermissionsManager.shouldRequestAndroidPermissions();

      if (shouldRequestPermissions) {
        final requestPermissionsStatus =
            await HCRookHealthPermissionsManager.requestAndroidPermissions();

        final permissionsAlreadyGranted =
            requestPermissionsStatus == RequestPermissionsStatus.alreadyGranted;

        if (permissionsAlreadyGranted) {
          setState(() => hasAndroidPermissions = true);
        }
      } else {
        setState(() => androidPermissionsPreviouslyDenied = true);
      }
    } catch (error) {
      logger.severe('requestAndroidPermissions - error: $error');
    }
  }
}
