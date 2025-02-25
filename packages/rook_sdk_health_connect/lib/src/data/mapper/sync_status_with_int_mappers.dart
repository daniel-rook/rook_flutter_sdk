import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/extension/int_extensions.dart';

extension SyncStatusWithIntMappers on SyncStatusWithIntProto {
  SyncStatusWithData<int?> toDomain() {
    if (syncStatus == SyncStatusProto.SYNCED) {
      return Synced(steps.checkNonDefault());
    } else {
      return RecordsNotFound.singleton;
    }
  }
}
