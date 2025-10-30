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
  static Future<bool> sync({
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

  static Future<bool> syncEvents(DateTime date, AHEventSyncType event) {
    return RookSdkAppleHealthPlatform.instance.syncByDateAndEvent(
      date,
      event,
    );
  }

  /// Retrieve and upload current day sleep summary of Health Connect.
  ///
  /// Returns the current day sleep summaries or an empty list if none are available.
  static Future<List<SleepSummary>> getSleepSummary(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.getSleepSummary(date);
  }

  /// Retrieve and upload current day physical summary of Health Connect.
  ///
  /// Returns the current day physical summary or null if none are available.
  static Future<PhysicalSummary?> getPhysicalSummary(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.getPhysicalSummary(date);
  }

  /// Retrieve and upload current day body summary of Health Connect.
  ///
  /// Returns the current day body summary or null if none are available.
  static Future<BodySummary?> getBodySummary(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.getBodySummary(date);
  }

  /// Retrieve and upload current day activity events of Health Connect.
  ///
  /// Returns the current day activity events or an empty list if none are available.
  static Future<List<ActivityEvent>> getActivityEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.getActivityEvents(date);
  }

  /// Retrieve and upload current day steps count of Health Connect.
  ///
  /// Returns the current day steps count or null if none are available.
  static Future<int?> getTodayStepsCount() {
    return RookSdkAppleHealthPlatform.instance.getTodayStepsCount();
  }

  /// Retrieve and upload current day calories count of Health Connect.
  ///
  /// Returns the current day calories count or null if none are available.
  static Future<DailyCalories?> getTodayCaloriesCount() {
    return RookSdkAppleHealthPlatform.instance.getTodayCaloriesCount();
  }
}
