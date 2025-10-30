import 'package:rook_sdk_apple_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';

extension IntResult on IntResultProto {
  int unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case IntResultProto_Result.success:
        return success;
      case IntResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
