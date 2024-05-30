import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';

@Deprecated(
    'RookBackgroundSync has an improved version of this feature which also uploads the extracted calories to Rook servers.')
class IosCaloriesTracker {
  IosCaloriesTracker._();

  /// Checks if the tracker is running in background.
  @Deprecated(
      'RookBackgroundSync has an improved version of this feature which also uploads the extracted calories to Rook servers.')
  static Future<bool> isActive() {
    return RookSdkAppleHealthPlatform.instance.isCaloriesTrackerActive();
  }

  /// Starts the CaloriesTracker service, if the service is already active this function won't do anything.
  @Deprecated(
      'RookBackgroundSync has an improved version of this feature which also uploads the extracted calories to Rook servers.')
  static Future<void> start() {
    return RookSdkAppleHealthPlatform.instance.startCaloriesTracker();
  }

  /// Stops the CaloriesTracker service, if the service is not active this function won't do anything.
  @Deprecated(
      'RookBackgroundSync has an improved version of this feature which also uploads the extracted calories to Rook servers.')
  static Future<void> stop() {
    return RookSdkAppleHealthPlatform.instance.stopCaloriesTracker();
  }

  /// Returns the last stored calories count of the current day.
  /// This value is updated every time the phone detects a step taken and will be reset to zero every day.
  @Deprecated(
      'RookBackgroundSync has an improved version of this feature which also uploads the extracted calories to Rook servers.')
  static Future<int> getTodayCalories() {
    return RookSdkAppleHealthPlatform.instance.getTodayCalories();
  }
}
