import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

class AHRookBackgroundSync {
  /// Enables the background upload of the summaries.
  Future<void> enableBackGroundForSummaries(
    String clientUUID,
    String secretKey,
    RookEnvironment environment,
  ) {
    final rookConfiguration = RookConfiguration(
      clientUUID,
      secretKey,
      environment,
    );

    return RookSdkAppleHealthPlatform.instance.enableBackGroundForSummaries(
      rookConfiguration,
    );
  }

  /// Disables the background upload of the summaries.
  Future<void> disableBackGroundForSummaries() {
    return RookSdkAppleHealthPlatform.instance.disableBackGroundForSummaries();
  }
}
