import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/request_permissions_status_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension ResultRequestPermissionsStatusExtensions
    on ResultRequestPermissionsStatusProto {
  RequestPermissionsStatus unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultRequestPermissionsStatusProto_Result
            .requestPermissionsStatusProto:
        return requestPermissionsStatusProto.toDomain();
      case ResultRequestPermissionsStatusProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
