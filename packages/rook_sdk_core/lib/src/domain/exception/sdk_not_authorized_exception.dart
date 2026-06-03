import 'package:rook_sdk_core/src/domain/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Apple Health SDK
/// * Samsung Health SDK
/// * Health Connect SDK
final class SDKNotAuthorizedException extends SDKException {
  const SDKNotAuthorizedException({required int code, required String message})
    : super(code: code, message: message);

  @override
  String toString() {
    return 'SDKNotAuthorizedException{code: $code, message: $message}';
  }
}
