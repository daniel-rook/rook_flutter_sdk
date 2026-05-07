import 'package:rook_sdk_core/src/domain/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Apple Health SDK
/// * Samsung Health SDK
/// * Health Connect SDK
final class SDKNotInitializedException extends SDKException {
  const SDKNotInitializedException({required int code, required String message})
    : super(code: code, message: message);

  @override
  String toString() {
    return 'MissingConfigurationException{code: $code, message: $message}';
  }
}
