import 'package:rook_sdk_apple_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension CaloriesResult on CaloriesResultProto {
  DailyCalories unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case CaloriesResultProto_Result.success:
        return success.toDomain();
      case CaloriesResultProto_Result.failure:
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
