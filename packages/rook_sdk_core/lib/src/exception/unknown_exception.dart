import 'package:rook_sdk_core/src/exception/sdk_exception.dart';
import 'package:rook_sdk_core/src/exception/sdk_exception_code.dart';

final class UnknownException extends SDKException {
  const UnknownException({required String message})
    : super(code: SDKExceptionCode.unknown, message: message);

  @override
  String toString() {
    return 'UnknownException{code: $code, message: $message}';
  }
}
