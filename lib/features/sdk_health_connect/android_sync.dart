import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';

const String androidSyncRoute = '/android/sync';

class AndroidSync extends StatefulWidget {
  const AndroidSync({super.key});

  @override
  State<AndroidSync> createState() => _AndroidSyncState();
}

class _AndroidSyncState extends State<AndroidSync> {
  final Logger logger = Logger('AndroidSync');

  final ConsoleOutput syncOutput = ConsoleOutput();
  final ConsoleOutput syncPendingSummariesOutput = ConsoleOutput();
  final ConsoleOutput syncPendingEventsOutput = ConsoleOutput();

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Manually sync health data',
      child: Column(
        children: [
          const SectionTitle('Sync today events and yesterday summaries'),
          Text(syncOutput.current),
          FilledButton(
            onPressed: syncHealthData,
            child: const Text('Sync'),
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
    setState(
          () => syncOutput.append('Syncing Calories events of today: $today...'),
    );
    await syncCaloriesEvents();
  }

  Future<void> syncSleepSummary(DateTime yesterday) async {
    try {
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
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing Sleep summary: $error'),
      );
    }
  }

  Future<void> syncPhysicalSummary(DateTime yesterday) async {
    try {
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
    } catch (error) {
      setState(
        () => syncOutput.append('Error syncing Physical summary: $error'),
      );
    }
  }

  Future<void> syncBodySummary(DateTime yesterday) async {
    try {
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

  Future<void> syncCaloriesEvents() async {
    try {
      final syncStatusWithData = await HCRookEventManager.getTodayCaloriesCount();

      switch (syncStatusWithData) {
        case Synced(data: final calories):
          setState(
                () => syncOutput.append('$calories synced successfully'),
          );
          break;
        case RecordsNotFound():
          setState(
                () => syncOutput.append('Calories events not found'),
          );
          break;
      }
    } catch (error) {
      setState(
            () => syncOutput.append('Error syncing Calories events: $error'),
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
