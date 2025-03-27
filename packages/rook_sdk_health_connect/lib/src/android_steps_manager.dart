import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

/// Helper class to manage steps from Android system.
class AndroidStepsManager {
  AndroidStepsManager._();

  /// Checks if the device has the required sensors; STEP_DETECTOR.
  static Future<bool> isAvailable() {
    return RookSdkHealthConnectPlatform.instance.isStepsAvailable();
  }

  /// Checks if the tracker is running in background.
  static Future<bool> isBackgroundAndroidStepsActive() {
    return RookSdkHealthConnectPlatform.instance
        .isBackgroundAndroidStepsActive();
  }

  /// Starts the StepsTracker service, if the service is already active this function won't do anything.
  static Future<void> enableBackgroundAndroidSteps() {
    return RookSdkHealthConnectPlatform.instance.enableBackgroundAndroidSteps();
  }

  /// Stops the StepsTracker service, if the service is not active this function won't do anything.
  static Future<void> disableBackgroundAndroidSteps() {
    return RookSdkHealthConnectPlatform.instance
        .disableBackgroundAndroidSteps();
  }

  /// Retrieve and upload current day steps count of Android system, if the upload fails the events
  /// will be keep in the queue for a retry with [RookEventManager.syncPendingEvents].
  ///
  /// Returns the number of steps taken today.
  ///
  /// **Warning: This function is resource intensive, don't call it too frequently.**
  static Future<int> syncTodayAndroidStepsCount() {
    return RookSdkHealthConnectPlatform.instance.syncTodayAndroidStepsCount();
  }
}
