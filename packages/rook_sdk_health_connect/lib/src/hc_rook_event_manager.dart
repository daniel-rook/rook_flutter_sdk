import 'package:rook_sdk_health_connect/src/domain/enums/hc_sync_status.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

class HCRookEventManager {
  /// Extract, enqueue and upload all physical events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<SyncStatus> syncPhysicalEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncPhysicalEvents(date);
  }

  /// Extract, enqueue and upload all blood glucose events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<SyncStatus> syncBloodGlucoseEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncBloodGlucoseEvents(date);
  }

  /// Extract, enqueue and upload all blood pressure events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<SyncStatus> syncBloodPressureEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncBloodPressureEvents(date);
  }

  /// Extract, enqueue and upload all body metrics events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<SyncStatus> syncBodyMetricsEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncBodyMetricsEvents(date);
  }

  /// Extract, enqueue and upload all body heart rate events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<SyncStatus> syncBodyHeartRateEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncBodyHeartRateEvents(date);
  }

  /// Extract, enqueue and upload all physical heart rate events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<SyncStatus> syncPhysicalHeartRateEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance
        .syncPhysicalHeartRateEvents(date);
  }

  /// Extract, enqueue and upload all hydration events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<SyncStatus> syncHydrationEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncHydrationEvents(date);
  }

  /// Extract, enqueue and upload all nutrition events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<SyncStatus> syncNutritionEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncNutritionEvents(date);
  }

  /// Extract, enqueue and upload all body oxygenation events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<SyncStatus> syncBodyOxygenationEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance
        .syncBodyOxygenationEvents(date);
  }

  /// Extract, enqueue and upload all physical oxygenation events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<SyncStatus> syncPhysicalOxygenationEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance
        .syncPhysicalOxygenationEvents(date);
  }

  /// Extract, enqueue and upload all temperature events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  Future<SyncStatus> syncTemperatureEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncTemperatureEvents(date);
  }

  /// Attempts to upload any queued events, if the upload is successful the events will be removed from the queue.
  Future<void> syncPendingEvents() {
    return RookSdkHealthConnectPlatform.instance.syncPendingEvents();
  }

  /// Extract, enqueue and upload all event types of yesterday,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  ///
  /// **WARNING**: Be cautions of calling this function an excessive amount of times,
  /// Health Connect has a daily usage limit and your app could be blocked for some hours or a full day.
  @Deprecated("Same functionality is available with other sync functions of HCRookEventManager")
  Future<void> syncYesterdayEvents() {
    return RookSdkHealthConnectPlatform.instance.syncYesterdayEvents();
  }
}
