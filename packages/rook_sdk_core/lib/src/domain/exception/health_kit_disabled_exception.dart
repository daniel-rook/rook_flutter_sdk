import 'package:rook_sdk_core/src/domain/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Samsung Health SDK
final class HealthKitDisabledException extends SDKException {
  const HealthKitDisabledException({required int code, required String message})
    : super(code: code, message: message);

  @override
  String toString() {
    return 'HealthKitDisabledException{code: $code, message: $message}';
  }
}
