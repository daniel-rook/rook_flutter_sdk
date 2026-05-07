import 'package:rook_sdk_core/src/domain/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Health Connect SDK
final class HealthConnectQuotaExceededException extends SDKException {
  const HealthConnectQuotaExceededException({
    required int code,
    required String message,
  }) : super(code: code, message: message);

  @override
  String toString() {
    return 'HealthConnectQuotaExceededException{code: $code, message: $message}';
  }
}
