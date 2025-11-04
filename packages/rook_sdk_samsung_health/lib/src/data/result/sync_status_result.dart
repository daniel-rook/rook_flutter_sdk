import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

extension ResultSyncStatusResult on SyncStatusResultProto {
  SyncStatus unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case SyncStatusResultProto_Result.success:
        return success.toDomain();
      case SyncStatusResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}

extension SyncStatusMapper on SyncStatusProto {
  SyncStatus toDomain() {
    return switch (this) {
      SyncStatusProto.SYNCED => SyncStatus.synced,
      SyncStatusProto.RECORDS_NOT_FOUND => SyncStatus.recordsNotFound,
      _ => throw Exception("Unknown sync status: $this"),
    };
  }
}
