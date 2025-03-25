import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';

/// Helper class used to manage health summaries synchronization.
@Deprecated("Use AHRookSyncManager instead")
class AHRookSummaryManager {
  AHRookSummaryManager._();

  /// Extract, enqueue and upload an sleep summary of the provided [date],
  /// if the upload is fails the summary will be keep in the queue for a retry with [syncPendingSummaries].
  @Deprecated("Use AHRookSyncManager.sync() instead")
  static Future<void> syncSleepSummary(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncSleepSummary(date);
  }

  /// Extract, enqueue and upload a physical summary of the provided [date],
  /// if the upload is fails the summary will be keep in the queue for a retry with [syncPendingSummaries].
  @Deprecated("Use AHRookSyncManager.sync() instead")
  static Future<void> syncPhysicalSummary(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncPhysicalSummary(date);
  }

  /// Extract, enqueue and upload a body summary of the provided [date],
  /// if the upload is fails the summary will be keep in the queue for a retry with [syncPendingSummaries].
  @Deprecated("Use AHRookSyncManager.sync() instead")
  static Future<void> syncBodySummary(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncBodySummary(date);
  }

  /// Attempts to upload any queued summaries, if the upload is successful the summary will be removed from the queue.
  @Deprecated("Use AHRookSyncManager.sync() instead")
  static Future<void> syncPendingSummaries() {
    return RookSdkAppleHealthPlatform.instance.syncPendingSummaries();
  }
}
