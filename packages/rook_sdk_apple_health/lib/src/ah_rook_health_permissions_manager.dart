import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';

class AHRookHealthPermissionsManager {
  /// Ask the user to authorize this app to retrieve all types of data.
  Future<void> requestAllPermissions() {
    return RookSdkAppleHealthPlatform.instance.requestAllPermissions();
  }

  /// Ask the user to authorize this app to retrieve sleep data.
  Future<void> requestSleepPermissions() {
    return RookSdkAppleHealthPlatform.instance.requestSleepPermissions();
  }

  /// Ask the user to authorize this app to retrieve physical data.
  Future<void> requestPhysicalPermissions() {
    return RookSdkAppleHealthPlatform.instance.requestPhysicalPermissions();
  }

  /// Ask the user to authorize this app to retrieve body data.
  Future<void> requestBodyPermissions() {
    return RookSdkAppleHealthPlatform.instance.requestBodyPermissions();
  }
}
