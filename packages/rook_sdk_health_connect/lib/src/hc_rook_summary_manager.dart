import 'package:rook_sdk_health_connect/src/domain/enums/hc_sync_status.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

class HCRookSummaryManager {
  /// Extract, enqueue and upload an sleep summary of the provided [date],
  /// if the upload is fails the summary will be keep in the queue for a retry with [syncPendingSummaries].
  Future<SyncStatus> syncSleepSummary(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncSleepSummary(date);
  }

  /// Extract, enqueue and upload a physical summary of the provided [date],
  /// if the upload is fails the summary will be keep in the queue for a retry with [syncPendingSummaries].
  Future<SyncStatus> syncPhysicalSummary(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncPhysicalSummary(date);
  }

  /// Extract, enqueue and upload a body summary of the provided [date],
  /// if the upload is fails the summary will be keep in the queue for a retry with [syncPendingSummaries].
  Future<SyncStatus> syncBodySummary(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncBodySummary(date);
  }

  /// Attempts to upload any queued summaries, if the upload is successful the summary will be removed from the queue.
  Future<void> syncPendingSummaries() {
    return RookSdkHealthConnectPlatform.instance.syncPendingSummaries();
  }

  /// Extract, enqueue and upload all summary types of yesterday,
  /// if the upload is fails the summaries will be keep in the queue for a retry with [syncPendingSummaries].
  Future<void> syncYesterdaySummaries() {
    return RookSdkHealthConnectPlatform.instance.syncYesterdaySummaries();
  }
}
