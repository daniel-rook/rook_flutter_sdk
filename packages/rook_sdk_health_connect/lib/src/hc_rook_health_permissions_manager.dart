import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

/// Helper class to request/check permissions used by this SDK.
class HCRookHealthPermissionsManager {
  HCRookHealthPermissionsManager._();

  /// Check if the Health Connect APK is installed in this device.
  @Deprecated("Replace with checkHealthConnectAvailability")
  static Future<HCAvailabilityStatus> checkAvailability() {
    return RookSdkHealthConnectPlatform.instance.checkAvailability();
  }

  /// Checks if Health Connect permissions are granted.
  @Deprecated("Replace with checkHealthConnectPermissions")
  static Future<bool> checkPermissions() {
    return RookSdkHealthConnectPlatform.instance.checkPermissions();
  }

  /// Launch a request to ask the user to grant Health Connect permissions.
  @Deprecated("Replace with requestHealthConnectPermissions")
  static Future<void> requestPermissions() {
    return RookSdkHealthConnectPlatform.instance.requestPermissions();
  }

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

  /// Checks if at least one of the health connect permissions declared in manifest is granted:
  ///
  /// Health Connect permissions are declared with the syntax: **android.permission.health.READ..**,
  /// to see the current Health Connect permissions go to you AndroidManifest and select the merged manifest tab.
  static Future<bool> checkHealthConnectPermissionsPartially() {
    return RookSdkHealthConnectPlatform.instance
        .checkHealthConnectPermissionsPartially();
  }

  /// Request the following permissions:
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
  ///
  /// This method will configure, start and stop it's own activity,
  /// the result will be returned in [requestHealthConnectPermissionsUpdates].
  static Future<RequestPermissionsStatus> requestHealthConnectPermissions() {
    return RookSdkHealthConnectPlatform.instance
        .requestHealthConnectPermissions();
  }

  /// Revoke (reset) all granted health connect permissions.
  ///
  /// You may notice that after calling this function the permissions are still granted,
  /// however they will be revoked the next time the app is closed (process stops).
  static Future<void> revokeHealthConnectPermissions() {
    return RookSdkHealthConnectPlatform.instance
        .revokeHealthConnectPermissions();
  }

  /// Listen to this stream to get updates of a Health Connect permissions request.
  ///
  /// Example:
  ///
  /// ```dart
  /// // 1.- Create a stream subscription
  /// StreamSubscription<bool>? streamSubscription;
  ///
  /// // 2.- Listen to stream
  /// streamSubscription = HCRookHealthPermissionsManager.requestHealthConnectPermissionsUpdates.listen((permissionsSummary) {
  ///   // Updated your UI
  /// });
  ///
  /// // 3.- Request permissions
  /// HCRookHealthPermissionsManager.requestHealthConnectPermissions().then((requestPermissionsStatus) {
  ///   if (requestPermissionsStatus == RequestPermissionsStatus.alreadyGranted) {
  ///     // Permissions already granted, update your UI
  ///   } else {
  ///     // Wait for result in stream
  ///   }
  ///  }).catchError((error) {
  ///   // Handle error
  ///  });
  ///
  /// // 4.- Stop listening to the stream
  /// streamSubscription?.cancel();
  /// ```
  static Stream<HealthConnectPermissionsSummary>
      get requestHealthConnectPermissionsUpdates {
    return RookSdkHealthConnectPlatform
        .instance.requestHealthConnectPermissionsUpdates;
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
  /// This method will ignore any permissions that are already granted.
  ///
  /// Returns a boolean indicating if the device should show the request dialog,
  /// if false you should navigate the user to the app's settings screen to grant permissions manually.
  static Future<bool> shouldRequestAndroidPermissions() {
    return RookSdkHealthConnectPlatform.instance
        .shouldRequestAndroidPermissions();
  }

  /// Request the following permissions:
  ///
  /// * POST_NOTIFICATIONS
  /// * ACTIVITY_RECOGNITION
  /// * FOREGROUND_SERVICE
  /// * FOREGROUND_SERVICE_HEALTH
  ///
  /// This method will configure, start and stop it's own activity,
  /// the result will be returned in [requestAndroidPermissionsUpdates].
  ///
  /// **Warning: Before calling this method you should call [shouldRequestAndroidPermissions]
  /// to check if Android will allow you to request permissions.**
  static Future<RequestPermissionsStatus> requestAndroidPermissions() {
    return RookSdkHealthConnectPlatform.instance.requestAndroidPermissions();
  }

  /// Listen to this stream to get updates of an Android permissions request.
  ///
  /// Example:
  ///
  /// ```dart
  /// // 1.- Create a stream subscription
  /// StreamSubscription<bool>? streamSubscription;
  ///
  /// // 2.- Listen to stream
  /// streamSubscription = HCRookHealthPermissionsManager.requestAndroidPermissionsUpdates.listen((permissionsSummary) {
  ///   // Updated your UI
  /// });
  ///
  /// // 3.- Request permissions
  /// try {
  ///   final requestPermissionsStatus = await HCRookHealthPermissionsManager.requestAndroidPermissions();
  ///
  ///   if (requestPermissionsStatus == RequestPermissionsStatus.alreadyGranted) {
  ///     // Permissions already granted, update your UI
  ///   } else {
  ///     // Wait for result in stream
  ///   }
  /// } catch (error) {
  ///   // Handle error
  /// }
  ///
  /// // 4.- Stop listening to the stream
  /// streamSubscription?.cancel();
  /// ```
  static Stream<AndroidPermissionsSummary>
      get requestAndroidPermissionsUpdates {
    return RookSdkHealthConnectPlatform
        .instance.requestAndroidPermissionsUpdates;
  }
}
