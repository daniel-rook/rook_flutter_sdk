import 'package:rook_sdk_core/src/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Samsung Health SDK
final class HealthKitNotReadyException extends SDKException {
  const HealthKitNotReadyException({required int code, required String message})
    : super(code: code, message: message);

  @override
  String toString() {
    return 'HealthKitNotReadyException{code: $code, message: $message}';
  }
}
