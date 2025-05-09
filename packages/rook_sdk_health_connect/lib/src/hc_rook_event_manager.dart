import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

/// Helper class used to manage health events synchronization.
@Deprecated("Use HCRookSyncManager instead")
class HCRookEventManager {
  HCRookEventManager._();

  /// Extract, enqueue and upload all physical events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  static Future<SyncStatus> syncPhysicalEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncPhysicalEvents(date);
  }

  /// Extract, enqueue and upload all blood glucose events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  static Future<SyncStatus> syncBloodGlucoseEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncBloodGlucoseEvents(date);
  }

  /// Extract, enqueue and upload all blood pressure events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  static Future<SyncStatus> syncBloodPressureEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncBloodPressureEvents(date);
  }

  /// Extract, enqueue and upload all body metrics events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  static Future<SyncStatus> syncBodyMetricsEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncBodyMetricsEvents(date);
  }

  /// Extract, enqueue and upload all body heart rate events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  static Future<SyncStatus> syncBodyHeartRateEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncBodyHeartRateEvents(date);
  }

  /// Extract, enqueue and upload all physical heart rate events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  static Future<SyncStatus> syncPhysicalHeartRateEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance
        .syncPhysicalHeartRateEvents(date);
  }

  /// Extract, enqueue and upload all hydration events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  static Future<SyncStatus> syncHydrationEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncHydrationEvents(date);
  }

  /// Extract, enqueue and upload all nutrition events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  static Future<SyncStatus> syncNutritionEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncNutritionEvents(date);
  }

  /// Extract, enqueue and upload all body oxygenation events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  static Future<SyncStatus> syncBodyOxygenationEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance
        .syncBodyOxygenationEvents(date);
  }

  /// Extract, enqueue and upload all physical oxygenation events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  static Future<SyncStatus> syncPhysicalOxygenationEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance
        .syncPhysicalOxygenationEvents(date);
  }

  /// Extract, enqueue and upload all temperature events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  static Future<SyncStatus> syncTemperatureEvents(DateTime date) {
    return RookSdkHealthConnectPlatform.instance.syncTemperatureEvents(date);
  }

  /// Retrieve and upload current day steps count of Health Connect.
  ///
  /// Returns a [SyncStatusWithData] with the current day steps count (if available).
  ///
  /// **Warning: This function contributes to the Health Connect rate limit, don't call it too frequently.**
  @Deprecated("Use HCRookSyncManager.getTodayStepsCount() instead")
  static Future<SyncStatusWithData<int>> syncTodayHealthConnectStepsCount() {
    return RookSdkHealthConnectPlatform.instance
        .syncTodayHealthConnectStepsCount();
  }

  /// Retrieve and upload current day calories count of Health Connect.
  ///
  /// Returns a [SyncStatusWithData] with the current day calories count (if available).
  ///
  /// **Warning: This function contributes to the Health Connect rate limit, don't call it too frequently.**
  @Deprecated("Use HCRookSyncManager.getTodayCaloriesCount() instead")
  static Future<SyncStatusWithData<DailyCalories>> getTodayCaloriesCount() {
    return RookSdkHealthConnectPlatform.instance.getTodayCaloriesCount();
  }

  /// Attempts to upload any queued events, if the upload is successful the events will be removed from the queue.
  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  static Future<void> syncPendingEvents() {
    return RookSdkHealthConnectPlatform.instance.syncPendingEvents();
  }
}
