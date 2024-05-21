import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';

class AHRookHealthPermissionsManager {
  /// Launch a request to ask the user to grant Apple Health permissions.
  Future<void> requestPermissions() {
    return RookSdkAppleHealthPlatform.instance.requestAllPermissions();
  }

  /// Ask the user to authorize this app to retrieve all types of data.
  @Deprecated(
    'This method is deprecated, use requestPermissions() instead. This method will be removed in a future major release (0.X.0)',
  )
  Future<void> requestAllPermissions() {
    return RookSdkAppleHealthPlatform.instance.requestAllPermissions();
  }

  /// Ask the user to authorize this app to retrieve sleep data.
  @Deprecated(
    'This method is deprecated, use requestPermissions() instead. This method will be removed in a future major release (0.X.0)',
  )
  Future<void> requestSleepPermissions() {
    return RookSdkAppleHealthPlatform.instance.requestSleepPermissions();
  }

  /// Ask the user to authorize this app to retrieve physical data.
  @Deprecated(
    'This method is deprecated, use requestPermissions() instead. This method will be removed in a future major release (0.X.0)',
  )
  Future<void> requestPhysicalPermissions() {
    return RookSdkAppleHealthPlatform.instance.requestPhysicalPermissions();
  }

  /// Ask the user to authorize this app to retrieve body data.
  @Deprecated(
    'This method is deprecated, use requestPermissions() instead. This method will be removed in a future major release (0.X.0)',
  )
  Future<void> requestBodyPermissions() {
    return RookSdkAppleHealthPlatform.instance.requestBodyPermissions();
  }
}
