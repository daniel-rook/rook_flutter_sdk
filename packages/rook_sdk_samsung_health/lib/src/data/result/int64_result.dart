import 'package:rook_sdk_samsung_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

extension Int64Result on Int64ResultProto {
  int unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case Int64ResultProto_Result.success:
        return success.toInt();
      case Int64ResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
