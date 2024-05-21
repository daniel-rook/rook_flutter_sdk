import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';

class AHRookSummaryManager {
  /// Extract, enqueue and upload an sleep summary of the provided [date],
  /// if the upload is fails the summary will be keep in the queue for a retry with [syncPendingSummaries].
  Future<void> syncSleepSummary(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncSleepSummary(date);
  }

  /// Extract, enqueue and upload a physical summary of the provided [date],
  /// if the upload is fails the summary will be keep in the queue for a retry with [syncPendingSummaries].
  Future<void> syncPhysicalSummary(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncPhysicalSummary(date);
  }

  /// Extract, enqueue and upload a body summary of the provided [date],
  /// if the upload is fails the summary will be keep in the queue for a retry with [syncPendingSummaries].
  Future<void> syncBodySummary(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncBodySummary(date);
  }

  /// Attempts to upload any queued summaries, if the upload is successful the summary will be removed from the queue.
  Future<void> syncPendingSummaries() {
    return RookSdkAppleHealthPlatform.instance.syncPendingSummaries();
  }
}
