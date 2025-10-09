import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

extension ResultSyncStatusWithCaloriesResult
    on SyncStatusWithCaloriesResultProto {
  SyncStatusWithData<DailyCalories> unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case SyncStatusWithCaloriesResultProto_Result.success:
        return success.toDomain();
      case SyncStatusWithCaloriesResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}

extension SyncStatusWithCaloriesProtoMapper on SyncStatusWithCaloriesProto {
  SyncStatusWithData<DailyCalories> toDomain() {
    if (syncStatus == SyncStatusProto.SYNCED) {
      return Synced(calories.toDomain());
    } else {
      return RecordsNotFound.singleton;
    }
  }
}

extension CaloriesMapper on CaloriesProto {
  DailyCalories toDomain() {
    return DailyCalories(basal: basal, active: active);
  }
}
