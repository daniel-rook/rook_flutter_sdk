import 'package:flutter/material.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';

const String androidSyncRoute = '/android/sync';

class AndroidSync extends StatefulWidget {
  const AndroidSync({super.key});

  @override
  State<AndroidSync> createState() => _AndroidSyncState();
}

class _AndroidSyncState extends State<AndroidSync> {
  TextEditingController syncSummariesDate = TextEditingController();
  TextEditingController syncSingleSummaryDate = TextEditingController();
  TextEditingController syncSingleEventDate = TextEditingController();

  HCSummarySyncType summarySyncType = HCSummarySyncType.sleep;
  HCEventSyncType eventSyncType = HCEventSyncType.activity;

  final ConsoleOutput syncSummariesHistoricOutput = ConsoleOutput();
  final ConsoleOutput syncSummariesOutput = ConsoleOutput();
  final ConsoleOutput syncSingleSummaryOutput = ConsoleOutput();
  final ConsoleOutput getSingleSummaryOutput = ConsoleOutput();
  final ConsoleOutput syncSingleEventOutput = ConsoleOutput();
  final ConsoleOutput getSingleEventOutput = ConsoleOutput();
  final ConsoleOutput getTodayStepsOutput = ConsoleOutput();
  final ConsoleOutput getTodayCaloriesOutput = ConsoleOutput();
  final ConsoleOutput getTodayHeartRateOutput = ConsoleOutput();

