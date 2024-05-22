import 'package:rook_sdk_health_connect/src/domain/enums/hc_availability_status.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

class HCRookHealthPermissionsManager {
  /// Check if the Health Connect APK is installed in this device.
  Future<HCAvailabilityStatus> checkAvailability() {
    return RookSdkHealthConnectPlatform.instance.checkAvailability();
  }

  /// Launches the health Connect application.
  Future<void> openHealthConnectSettings() {
    return RookSdkHealthConnectPlatform.instance.openHealthConnectSettings();
  }

  /// Checks if Health Connect permissions are granted.
  Future<bool> checkPermissions() {
    return RookSdkHealthConnectPlatform.instance.checkPermissions();
  }

  /// Launch a request to ask the user to grant Health Connect permissions.
  Future<void> requestPermissions() {
    return RookSdkHealthConnectPlatform.instance.requestPermissions();
  }
}
