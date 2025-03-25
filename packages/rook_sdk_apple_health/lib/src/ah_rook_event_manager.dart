import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

/// Helper class used to manage health events synchronization.
@Deprecated("Use AHRookSyncManager instead")
class AHRookEventManager {
  AHRookEventManager._();

  /// Extract, enqueue and upload all physical events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  static Future<void> syncPhysicalEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncPhysicalEvents(date);
  }

  /// Extract, enqueue and upload all blood glucose events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  static Future<void> syncBloodGlucoseEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncBloodGlucoseEvents(date);
  }

  /// Extract, enqueue and upload all blood pressure events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  static Future<void> syncBloodPressureEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncBloodPressureEvents(date);
  }

  /// Extract, enqueue and upload all body metrics events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  static Future<void> syncBodyMetricsEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncBodyMetricsEvents(date);
  }

  /// Extract, enqueue and upload all body heart rate events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  static Future<void> syncBodyHeartRateEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncBodyHeartRateEvents(date);
  }

  /// Extract, enqueue and upload all physical heart rate events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  static Future<void> syncPhysicalHeartRateEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance
        .syncPhysicalHeartRateEvents(date);
  }

  /// Extract, enqueue and upload all body oxygenation events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  static Future<void> syncBodyOxygenationEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncBodyOxygenationEvents(date);
  }

  /// Extract, enqueue and upload all physical oxygenation events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  static Future<void> syncPhysicalOxygenationEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance
        .syncPhysicalOxygenationEvents(date);
  }

  /// Extract, enqueue and upload all temperature events of the provided date,
  /// if the upload is fails the events will be keep in the queue for a retry with [syncPendingEvents].
  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  static Future<void> syncTemperatureEvents(DateTime date) {
    return RookSdkAppleHealthPlatform.instance.syncTemperatureEvents(date);
  }

  /// Retrieve and upload current day steps count of Apple Health.
  ///
  /// Returns the number of steps taken today.
  ///
  /// **Warning: This function is resource intensive, don't call it too frequently.**
  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  static Future<int?> syncTodayAppleHealthStepsCount() {
    return RookSdkAppleHealthPlatform.instance.syncTodayAppleHealthStepsCount();
  }

  /// Retrieve and upload current day calories count of Apple Health.
  ///
  /// Returns today's current calories.
  ///
  /// **Warning: This function contributes to the Health Connect rate limit, don't call it too frequently.**
  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  static Future<DailyCalories?> getTodayCaloriesCount() {
    return RookSdkAppleHealthPlatform.instance.getTodayCaloriesCount();
  }

  /// Attempts to upload any queued events, if the upload is successful the events will be removed from the queue.
  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  static Future<void> syncPendingEvents() {
    return RookSdkAppleHealthPlatform.instance.syncPendingEvents();
  }
}
