import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension BooleanResult on BooleanResultProto {
  bool unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case BooleanResultProto_Result.success:
        return success;
      case BooleanResultProto_Result.failure:
        final exception = SDKException.fromCode(
          code: failure.code,
          message: failure.message,
        );

        throw exception;
      default:
        throw Exception("Unknown error");
    }
  }
}
