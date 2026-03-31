import 'package:rook_sdk_core/src/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Apple Health SDK
/// * Samsung Health SDK
/// * Health Connect SDK
/// * Core SDK
final class SessionExpiredException extends SDKException {
  const SessionExpiredException({required int code, required String message})
    : super(code: code, message: message);

  @override
  String toString() {
    return 'SessionExpiredException{code: $code, message: $message}';
  }
}
