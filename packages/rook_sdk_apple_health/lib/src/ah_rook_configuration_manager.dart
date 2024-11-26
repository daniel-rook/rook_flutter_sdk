import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

/// Helper class used to configure and initialize the SDK, and manage the current user.
class AHRookConfigurationManager {
  AHRookConfigurationManager._();

  /// Call this before any other function if you want to see the logs generated by this SDK.
  static Future<void> enableNativeLogs() {
    return RookSdkAppleHealthPlatform.instance.enableNativeLogs();
  }

  /// Set the credentials to use this SDK.
  static Future<void> setConfiguration(RookConfiguration rookConfiguration) {
    return RookSdkAppleHealthPlatform.instance.setConfiguration(
      rookConfiguration,
    );
  }

  static Future<String?> getUserID() {
    return RookSdkAppleHealthPlatform.instance.getUserID();
  }

  /// Initializes all internal SDKs using the [RookConfiguration] provided with [setConfiguration].
  static Future<void> initRook() {
    return RookSdkAppleHealthPlatform.instance.initRook();
  }

  /// Sets the current user for data upload.
  static Future<void> updateUserID(String userID) {
    return RookSdkAppleHealthPlatform.instance.updateUserID(userID);
  }

  /// Removes the current user for data upload.
  static Future<void> clearUserID() {
    return RookSdkAppleHealthPlatform.instance.clearUserID();
  }

  /// Removes the current user from appleHealth data source,
  /// once removed rook servers won't accept any health data from appleHealth.
  static Future<void> deleteUserFromRook() {
    return RookSdkAppleHealthPlatform.instance.deleteUserFromRook();
  }

  /// Extract and upload timezone information for the current user.
  ///
  /// **IMPORTANT: This function is already called every time `updateUserID` completes successfully,
  /// in most cases the above behavior is more than enough. Only use this function if you need to update
  /// the timezone information manually.**
  static Future<void> syncUserTimeZone() {
    return RookSdkAppleHealthPlatform.instance.syncUserTimeZone();
  }
}
