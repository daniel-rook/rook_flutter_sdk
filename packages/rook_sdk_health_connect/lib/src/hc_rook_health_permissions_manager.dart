import 'package:rook_sdk_health_connect/src/domain/enums/hc_availability_status.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_health_permission.dart';
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

  /// Checks if the provided [hcHealthPermission] is granted.
  Future<bool> checkPermissions(HCHealthPermission hcHealthPermission) {
    return RookSdkHealthConnectPlatform.instance
        .checkPermissions(hcHealthPermission);
  }

  /// Launch a request to ask the user to grant the provided [hcHealthPermission].
  Future<void> requestPermissions(HCHealthPermission hcHealthPermission) {
    return RookSdkHealthConnectPlatform.instance
        .requestPermissions(hcHealthPermission);
  }
}
