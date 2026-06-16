import 'package:rook_sdk_core/src/domain/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Samsung Health SDK
final class HealthKitNotAllowedException extends SDKException {
  const HealthKitNotAllowedException({
    required int code,
    required String message,
  }) : super(code: code, message: message);

  @override
  String toString() {
    return 'HealthKitNotAllowedException{code: $code, message: $message}';
  }
}
