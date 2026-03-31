import 'package:rook_sdk_core/src/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Apple Health SDK
/// * Samsung Health SDK
/// * Health Connect SDK
/// * Core SDK
final class ConnectTimeoutException extends SDKException {
  const ConnectTimeoutException({required int code, required String message})
    : super(code: code, message: message);

  @override
  String toString() {
    return 'ConnectTimeoutException{code: $code, message: $message}';
  }
}
