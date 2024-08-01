import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_availability_status.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

class HCRookPermissionsManager {
  HCRookPermissionsManager._();

  /// Check if the Health Connect APK is installed in this device.
  static Future<HCAvailabilityStatus> checkHealthConnectAvailability() {
    return RookSdkHealthConnectPlatform.instance
        .checkHealthConnectAvailability();
  }

  /// Launches the health Connect application.
  static Future<void> openHealthConnectSettings() {
    return RookSdkHealthConnectPlatform.instance.openHealthConnectSettings();
  }

  /// Checks if the following permissions are granted:
  ///
  /// * READ_SLEEP
  /// * READ_STEPS
  /// * READ_DISTANCE
  /// * READ_FLOORS_CLIMBED
  /// * READ_ELEVATION_GAINED
  /// * READ_OXYGEN_SATURATION
  /// * READ_VO2_MAX
  /// * READ_TOTAL_CALORIES_BURNED
  /// * READ_ACTIVE_CALORIES_BURNED
  /// * READ_HEART_RATE
  /// * READ_RESTING_HEART_RATE
  /// * READ_HEART_RATE_VARIABILITY
  /// * READ_EXERCISE
  /// * READ_SPEED
  /// * READ_WEIGHT
  /// * READ_HEIGHT
  /// * READ_BLOOD_GLUCOSE
  /// * READ_BLOOD_PRESSURE
  /// * READ_HYDRATION
  /// * READ_BODY_TEMPERATURE
  /// * READ_RESPIRATORY_RATE
  /// * READ_NUTRITION
  /// * READ_MENSTRUATION
  /// * READ_POWER
  static Future<bool> checkHealthConnectPermissions() {
    return RookSdkHealthConnectPlatform.instance
        .checkHealthConnectPermissions();
  }

  static Future<RequestPermissionsStatus> requestHealthConnectPermissions() {
    return RookSdkHealthConnectPlatform.instance
        .requestHealthConnectPermissions();
  }

  /// Checks if the following permissions are granted:
  ///
  /// * POST_NOTIFICATIONS
  /// * ACTIVITY_RECOGNITION
  /// * FOREGROUND_SERVICE
  /// * FOREGROUND_SERVICE_HEALTH
  static Future<bool> checkAndroidPermissions() {
    return RookSdkHealthConnectPlatform.instance.checkAndroidPermissions();
  }

  /// Checks if the device should show the request dialog for the following permissions:
  ///
  /// * POST_NOTIFICATIONS
  /// * ACTIVITY_RECOGNITION
  /// * FOREGROUND_SERVICE
  /// * FOREGROUND_SERVICE_HEALTH
  ///
  /// This function will ignore any permissions that are already granted.
  ///
  /// Returns a boolean indicating if the device should show the request dialog,
  /// if false you should navigate the user to the app's settings screen to grant permissions manually.
  static Future<bool> shouldRequestAndroidPermissions() {
    return RookSdkHealthConnectPlatform.instance
        .shouldRequestAndroidPermissions();
  }

  static Future<RequestPermissionsStatus> requestAndroidPermissions() {
    return RookSdkHealthConnectPlatform.instance.requestAndroidPermissions();
  }
}
