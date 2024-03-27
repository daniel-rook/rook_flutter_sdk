import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';

class AHRookEventManager {
  /// Extract, enqueue and upload all physical events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<void> syncPhysicalEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncPhysicalEvents(date);
  }

  /// Extract, enqueue and upload all blood glucose events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<void> syncBloodGlucoseEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncBloodGlucoseEvents(date);
  }

  /// Extract, enqueue and upload all blood pressure events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<void> syncBloodPressureEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncBloodPressureEvents(date);
  }

  /// Extract, enqueue and upload all body metrics events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<void> syncBodyMetricsEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncBodyMetricsEvents(date);
  }

  /// Extract, enqueue and upload all body heart rate events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<void> syncBodyHeartRateEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncBodyHeartRateEvents(date);
  }

  /// Extract, enqueue and upload all physical heart rate events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<void> syncPhysicalHeartRateEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance
        .syncPhysicalHeartRateEvents(date);
  }

  /// Extract, enqueue and upload all body oxygenation events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<void> syncBodyOxygenationEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncBodyOxygenationEvents(date);
  }

  /// Extract, enqueue and upload all physical oxygenation events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<void> syncPhysicalOxygenationEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance
        .syncPhysicalOxygenationEvents(date);
  }

  /// Extract, enqueue and upload all temperature events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<void> syncTemperatureEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncTemperatureEvents(date);
  }

  /// Attempts to upload any queued events, if the upload is successful the events will be removed from the queue.
  Future<void> syncPendingEvents() {
    return RookSdkAppleHealthPlatform.instance.syncPendingEvents();
  }

  /// Extract, enqueue and upload all event types of yesterday,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Same functionality is available with other sync functions of AHRookEventManager")
  Future<void> syncYesterdayEvents() {
    return RookSdkAppleHealthPlatform.instance.syncYesterdayEvents();
  }
}
