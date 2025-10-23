import 'package:rook_sdk_apple_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension ResultSyncStatusWithCaloriesResult
    on SyncStatusWithCaloriesResultProto {
  DailyCalories unwrap() {
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

extension CaloriesMapper on CaloriesProto {
  DailyCalories toDomain() {
    return DailyCalories(basal: basal, active: active);
  }
}
