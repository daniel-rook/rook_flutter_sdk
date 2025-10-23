import 'package:rook_sdk_apple_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';

extension ResultSyncStatusWithIntResult on SyncStatusWithIntResultProto {
  int unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case SyncStatusWithIntResultProto_Result.success:
        return success;
      case SyncStatusWithIntResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