  @override
  void initState() {
    final now = DateTime.now();
    final today = now.subtract(
      Duration(hours: now.hour, minutes: now.minute, seconds: now.second),
    );
    final yesterday = today.subtract(const Duration(days: 1));

    syncSummariesDate.text = yesterday.toIso8601String().split("T").first;
    syncSingleSummaryDate.text = yesterday.toIso8601String().split("T").first;
    syncSingleEventDate.text = today.toIso8601String().split("T").first;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Manually sync health data',
      child: Column(
        children: [
          const SectionTitle('Sync summaries historic'),
          Text(syncSummariesHistoricOutput.current),
          FilledButton(
            onPressed: syncSummariesHistoric,
            child: const Text('Sync summaries historic'),
          ),
          const SectionTitle('Sync summaries'),
          TextField(
            controller: syncSummariesDate,
            decoration: const InputDecoration(
              helperText: 'YYYY-MM-DD',
              border: OutlineInputBorder(),
            ),
          ),
          Text(syncSummariesOutput.current),
          FilledButton(
            onPressed: syncSummaries,
            child: const Text('Sync summaries'),
          ),
          const SectionTitle('Sync single summary'),
          TextField(
            controller: syncSingleSummaryDate,
            decoration: const InputDecoration(
              helperText: 'YYYY-MM-DD',
              border: OutlineInputBorder(),
            ),
          ),
          DropdownMenu(
            onSelected: (selection) {
              summarySyncType = selection ?? HCSummarySyncType.sleep;
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: HCSummarySyncType.sleep, label: "Sleep"),
              DropdownMenuEntry(
                value: HCSummarySyncType.physical,
                label: "Physical",
              ),
              DropdownMenuEntry(value: HCSummarySyncType.body, label: "Body"),
            ],
          ),
          Text(syncSingleSummaryOutput.current),
          FilledButton(
            onPressed: syncSingleSummary,
            child: const Text('Sync single summary'),
          ),
          const SectionTitle('Get single summary'),
          TextField(
            controller: syncSingleSummaryDate,
            decoration: const InputDecoration(
              helperText: 'YYYY-MM-DD',
              border: OutlineInputBorder(),
            ),
          ),
          DropdownMenu(
            onSelected: (selection) {
              summarySyncType = selection ?? HCSummarySyncType.sleep;
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: HCSummarySyncType.sleep, label: "Sleep"),
              DropdownMenuEntry(
                value: HCSummarySyncType.physical,
                label: "Physical",
              ),
              DropdownMenuEntry(value: HCSummarySyncType.body, label: "Body"),
            ],
          ),
          Text(getSingleSummaryOutput.current),
          FilledButton(
            onPressed: getSingleSummary,
            child: const Text('Get single summary'),
          ),
          const SectionTitle('Sync single event'),
          TextField(
            controller: syncSingleEventDate,
            decoration: const InputDecoration(
              helperText: 'YYYY-MM-DD',
              border: OutlineInputBorder(),
            ),
          ),
          DropdownMenu(
            onSelected: (selection) {
              eventSyncType = selection ?? HCEventSyncType.activity;
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(
                value: HCEventSyncType.activity,
                label: "Activity",
              ),
              DropdownMenuEntry(
                value: HCEventSyncType.bloodGlucose,
                label: "Blood glucose",
              ),
              DropdownMenuEntry(
                value: HCEventSyncType.bloodPressure,
                label: "Blood pressure",
              ),
              DropdownMenuEntry(
                value: HCEventSyncType.bodyMetrics,
                label: "Body metrics",
              ),
              DropdownMenuEntry(
                value: HCEventSyncType.heartRate,
                label: "Heart rate",
              ),
              DropdownMenuEntry(
                value: HCEventSyncType.hydration,
                label: "Hydration",
              ),
              DropdownMenuEntry(
                value: HCEventSyncType.nutrition,
                label: "Nutrition",
              ),
              DropdownMenuEntry(
                value: HCEventSyncType.oxygenation,
                label: "Oxygenation",
              ),
              DropdownMenuEntry(
                value: HCEventSyncType.temperature,
                label: "Temperature",
              ),
              DropdownMenuEntry(value: HCEventSyncType.steps, label: "Steps"),
              DropdownMenuEntry(
                value: HCEventSyncType.calories,
                label: "Calories",
              ),
            ],
          ),
          Text(syncSingleEventOutput.current),
          FilledButton(
            onPressed: syncSingleEvent,
            child: const Text('Sync single event'),
          ),
          const SectionTitle('Get single event'),
          TextField(
            controller: syncSingleEventDate,
            decoration: const InputDecoration(
              helperText: 'YYYY-MM-DD',
              border: OutlineInputBorder(),
            ),
          ),
          DropdownMenu(
            onSelected: (selection) {
              eventSyncType = selection ?? HCEventSyncType.activity;
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(
                value: HCEventSyncType.activity,
                label: "Activity",
              ),
            ],
          ),
          Text(getSingleEventOutput.current),
          FilledButton(
            onPressed: getSingleEvent,
            child: const Text('Get single event'),
          ),
          const SectionTitle('Get today steps'),
          Text(getTodayStepsOutput.current),
          FilledButton(
            onPressed: getTodaySteps,
            child: const Text('Get today steps'),
          ),
          const SectionTitle('Get today calories'),
          Text(getTodayCaloriesOutput.current),
          FilledButton(
            onPressed: getTodayCalories,
            child: const Text('Get today calories'),
          ),
          const SectionTitle('Get today heart rate'),
          Text(getTodayHeartRateOutput.current),
          FilledButton(
            onPressed: getTodayHeartRate,
            child: const Text('Get today heart rate'),
          ),
        ],
      ),
    );
  }

  void syncSummariesHistoric() async {
    syncSummariesHistoricOutput.clear();

    setState(() {
      syncSummariesHistoricOutput.append("Syncing historic summaries...");
    });

    try {
      await HCRookSyncManager.sync(enableLogs: isDebug);

      setState(() {
        syncSummariesHistoricOutput.append("Historic summaries sync started");
      });
    } catch (error) {
      setState(() {
        syncSummariesHistoricOutput.append(
          "Error syncing historic summaries: $error",
        );
      });
    }
  }

  void syncSummaries() async {
    syncSummariesOutput.clear();

    final dateString = syncSummariesDate.text;
    final date = DateTime.parse(dateString);

    setState(() {
      syncSummariesOutput.append("Syncing $date summaries...");
    });

    try {
      await HCRookSyncManager.sync(date: date);

      setState(() {
        syncSummariesOutput.append("$date summaries synced successfully");
      });
    } catch (error) {
      setState(() {
        syncSummariesOutput.append("Error syncing $date summaries: $error");
      });
    }
  }

  void syncSingleSummary() async {
    syncSingleSummaryOutput.clear();

    final dateString = syncSingleSummaryDate.text;
    final date = DateTime.parse(dateString);

    setState(() {
      syncSingleSummaryOutput.append("Syncing $date $summarySyncType...");
    });

    try {
      await HCRookSyncManager.sync(date: date, summary: summarySyncType);

      setState(() {
        syncSingleSummaryOutput.append(
          "$date $summarySyncType synced successfully",
        );
      });
    } catch (error) {
      setState(() {
        syncSingleSummaryOutput.append(
          "Error syncing $date $summarySyncType: $error",
        );
      });
    }
  }

  void getSingleSummary() async {
    getSingleSummaryOutput.clear();

    final dateString = syncSingleSummaryDate.text;
    final date = DateTime.parse(dateString);

    setState(() {
      getSingleSummaryOutput.append("Syncing $date $summarySyncType...");
    });

    try {
      String data = "";

      switch (summarySyncType) {
        case HCSummarySyncType.sleep:
          data = (await HCRookSyncManager.getSleepSummary(date)).toString();
        case HCSummarySyncType.physical:
          data = (await HCRookSyncManager.getPhysicalSummary(date)).toString();
        case HCSummarySyncType.body:
          data = (await HCRookSyncManager.getBodySummary(date)).toString();
      }

      getSingleSummaryOutput.append(
        "$date $summarySyncType synced successfully",
      );

      setState(() {
        getSingleSummaryOutput.append(data);
      });
    } catch (error) {
      setState(() {
        getSingleSummaryOutput.append(
          "Error syncing $date $summarySyncType: $error",
        );
      });
    }
  }

  void syncSingleEvent() async {
    syncSingleEventOutput.clear();

    final dateString = syncSingleEventDate.text;
    final date = DateTime.parse(dateString);

    setState(() {
      syncSingleEventOutput.append("Syncing $date $eventSyncType...");
    });

    try {
      await HCRookSyncManager.syncEvents(date, eventSyncType);

      setState(() {
        syncSingleEventOutput.append(
          "$date $eventSyncType synced successfully",
        );
      });
    } catch (error) {
      setState(() {
        syncSingleEventOutput.append(
          "Error syncing $date $eventSyncType: $error",
        );
      });
    }
  }

  void getSingleEvent() async {
    getSingleEventOutput.clear();

    final dateString = syncSingleEventDate.text;
    final date = DateTime.parse(dateString);

    setState(() {
      getSingleEventOutput.append("Syncing $date $eventSyncType...");
    });

    try {
      String data = "";

      switch (eventSyncType) {
        case HCEventSyncType.activity:
          data = (await HCRookSyncManager.getActivityEvents(date)).toString();
        default:
          data = "Not implemented yet.";
      }

      getSingleEventOutput.append("$date $eventSyncType synced successfully");

      setState(() {
        getSingleEventOutput.append(data);
      });
    } catch (error) {
      setState(() {
        getSingleEventOutput.append(
          "Error syncing $date $eventSyncType: $error",
        );
      });
    }
  }

  void getTodaySteps() async {
    getTodayStepsOutput.clear();

    setState(
      () => getTodayStepsOutput.append('Syncing steps events of today...'),
    );

    try {
      final steps = await HCRookSyncManager.getTodayStepsCount();

      setState(
        () => getTodayStepsOutput.append('$steps steps synced successfully'),
      );
    } catch (error) {
      setState(
        () => getTodayStepsOutput.append('Error syncing Steps events: $error'),
      );
    }
  }

  void getTodayCalories() async {
    getTodayCaloriesOutput.clear();

    setState(
      () =>
          getTodayCaloriesOutput.append('Syncing calories events of today...'),
    );

    try {
      final calories = await HCRookSyncManager.getTodayCaloriesCount();

      setState(
        () => getTodayCaloriesOutput.append('$calories synced successfully'),
      );
    } catch (error) {
      setState(
        () => getTodayCaloriesOutput.append(
          'Error syncing Calories events: $error',
        ),
      );
    }
  }

  void getTodayHeartRate() async {
    getTodayHeartRateOutput.clear();

    setState(
      () => getTodayHeartRateOutput.append(
        'Syncing heart rate events of today...',
      ),
    );

    try {
      final heartRate = await HCRookSyncManager.getTodayHeartRate();

      setState(
        () => getTodayHeartRateOutput.append('$heartRate synced successfully'),
      );
    } catch (error) {
      setState(
        () => getTodayHeartRateOutput.append(
          'Error syncing heart rate events: $error',
        ),
      );
    }
  }
}
