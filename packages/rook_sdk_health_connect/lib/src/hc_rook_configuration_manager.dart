import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

/// Helper class used to configure and initialize the SDK, and manage the current user.
class HCRookConfigurationManager {
  HCRookConfigurationManager._();

  /// Call this before any other function if you want to see the logs generated by this SDK.
  static Future<void> enableNativeLogs() {
    return RookSdkHealthConnectPlatform.instance.enableNativeLogs();
  }

  /// Set the credentials to use this SDK.
  static Future<void> setConfiguration(RookConfiguration rookConfiguration) {
    return RookSdkHealthConnectPlatform.instance.setConfiguration(
      rookConfiguration,
    );
  }

  static Future<String?> getUserID() {
    return RookSdkHealthConnectPlatform.instance.getUserID();
  }

  /// Initializes all internal SDKs using the [RookConfiguration] provided with [setConfiguration].
  static Future<void> initRook() {
    return RookSdkHealthConnectPlatform.instance.initRook();
  }

  /// Sets the current user for data upload.
  static Future<void> updateUserID(String userID) {
    return RookSdkHealthConnectPlatform.instance.updateUserID(userID);
  }

  /// Removes the current user for data upload.
  static Future<void> clearUserID() {
    return RookSdkHealthConnectPlatform.instance.clearUserID();
  }

  /// Removes the current user from healthConnect data source,
  /// once removed rook servers won't accept any health data from healthConnect.
  static Future<void> deleteUserFromRook() {
    return RookSdkHealthConnectPlatform.instance.deleteUserFromRook();
  }

  /// Extract and upload timezone information for the current user.
  ///
  /// **IMPORTANT: This function is already called every time `updateUserID` completes successfully,
  /// in most cases the above behavior is more than enough. Only use this function if you need to update
  /// the timezone information manually.**
  static Future<void> syncUserTimeZone() {
    return RookSdkHealthConnectPlatform.instance.syncUserTimeZone();
  }
}
