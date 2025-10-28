import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_event_sync_type.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_summary_sync_type.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

class HCRookSyncManager {
  HCRookSyncManager._();

  /// Syncs summaries using the provided parameters.
  ///
  /// If [enableLogs] is not null: Syncs the last 29 days of SLEEP_SUMMARY, PHYSICAL_SUMMARY and BODY_SUMMARY (not including today).
  /// If [date] is not null: Syncs SLEEP_SUMMARY, PHYSICAL_SUMMARY and BODY_SUMMARY for the provided [date].
  /// if [summary] and [date] are not null: Syncs the [summary] of choice for the provided [date].
  static Future<bool> sync({
    bool? enableLogs,
    DateTime? date,
    HCSummarySyncType? summary,
  }) {
    if (enableLogs != null) {
      return RookSdkHealthConnectPlatform.instance.syncHistoricSummaries(
        enableLogs,
      );
    }

    if (date != null) {
      if (summary != null) {
        return RookSdkHealthConnectPlatform.instance.syncByDateAndSummary(
          date,
          summary,
        );
      } else {
        return RookSdkHealthConnectPlatform.instance.syncSummariesByDate(
          date,
        );
      }
    }

    throw UnsupportedError('At least one parameter is required');
  }

  /// Syncs the [event] of choice for the provided [date].
  static Future<bool> syncEvents(DateTime date, HCEventSyncType event) {
    return RookSdkHealthConnectPlatform.instance.syncByDateAndEvent(
      date,
      event,
    );
  }

  /// Retrieve and upload current day sleep summary of Health Connect.
  ///
  /// **Warning: This function contributes to the Health Connect rate limit, don't call it too frequently.**
  ///
  /// Returns the current day sleep summaries or an empty list if none are available.
  static Future<List<SleepSummary>> getSleepSummary(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.getSleepSummary(date);
  }

  /// Retrieve and upload current day physical summary of Health Connect.
  ///
  /// **Warning: This function contributes to the Health Connect rate limit, don't call it too frequently.**
  ///
  /// Returns the current day physical summary or null if none are available.
  static Future<PhysicalSummary?> getPhysicalSummary(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.getPhysicalSummary(date);
  }

  /// Retrieve and upload current day body summary of Health Connect.
  ///
  /// **Warning: This function contributes to the Health Connect rate limit, don't call it too frequently.**
  ///
  /// Returns the current day body summary or null if none are available.
  static Future<BodySummary?> getBodySummary(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.getBodySummary(date);
  }

  /// Retrieve and upload current day activity events of Health Connect.
  ///
  /// **Warning: This function contributes to the Health Connect rate limit, don't call it too frequently.**
  ///
  /// Returns the current day activity events or an empty list if none are available.
  static Future<List<ActivityEvent>> getActivityEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.getActivityEvents(date);
  }

  /// Retrieve and upload current day steps count of Health Connect.
  ///
  /// **Warning: This function contributes to the Health Connect rate limit, don't call it too frequently.**
  ///
  /// Returns a [SyncStatusWithData] with the current day steps count (if available).
  static Future<SyncStatusWithData<int>> getTodayStepsCount() {
    return RookSdkHealthConnectPlatform.instance.getTodayStepsCount();
  }

  /// Retrieve and upload current day calories count of Health Connect.
  ///
  /// **Warning: This function contributes to the Health Connect rate limit, don't call it too frequently.**
  ///
  /// Returns a [SyncStatusWithData] with the current day calories count (if available).
  static Future<SyncStatusWithData<DailyCalories>> getTodayCaloriesCount() {
    return RookSdkHealthConnectPlatform.instance.getTodayCaloriesCount();
  }
}
