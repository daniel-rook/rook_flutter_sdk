import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

class AHRookContinuousUpload {
  /// Checks if the continuous upload of summaries and events is enabled.
  Future<bool> isContinuousUploadEnabled() {
    return RookSdkAppleHealthPlatform.instance.isContinuousUploadEnabled();
  }

  /// Enables the continuous upload of summaries and events.
  /// Every time the user opens the app it will try to upload the summaries,
  /// before use this method is necessary to add a user id and request permissions.
  Future<void> enableContinuousUpload(
    String clientUUID,
    String secretKey,
    RookEnvironment environment,
  ) {
    final rookConfiguration = RookConfiguration(
      clientUUID,
      secretKey,
      environment,
    );

    return RookSdkAppleHealthPlatform.instance.enableContinuousUpload(
      rookConfiguration,
    );
  }

  /// Disables the continuous upload of summaries and events.
  Future<void> disableContinuousUpload() {
    return RookSdkAppleHealthPlatform.instance.disableContinuousUpload();
  }
}
