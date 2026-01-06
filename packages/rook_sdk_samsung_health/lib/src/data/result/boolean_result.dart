import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

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
