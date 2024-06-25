import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

class HCRookSummaryManager {
  HCRookSummaryManager._();

  /// Extract, enqueue and upload an sleep summary of the provided [date],
  /// if the upload is fails the summary will be keep in the queue for a retry with [syncPendingSummaries].
  static Future<SyncStatus> syncSleepSummary(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncSleepSummary(date);
  }

  /// Extract, enqueue and upload a physical summary of the provided [date],
  /// if the upload is fails the summary will be keep in the queue for a retry with [syncPendingSummaries].
  static Future<SyncStatus> syncPhysicalSummary(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncPhysicalSummary(date);
  }

  /// Extract, enqueue and upload a body summary of the provided [date],
  /// if the upload is fails the summary will be keep in the queue for a retry with [syncPendingSummaries].
  static Future<SyncStatus> syncBodySummary(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncBodySummary(date);
  }

  /// Attempts to upload any queued summaries, if the upload is successful the summary will be removed from the queue.
  static Future<void> syncPendingSummaries() {
    return RookSdkHealthConnectPlatform.instance.syncPendingSummaries();
  }
}
