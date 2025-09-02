import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/sh_event_sync_type.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/sh_summary_sync_type.dart';
import 'package:rook_sdk_samsung_health/src/platform/rook_sdk_samsung_health_platform_interface.dart';

class SHRookSyncManager {
  SHRookSyncManager._();

  static Future<bool> sync({
    bool? enableLogs,
    DateTime? date,
    SHSummarySyncType? summary,
  }) {
    if (enableLogs != null) {
      return RookSdkSamsungHealthPlatform.instance.syncHistoricSummaries(
        enableLogs,
      );
    }

    if (date != null) {
      if (summary != null) {
        return RookSdkSamsungHealthPlatform.instance.syncByDateAndSummary(
          date,
          summary,
        );
      } else {
        return RookSdkSamsungHealthPlatform.instance.syncSummariesByDate(
          date,
        );
      }
    }

    throw UnsupportedError('At least one parameter is required');
  }

  static Future<bool> syncEvents(DateTime date, SHEventSyncType event) {
    return RookSdkSamsungHealthPlatform.instance.syncByDateAndEvent(
      date,
      event,
    );
  }

  static Future<SyncStatusWithData<int>> getTodayStepsCount() {
    return RookSdkSamsungHealthPlatform.instance.getTodayStepsCount();
  }

  static Future<SyncStatusWithData<DailyCalories>> getTodayCaloriesCount() {
    return RookSdkSamsungHealthPlatform.instance.getTodayCaloriesCount();
  }
}
