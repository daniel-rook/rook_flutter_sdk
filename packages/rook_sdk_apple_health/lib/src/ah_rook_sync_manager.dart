import 'package:rook_sdk_apple_health/src/domain/enums/ah_event_sync_type.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_summary_sync_type.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

class AHRookSyncManager {
  AHRookSyncManager._();

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

  static Future<int?> getTodayStepsCount() {
    return RookSdkAppleHealthPlatform.instance.getTodayStepsCount();
  }

  static Future<DailyCalories?> getTodayCaloriesCount() {
    return RookSdkAppleHealthPlatform.instance.getTodayCaloriesCount();
  }
}
