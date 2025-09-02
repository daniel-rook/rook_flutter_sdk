import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pbenum.dart';

extension SyncStatusMappers on SyncStatusProto {
  SyncStatus toDomain() {
    return switch (this) {
      SyncStatusProto.SYNCED => SyncStatus.synced,
      _ => SyncStatus.recordsNotFound,
    };
  }
}
