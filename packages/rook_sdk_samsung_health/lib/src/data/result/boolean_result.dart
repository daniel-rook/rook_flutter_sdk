import 'package:rook_sdk_samsung_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

extension BooleanResult on BooleanResultProto {
  bool unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case BooleanResultProto_Result.success:
        return success;
      case BooleanResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
