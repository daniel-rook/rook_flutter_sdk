import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

extension ResultSyncStatusWithIntResult on SyncStatusWithIntResultProto {
  SyncStatusWithData<int> unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case SyncStatusWithIntResultProto_Result.success:
        return success.toDomain();
      case SyncStatusWithIntResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}

extension SyncStatusWithIntMapper on SyncStatusWithIntProto {
  SyncStatusWithData<int> toDomain() {
    if (syncStatus == SyncStatusProto.SYNCED) {
      return Synced(value);
    } else {
      return RecordsNotFound.singleton;
    }
  }
}
