import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:url_launcher/url_launcher.dart';

const String sdkHealthConnectPlaygroundRoute = '/sdk-health-connect/playground';

class SdkHealthConnectPlayground extends StatefulWidget {
  const SdkHealthConnectPlayground({super.key});

  @override
  State<SdkHealthConnectPlayground> createState() =>
      _SdkHealthConnectPlaygroundState();
}

class _SdkHealthConnectPlaygroundState
    extends State<SdkHealthConnectPlayground> {
  final Logger logger = Logger('SdkHealthConnectPlayground');

  final ConsoleOutput availabilityOutput = ConsoleOutput();
  final ConsoleOutput checkPermissionsOutput = ConsoleOutput();
  final ConsoleOutput syncOutput = ConsoleOutput();
  final ConsoleOutput syncPendingSummariesOutput = ConsoleOutput();
  final ConsoleOutput syncPendingEventsOutput = ConsoleOutput();

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'SDK Health Connect',
      child: Column(
        children: [
          const SectionTitle('4. Check availability'),
          Text(availabilityOutput.current),
          FilledButton(
            onPressed: checkAvailability,
            child: const Text('Check availability'),
          ),
          const SectionTitle('4.1. Download Health Connect'),
          FilledButton(
            onPressed: downloadHealthConnect,
            child: const Text('Download Health Connect'),
          ),
          const SectionTitle('5. Check permissions'),
          Text(checkPermissionsOutput.current),
          FilledButton(
            onPressed: checkHealthConnectPermissions,
            child: const Text('Check permissions'),
          ),
          const SectionTitle('5.1. Request permissions'),
          FilledButton(
            onPressed: requestHealthConnectPermissions,
            child: const Text('Request permissions'),
          ),
          const SectionTitle('5.2. Open Health Connect'),
          FilledButton(
            onPressed: openHealthConnect,
            child: const Text('Open Health Connect'),
          ),
          const SectionTitle('6. Sync health data'),
          Text(syncOutput.current),
          FilledButton(
            onPressed: syncHealthData,
            child: const Text('Sync health data'),
          ),
          const SectionTitle('Sync pending summaries (optional)'),
          Text(syncPendingSummariesOutput.current),
          FilledButton(
            onPressed: syncPendingSummaries,
            child: const Text('Sync pending summaries'),
          ),
          const SectionTitle('Sync pending events (optional)'),
          Text(syncPendingEventsOutput.current),
          FilledButton(
            onPressed: syncPendingEvents,
            child: const Text('Sync pending events'),
          ),
        ],
      ),
    );
  }

  void checkAvailability() {
    availabilityOutput.clear();

    setState(
      () => availabilityOutput.append('Checking availability...'),
    );

    HCRookHealthPermissionsManager.checkHealthConnectAvailability()
        .then((availability) {
      availabilityOutput.append('Availability checked successfully');

      final string = switch (availability) {
        HCAvailabilityStatus.installed =>
          'Health Connect is installed! You can skip the next step',
        HCAvailabilityStatus.notInstalled =>
          'Health Connect is not installed. Please download from the Play Store',
        _ =>
          'This device is not compatible with health connect. Please close the app',
      };

      setState(
        () => availabilityOutput.append(string),
      );
    }).catchError((error) {
      setState(
        () => availabilityOutput.append('Error checking availability: $error'),
      );
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

  void checkHealthConnectPermissions() {
    checkPermissionsOutput.clear();

    setState(
      () => checkPermissionsOutput.append('Checking all permissions...'),
    );

    HCRookHealthPermissionsManager.checkHealthConnectPermissions()
        .then((hasPermissions) {
      checkPermissionsOutput.append('All permissions checked successfully');

      final string = hasPermissions
          ? 'All permissions are granted! You can skip the next 2 steps'
          : 'There are missing permissions. Please grant them';

      setState(
        () => checkPermissionsOutput.append(string),
      );
    }).catchError((error) {
      setState(
        () => checkPermissionsOutput
            .append('Error checking all permissions: $error'),
      );
    });
  }

  void requestHealthConnectPermissions() {
    HCRookHealthPermissionsManager.requestHealthConnectPermissions()
        .then((requestPermissionsStatus) {
      final permissionsAlreadyGranted =
          requestPermissionsStatus == RequestPermissionsStatus.alreadyGranted;

      if (permissionsAlreadyGranted) {
        logger.info(
          "Request was not sent because the requested permissions were already granted",
        );
      } else {
        logger.info("Request was sent");
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

  void syncHealthData() async {
    syncOutput.clear();

    final today = DateTime.now();
    final yesterday = today.subtract(const Duration(days: 1));

    setState(
      () => syncOutput.append('Syncing health data...'),
    );

    setState(
      () => syncOutput
          .append('Syncing Sleep summary of yesterday: $yesterday...'),
    );
    await syncSleepSummary(yesterday);

    setState(
      () => syncOutput
          .append('Syncing Physical summary of yesterday: $yesterday...'),
    );
    await syncPhysicalSummary(yesterday);

    setState(
      () =>
          syncOutput.append('Syncing Body summary of yesterday: $yesterday...'),
    );
    await syncBodySummary(yesterday);

    setState(
      () => syncOutput.append('Syncing Physical events of today: $today...'),
    );
    await syncPhysicalEvents(today);

    setState(
      () =>
          syncOutput.append('Syncing BloodGlucose events of today: $today...'),
    );
    await syncBloodGlucoseEvents(today);

    setState(
      () =>
          syncOutput.append('Syncing BloodPressure events of today: $today...'),
    );
    await syncBloodPressureEvents(today);

    setState(
      () => syncOutput.append('Syncing BodyMetrics events of today: $today...'),
    );
    await syncBodyMetricsEvents(today);

    setState(
      () =>
          syncOutput.append('Syncing BodyHeartRate events of today: $today...'),
    );
    await syncBodyHeartRateEvents(today);

    setState(
      () => syncOutput
          .append('Syncing PhysicalHeartRate events of today: $today...'),
    );
    await syncPhysicalHeartRateEvents(today);

    setState(
      () => syncOutput.append('Syncing Hydration events of today: $today...'),
    );
    await syncHydrationEvents(today);

    setState(
      () => syncOutput.append('Syncing Nutrition events of today: $today...'),
    );
    await syncNutritionEvents(today);

    setState(
      () => syncOutput
          .append('Syncing BodyOxygenation events of today: $today...'),
    );
    await syncBodyOxygenationEvents(today);

    setState(
      () => syncOutput
          .append('Syncing PhysicalOxygenation events of today: $today...'),
    );
    await syncPhysicalOxygenationEvents(today);

    setState(
      () => syncOutput.append('Syncing Temperature events of today: $today...'),
    );
    await syncTemperatureEvents(today);

    setState(
      () => syncOutput.append('Syncing Steps events of today: $today...'),
    );
    await syncStepsEvents();
  }

  Future<void> syncSleepSummary(DateTime yesterday) async {
    try {
      final shouldSyncSummariesForYesterday = await HCRookHelpers.shouldSyncFor(
        HCHealthDataType.sleepSummary,
        yesterday,
      );

      if (shouldSyncSummariesForYesterday) {
        try {
          final syncStatus = await HCRookSummaryManager.syncSleepSummary(
            yesterday,
          );

          setState(
            () => syncOutput.append('Sleep summary: ${syncStatus.name}'),
          );
        } catch (error) {
          setState(
            () => syncOutput.append('Error syncing Sleep summary: $error'),
          );
        }
      } else {
        setState(
          () => syncOutput
              .append('Sleep summary was already synced for this day'),
        );
      }
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing Sleep summary: $error'),
      );
    }
  }

  Future<void> syncPhysicalSummary(DateTime yesterday) async {
    try {
      final shouldSyncSummariesForYesterday = await HCRookHelpers.shouldSyncFor(
        HCHealthDataType.physicalSummary,
        yesterday,
      );

      if (shouldSyncSummariesForYesterday) {
        try {
          final syncStatus = await HCRookSummaryManager.syncPhysicalSummary(
            yesterday,
          );

          setState(
            () => syncOutput.append('Physical summary: ${syncStatus.name}'),
          );
        } catch (error) {
          setState(
            () => syncOutput.append('Error syncing Physical summary: $error'),
          );
        }
      } else {
        setState(
          () => syncOutput
              .append('Physical summary was already synced for this day'),
        );
      }
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing Physical summary: $error'),
      );
    }
  }

  Future<void> syncBodySummary(DateTime yesterday) async {
    try {
      final shouldSyncSummariesForYesterday = await HCRookHelpers.shouldSyncFor(
        HCHealthDataType.bodySummary,
        yesterday,
      );

      if (shouldSyncSummariesForYesterday) {
        try {
          final syncStatus = await HCRookSummaryManager.syncBodySummary(
            yesterday,
          );

          setState(
            () => syncOutput.append('Body summary: ${syncStatus.name}'),
          );
        } catch (error) {
          setState(
            () => syncOutput.append('Error syncing Body summary: $error'),
          );
        }
      } else {
        setState(
          () =>
              syncOutput.append('Body summary was already synced for this day'),
        );
      }
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing Body summary: $error'),
      );
    }
  }

  Future<void> syncPhysicalEvents(DateTime today) async {
    try {
      final syncStatus = await HCRookEventManager.syncPhysicalEvents(today);

      setState(
        () => syncOutput.append('Physical events: ${syncStatus.name}'),
      );
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing Physical events: $error'),
      );
    }
  }

  Future<void> syncBloodGlucoseEvents(DateTime today) async {
    try {
      final syncStatus = await HCRookEventManager.syncBloodGlucoseEvents(today);

      setState(
        () => syncOutput.append('BloodGlucose events: ${syncStatus.name}'),
      );
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing BloodGlucose events: $error'),
      );
    }
  }

  Future<void> syncBloodPressureEvents(DateTime today) async {
    try {
      final syncStatus = await HCRookEventManager.syncBloodPressureEvents(
        today,
      );

      setState(
        () => syncOutput.append('BloodPressure events: ${syncStatus.name}'),
      );
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing BloodPressure events: $error'),
      );
    }
  }

  Future<void> syncBodyMetricsEvents(DateTime today) async {
    try {
      final syncStatus = await HCRookEventManager.syncBodyMetricsEvents(today);

      setState(
        () => syncOutput.append('BodyMetrics events: ${syncStatus.name}'),
      );
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing BodyMetrics events: $error'),
      );
    }
  }

  Future<void> syncBodyHeartRateEvents(DateTime today) async {
    try {
      final syncStatus = await HCRookEventManager.syncBodyHeartRateEvents(
        today,
      );

      setState(
        () => syncOutput.append('BodyHeartRate events: ${syncStatus.name}'),
      );
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing BodyHeartRate events: $error'),
      );
    }
  }

  Future<void> syncPhysicalHeartRateEvents(DateTime today) async {
    try {
      final syncStatus = await HCRookEventManager.syncPhysicalHeartRateEvents(
        today,
      );

      setState(
        () => syncOutput.append('PhysicalHeartRate events: ${syncStatus.name}'),
      );
    } catch (error) {
      setState(
        () =>
            syncOutput.append('Error syncing PhysicalHeartRate events: $error'),
      );
    }
  }

  Future<void> syncHydrationEvents(DateTime today) async {
    try {
      final syncStatus = await HCRookEventManager.syncHydrationEvents(today);

      setState(
        () => syncOutput.append('Hydration events: ${syncStatus.name}'),
      );
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing Hydration events: $error'),
      );
    }
  }

  Future<void> syncNutritionEvents(DateTime today) async {
    try {
      final syncStatus = await HCRookEventManager.syncNutritionEvents(today);

      setState(
        () => syncOutput.append('Nutrition events: ${syncStatus.name}'),
      );
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing Nutrition events: $error'),
      );
    }
  }

  Future<void> syncBodyOxygenationEvents(DateTime today) async {
    try {
      final syncStatus = await HCRookEventManager.syncBodyOxygenationEvents(
        today,
      );

      setState(
        () => syncOutput.append('BodyOxygenation events: ${syncStatus.name}'),
      );
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing BodyOxygenation events: $error'),
      );
    }
  }

  Future<void> syncPhysicalOxygenationEvents(DateTime today) async {
    try {
      final syncStatus = await HCRookEventManager.syncPhysicalOxygenationEvents(
        today,
      );

      setState(
        () =>
            syncOutput.append('PhysicalOxygenation events: ${syncStatus.name}'),
      );
    } catch (error) {
      setState(
        () => syncOutput
            .append('Error syncing PhysicalOxygenation events: $error'),
      );
    }
  }

  Future<void> syncTemperatureEvents(DateTime today) async {
    try {
      final syncStatus = await HCRookEventManager.syncTemperatureEvents(today);

      setState(
        () => syncOutput.append('Temperature events: ${syncStatus.name}'),
      );
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing Temperature events: $error'),
      );
    }
  }

  Future<void> syncStepsEvents() async {
    try {
      final syncStatusWithData =
          await HCRookEventManager.syncTodayHealthConnectStepsCount();

      switch (syncStatusWithData) {
        case Synced(data: final steps):
          setState(
            () => syncOutput.append('$steps steps synced successfully'),
          );
          break;
        case RecordsNotFound():
          setState(
            () => syncOutput.append('Steps events not found'),
          );
          break;
      }
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing Steps events: $error'),
      );
    }
  }

  void syncPendingSummaries() {
    syncPendingSummariesOutput.clear();

    setState(
      () => syncPendingSummariesOutput.append('Syncing pending summaries...'),
    );

    HCRookSummaryManager.syncPendingSummaries().then((_) {
      setState(
        () => syncPendingSummariesOutput
            .append('Pending summaries synced successfully'),
      );
    }).catchError((error) {
      setState(
        () => syncPendingSummariesOutput
            .append('Error syncing pending summaries: $error'),
      );
    });
  }

  void syncPendingEvents() {
    syncPendingEventsOutput.clear();

    setState(
      () => syncPendingEventsOutput.append('Syncing pending events...'),
    );

    HCRookEventManager.syncPendingEvents().then((_) {
      setState(
        () => syncPendingEventsOutput
            .append('Pending events synced successfully'),
      );
    }).catchError((error) {
      setState(
        () => syncPendingEventsOutput
            .append('Error syncing pending events: $error'),
      );
    });
  }
}
