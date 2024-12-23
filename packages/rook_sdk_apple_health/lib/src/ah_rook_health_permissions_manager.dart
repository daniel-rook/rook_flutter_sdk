import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';

/// Helper class to request/check permissions used by this SDK.
class AHRookHealthPermissionsManager {
  AHRookHealthPermissionsManager._();

  /// Launch a request to ask the user to grant Apple Health permissions.
  static Future<void> requestPermissions() {
    return RookSdkAppleHealthPlatform.instance.requestPermissions();
  }
}
