import 'package:rook_sdk_health_connect/src/domain/enums/hc_availability_status.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

@Deprecated("Methods from HCRookPermissionsManager offer better functionality.")
class HCRookHealthPermissionsManager {
  HCRookHealthPermissionsManager._();

  /// Check if the Health Connect APK is installed in this device.
  @Deprecated(
      "Methods from HCRookPermissionsManager offer better functionality. Replace with HCRookPermissionsManager.checkHealthConnectAvailability")
  static Future<HCAvailabilityStatus> checkAvailability() {
    return RookSdkHealthConnectPlatform.instance.checkAvailability();
  }

  /// Launches the health Connect application.
  @Deprecated(
      "Methods from HCRookPermissionsManager offer better functionality. Replace with HCRookPermissionsManager.openHealthConnectSettings")
  static Future<void> openHealthConnectSettings() {
    return RookSdkHealthConnectPlatform.instance.openHealthConnectSettings();
  }

  /// Checks if Health Connect permissions are granted.
  @Deprecated(
      "Methods from HCRookPermissionsManager offer better functionality. Replace with HCRookPermissionsManager.checkHealthConnectPermissions")
  static Future<bool> checkPermissions() {
    return RookSdkHealthConnectPlatform.instance.checkPermissions();
  }

  /// Launch a request to ask the user to grant Health Connect permissions.
  @Deprecated(
      "Methods from HCRookPermissionsManager offer better functionality. Replace with HCRookPermissionsManager.requestHealthConnectPermissions")
  static Future<void> requestPermissions() {
    return RookSdkHealthConnectPlatform.instance.requestPermissions();
  }
}
