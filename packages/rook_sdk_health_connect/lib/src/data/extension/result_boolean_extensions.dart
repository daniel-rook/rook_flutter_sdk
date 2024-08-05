import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension ResultBooleanExtensions on ResultBooleanProto {
  bool unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultBooleanProto_Result.success:
        return success;
      case ResultBooleanProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
