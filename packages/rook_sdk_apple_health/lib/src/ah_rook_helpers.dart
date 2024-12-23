import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';

/// Helper functions for Rook SDK.
class AHRookHelpers {
  AHRookHelpers._();

  /// Listen to this stream to get updates of errors from [AHRookBackgroundSync].
  ///
  /// Example:
  ///
  /// ```dart
  /// // 1.- Create a stream subscription
  /// StreamSubscription<Exception>? streamSubscription;
  ///
  /// // 2.- Listen to stream
  /// streamSubscription = AHRookHelpers.backgroundErrorsUpdates.listen((backgroundError) {
  ///   // Process error
  /// });
  ///
  /// // 3.- Stop listening to the stream
  /// streamSubscription?.cancel();
  /// ```
  static Stream<Exception> get backgroundErrorsUpdates {
    return RookSdkAppleHealthPlatform.instance.backgroundErrorsUpdates;
  }
}
