import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';

@Deprecated(
    'RookBackgroundSync has an improved version of this feature which also uploads the extracted steps to Rook servers.')
class IosStepsTracker {
  IosStepsTracker._();

  /// Checks if the tracker is running in background.
  @Deprecated(
      'RookBackgroundSync has an improved version of this feature which also uploads the extracted steps to Rook servers.')
  static Future<bool> isActive() {
    return RookSdkAppleHealthPlatform.instance.isStepsTrackerActive();
  }

  /// Starts the StepsTracker service, if the service is already active this function won't do anything.
  @Deprecated(
      'RookBackgroundSync has an improved version of this feature which also uploads the extracted steps to Rook servers.')
  static Future<void> start() {
    return RookSdkAppleHealthPlatform.instance.startStepsTracker();
  }

  /// Stops the StepsTracker service, if the service is not active this function won't do anything.
  @Deprecated(
      'RookBackgroundSync has an improved version of this feature which also uploads the extracted steps to Rook servers.')
  static Future<void> stop() {
    return RookSdkAppleHealthPlatform.instance.stopStepsTracker();
  }

  /// Returns the last stored step count of the current day.
  /// This value is updated every time the phone detects a step taken and will be reset to zero every day.
  @Deprecated(
      'RookBackgroundSync has an improved version of this feature which also uploads the extracted steps to Rook servers.')
  static Future<int> getTodaySteps() {
    return RookSdkAppleHealthPlatform.instance.getTodaySteps();
  }
}
