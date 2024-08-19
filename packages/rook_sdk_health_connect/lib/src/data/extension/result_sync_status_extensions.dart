import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/sync_status_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension ResultSyncStatusExtensions on ResultSyncStatusProto {
  SyncStatus unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultSyncStatusProto_Result.syncStatusProto:
        return syncStatusProto.toDomain();
      case ResultSyncStatusProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
