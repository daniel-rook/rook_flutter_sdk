import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension Int64Result on Int64ResultProto {
  int unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case Int64ResultProto_Result.success:
        return success.toInt();
      case Int64ResultProto_Result.failure:
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
