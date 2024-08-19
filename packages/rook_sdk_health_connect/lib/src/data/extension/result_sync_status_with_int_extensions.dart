import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/sync_status_with_data_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension ResultSyncStatusWithIntExtensions on ResultSyncStatusWithIntProto {
  SyncStatusWithData<int?> unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultSyncStatusWithIntProto_Result.syncStatusWithIntProto:
        return syncStatusWithIntProto.toDomain();
      case ResultSyncStatusWithIntProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
