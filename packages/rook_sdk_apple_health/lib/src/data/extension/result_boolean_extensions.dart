import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension ResultBooleanExtensions on ResultBooleanProto {
  bool unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultBooleanProto_Result.success:
        return success;
      case ResultBooleanProto_Result.missingConfigurationExceptionProto:
        throw MissingConfigurationException(
          missingConfigurationExceptionProto.message,
        );
      case ResultBooleanProto_Result.genericExceptionProto:
        throw Exception(
          genericExceptionProto.message,
        );
      default:
        throw Exception("Unknown error");
    }
  }
}
