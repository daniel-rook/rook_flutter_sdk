import 'package:rook_sdk_core/src/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Health Connect SDK
final class HealthKitNotSupportedException extends SDKException {
  const HealthKitNotSupportedException({
    required int code,
    required String message,
  }) : super(code: code, message: message);

  @override
  String toString() {
    return 'HealthKitNotSupportedException{code: $code, message: $message}';
  }
}
