import 'package:rook_sdk_core/src/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Apple Health SDK
/// * Samsung Health SDK
/// * Health Connect SDK
final class MissingPermissionsException extends SDKException {
  const MissingPermissionsException({
    required int code,
    required String message,
  }) : super(code: code, message: message);

  @override
  String toString() {
    return 'MissingPermissionsException{code: $code, message: $message}';
  }
}
