import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

/// This class allows you to schedule an immediate health data synchronization.
class HCRookYesterdaySyncManager {
  HCRookYesterdaySyncManager._();

  /// Schedules an immediate health data synchronization.
  ///
  /// **WARNING:**
  ///
  /// [scheduleYesterdaySync] is intended to be called once in your app, preferably once the user has opened the app
  /// as part of the application initialization phase. Also this MUST NOT be used if you are already using the [rookYesterdaySync] delegate with the native implementation.
  ///
  /// **IMPORTANT:**
  ///
  /// Before calling [scheduleYesterdaySync] verify that your app has all necessary permissions
  /// granted, [scheduleYesterdaySync] requires Android & Health Connect permissions.
  /// You can use [HCRookHealthPermissionsManager] utility functions to easily check and request both types of permissions.
  ///
  /// [scheduleYesterdaySync] Also requires a user id ([HCRookConfigurationManager.updateUserID]),
  /// so it's possible that the first time you launch your app nothing will happen,
  /// only after a user id is configured and all necessary permissions are granted the automatic sync will happen
  /// the next time the app is launched.
  ///
  /// * [enableLogs] See the logs generated by this SDK.
  /// * [clientUUID] Client unique identifier provided by ROOK.
  /// * [secretKey] Client secretKey provided by ROOK.
  /// * [environment] Behaviour configuration.
  ///
  /// **WARNING:**
  ///
  /// Is possible that all days won't be synced, that's because Google imposes a limit on the number of request your app can made to the Health Connect API.
  /// This SDK will attempt to get as much data as possible and when the limit is meet all further attempts will be stopped
  /// until the user re-opens the app after a few hours.
  static Future<void> scheduleYesterdaySync(
      {required bool enableNativeLogs,
      required String clientUUID,
      required String secretKey,
      required RookEnvironment environment}) {
    return RookSdkHealthConnectPlatform.instance.scheduleYesterdaySync(
      enableNativeLogs,
      clientUUID,
      secretKey,
      environment,
    );
  }
}
