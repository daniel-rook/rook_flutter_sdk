import 'package:rook_sdk_core/src/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Apple Health SDK
/// * Samsung Health SDK
/// * Health Connect SDK
final class RecordsNotFoundException extends SDKException {
  const RecordsNotFoundException({required int code, required String message})
    : super(code: code, message: message);

  @override
  String toString() {
    return 'RecordsNotFoundException{code: $code, message: $message}';
  }
}
