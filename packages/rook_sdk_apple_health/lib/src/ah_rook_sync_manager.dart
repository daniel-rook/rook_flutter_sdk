import 'package:rook_sdk_apple_health/src/domain/enums/ah_event_sync_type.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_summary_sync_type.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

class AHRookSyncManager {
  AHRookSyncManager._();

  /// Syncs summaries using the provided parameters.
  ///
  /// If [enableLogs] is not null: Syncs the last 29 days of SLEEP_SUMMARY, PHYSICAL_SUMMARY and BODY_SUMMARY (not including today).
  /// If [date] is not null: Syncs SLEEP_SUMMARY, PHYSICAL_SUMMARY and BODY_SUMMARY for the provided [date].
  /// if [summary] and [date] are not null: Syncs the [summary] of choice for the provided [date].
  ///
  /// Returns [RecordsNotFoundException] if no data is available.
  static Future<void> sync({
    bool? enableLogs,
    DateTime? date,
    AHSummarySyncType? summary,
  }) {
    if (enableLogs != null) {
      return RookSdkAppleHealthPlatform.instance.syncHistoricSummaries(
        enableLogs,
      );
    }

    if (date != null) {
      if (summary != null) {
        return RookSdkAppleHealthPlatform.instance.syncByDateAndSummary(
          date,
          summary,
        );
      } else {
        return RookSdkAppleHealthPlatform.instance.syncSummariesByDate(
          date,
        );
      }
    }

    throw UnsupportedError('At least one parameter is required');
  }

  /// Syncs the [event] of choice for the provided [date].
  ///
  /// Returns [RecordsNotFoundException] if no data is available.
  static Future<void> syncEvents(DateTime date, AHEventSyncType event) {
    return RookSdkAppleHealthPlatform.instance.syncByDateAndEvent(
      date,
      event,
    );
  }

  /// Retrieve and upload current day sleep summary of Apple Health.
  ///
  /// Returns the current day sleep summaries. Or [RecordsNotFoundException] if no data is available.
  static Future<List<SleepSummary>> getSleepSummary(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.getSleepSummary(date);
  }

  /// Retrieve and upload current day physical summary of Apple Health.
  ///
  /// Returns the current day physical summary. Or [RecordsNotFoundException] if no data is available.
  static Future<PhysicalSummary> getPhysicalSummary(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.getPhysicalSummary(date);
  }

  /// Retrieve and upload current day body summary of Apple Health.
  ///
  /// Returns the current day body summary. Or [RecordsNotFoundException] if no data is available.
  static Future<BodySummary> getBodySummary(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.getBodySummary(date);
  }

  /// Retrieve and upload current day activity events of Apple Health.
  ///
  /// Returns the current day activity events. Or [RecordsNotFoundException] if no data is available.
  static Future<List<ActivityEvent>> getActivityEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.getActivityEvents(date);
  }

  /// Retrieve and upload current day steps count of Apple Health.
  ///
  /// Returns the current day steps count. Or [RecordsNotFoundException] if no data is available.
  static Future<int?> getTodayStepsCount() {
    return RookSdkAppleHealthPlatform.instance.getTodayStepsCount();
  }

  /// Retrieve and upload current day calories count of Apple Health.
  ///
  /// Returns the current day calories count. Or [RecordsNotFoundException] if no data is available.
  static Future<DailyCalories?> getTodayCaloriesCount() {
    return RookSdkAppleHealthPlatform.instance.getTodayCaloriesCount();
  }
}
