import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_event_sync_type.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_summary_sync_type.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

class HCRookSyncManager {
  HCRookSyncManager._();

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

  static Future<bool> syncEvents(DateTime date, HCEventSyncType event) {
    return RookSdkHealthConnectPlatform.instance.syncByDateAndEvent(
      date,
      event,
    );
  }

  static Future<SyncStatusWithData<int>> getTodayStepsCount() {
    return RookSdkHealthConnectPlatform.instance.getTodayStepsCount();
  }

  static Future<SyncStatusWithData<DailyCalories>> getTodayCaloriesCount() {
    return RookSdkHealthConnectPlatform.instance.getTodayCaloriesCount();
  }
}
