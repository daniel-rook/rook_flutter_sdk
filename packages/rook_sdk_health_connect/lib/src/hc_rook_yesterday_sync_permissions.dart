import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

@Deprecated(
  "Methods from HCRookHealthPermissionsManager offer better functionality.",
)
class HCRookYesterdaySyncPermissions {
  HCRookYesterdaySyncPermissions._();

  /// Checks if the required Android permissions for RookYesterdaySync have been granted.
  ///
  /// ```text
  /// Android permissions:
  ///
  /// • POST_NOTIFICATIONS (API Level 33+)
  /// • FOREGROUND_SERVICE (API Level 28+)
  /// • FOREGROUND_SERVICE_HEALTH (API Level 34+)
  /// ```
  ///
  /// @return True if the permissions are granted, false otherwise.
  @Deprecated(
    "Replace with HCRookHealthPermissionsManager.checkAndroidPermissions",
  )
  static Future<bool> hasAndroidPermissions() {
    return RookSdkHealthConnectPlatform.instance
        .hasYesterdaySyncAndroidPermissions();
  }

  /// Requests the necessary Android permissions for RookYesterdaySync.
  ///
  /// ```text
  /// Android permissions:
  ///
  /// • POST_NOTIFICATIONS (API Level 33+)
  /// • FOREGROUND_SERVICE (API Level 28+)
  /// • FOREGROUND_SERVICE_HEALTH (API Level 34+)
  /// ```
  @Deprecated(
    "Replace with HCRookHealthPermissionsManager.requestAndroidPermissions",
  )
  static Future<void> requestAndroidPermissions() {
    return RookSdkHealthConnectPlatform.instance
        .requestYesterdaySyncAndroidPermissions();
  }

  /// Checks if the required Health Connect permissions for RookYesterdaySync have been granted.
  ///
  /// ```text
  /// Health Connect permissions:
  ///
  /// • SLEEP
  /// • PHYSICAL
  /// • BODY
  /// ```
  ///
  /// @return True if the permissions are granted, false otherwise.
  @Deprecated(
    "Replace with HCRookHealthPermissionsManager.checkHealthConnectPermissions",
  )
  static Future<bool> hasHealthConnectPermissions() {
    return RookSdkHealthConnectPlatform.instance
        .hasYesterdaySyncHealthConnectPermissions();
  }

  /// Requests the necessary Health Connect permissions for RookYesterdaySync.
  ///
  /// ```text
  /// Health Connect permissions:
  ///
  /// • SLEEP
  /// • PHYSICAL
  /// • BODY
  /// ```
  @Deprecated(
    "Replace with HCRookHealthPermissionsManager.requestHealthConnectPermissions",
  )
  static Future<void> requestHealthConnectPermissions() {
    return RookSdkHealthConnectPlatform.instance
        .requestYesterdaySyncHealthConnectPermissions();
  }
}
