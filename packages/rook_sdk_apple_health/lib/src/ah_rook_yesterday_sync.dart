import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

class AHRookYesterdaySync {
  /// Checks if the automatic upload of the summaries from the previous day is enabled.
  Future<bool> isYesterdaySyncEnabled() {
    return RookSdkAppleHealthPlatform.instance.isYesterdaySyncEnabled();
  }

  /// Enables the automatic upload of the summaries from the previous day of the current device's date.
  /// Every time the user opens the app it will try to upload the summaries,
  /// before use this method is necessary to add a user id and request permissions.
  Future<void> enableYesterdaySync(
    String clientUUID,
    String secretKey,
    RookEnvironment environment,
  ) {
    final rookConfiguration = RookConfiguration(
      clientUUID,
      secretKey,
      environment,
    );

    return RookSdkAppleHealthPlatform.instance.enableYesterdaySync(
      rookConfiguration,
    );
  }

  /// Disables the automatic upload of the summaries from the previous day of the current device's date.
  Future<void> disableYesterdaySync() {
    return RookSdkAppleHealthPlatform.instance.disableYesterdaySync();
  }
}
