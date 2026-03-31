import 'package:rook_sdk_core/src/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Apple Health SDK
/// * Samsung Health SDK
/// * Health Connect SDK
/// * Core SDK
final class HttpRequestException extends SDKException {
  const HttpRequestException({required int code, required String message})
    : super(code: code, message: message);

  @override
  String toString() {
    return 'HttpRequestException{code: $code, message: $message}';
  }
}
