import 'package:rook_sdk_core/src/exception/sdk_exception.dart';

/// Thrown by:
///
/// * Samsung Health SDK
final class HealthKitOutdatedException extends SDKException {
  const HealthKitOutdatedException({required int code, required String message})
    : super(code: code, message: message);

  @override
  String toString() {
    return 'HealthKitOutdatedException{code: $code, message: $message}';
  }
}
