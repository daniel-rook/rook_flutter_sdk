import 'package:flutter/material.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_sdk_samsung_health/rook_sdk_samsung_health.dart';

const String samsungSyncRoute = '/samsung/sync';

class SamsungSync extends StatefulWidget {
  const SamsungSync({super.key});

  @override
  State<SamsungSync> createState() => _SamsungSyncState();
}

class _SamsungSyncState extends State<SamsungSync> {
  TextEditingController syncSummariesDate = TextEditingController();
  TextEditingController syncSingleSummaryDate = TextEditingController();
  TextEditingController syncSingleEventDate = TextEditingController();

  SHSummarySyncType summarySyncType = SHSummarySyncType.sleep;
  SHEventSyncType eventSyncType = SHEventSyncType.activity;

  final ConsoleOutput syncSummariesHistoricOutput = ConsoleOutput();
  final ConsoleOutput syncSummariesOutput = ConsoleOutput();
  final ConsoleOutput syncSingleSummaryOutput = ConsoleOutput();
  final ConsoleOutput getSingleSummaryOutput = ConsoleOutput();
  final ConsoleOutput syncSingleEventOutput = ConsoleOutput();
  final ConsoleOutput getSingleEventOutput = ConsoleOutput();
  final ConsoleOutput getTodayStepsOutput = ConsoleOutput();
  final ConsoleOutput getTodayCaloriesOutput = ConsoleOutput();

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
              summarySyncType = selection ?? SHSummarySyncType.sleep;
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: SHSummarySyncType.sleep, label: "Sleep"),
              DropdownMenuEntry(
                value: SHSummarySyncType.physical,
                label: "Physical",
              ),
              DropdownMenuEntry(value: SHSummarySyncType.body, label: "Body"),
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
              summarySyncType = selection ?? SHSummarySyncType.sleep;
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: SHSummarySyncType.sleep, label: "Sleep"),
              DropdownMenuEntry(
                value: SHSummarySyncType.physical,
                label: "Physical",
              ),
              DropdownMenuEntry(value: SHSummarySyncType.body, label: "Body"),
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
              eventSyncType = selection ?? SHEventSyncType.activity;
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(
                value: SHEventSyncType.activity,
                label: "Activity",
              ),
              DropdownMenuEntry(
                value: SHEventSyncType.bloodGlucose,
                label: "Blood glucose",
              ),
              DropdownMenuEntry(
                value: SHEventSyncType.bloodPressure,
                label: "Blood pressure",
              ),
              DropdownMenuEntry(
                value: SHEventSyncType.bodyMetrics,
                label: "Body metrics",
              ),
              DropdownMenuEntry(
                value: SHEventSyncType.heartRate,
                label: "Heart rate",
              ),
              DropdownMenuEntry(
                value: SHEventSyncType.hydration,
                label: "Hydration",
              ),
              DropdownMenuEntry(
                value: SHEventSyncType.nutrition,
                label: "Nutrition",
              ),
              DropdownMenuEntry(
                value: SHEventSyncType.oxygenation,
                label: "Oxygenation",
              ),
              DropdownMenuEntry(
                value: SHEventSyncType.temperature,
                label: "Temperature",
              ),
              DropdownMenuEntry(value: SHEventSyncType.steps, label: "Steps"),
              DropdownMenuEntry(
                value: SHEventSyncType.calories,
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
              eventSyncType = selection ?? SHEventSyncType.activity;
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(
                value: SHEventSyncType.activity,
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
      await RookSamsung.sync(enableLogs: isDebug);

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
      await RookSamsung.sync(date: date);

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
      await RookSamsung.sync(date: date, summary: summarySyncType);

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
        case SHSummarySyncType.sleep:
          data = (await RookSamsung.getSleepSummary(date)).toString();
        case SHSummarySyncType.physical:
          data = (await RookSamsung.getPhysicalSummary(date)).toString();
        case SHSummarySyncType.body:
          data = (await RookSamsung.getBodySummary(date)).toString();
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
      await RookSamsung.syncEvents(date, eventSyncType);

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
        case SHEventSyncType.activity:
          data = (await RookSamsung.getActivityEvents(date)).toString();
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
      final steps = await RookSamsung.getTodayStepsCount();

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
      final calories = await RookSamsung.getTodayCaloriesCount();

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
}
