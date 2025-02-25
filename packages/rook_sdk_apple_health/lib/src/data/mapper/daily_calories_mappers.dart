import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension DailyCaloriesMappers on DailyCaloriesProto {
  DailyCalories toDomain() {
    return DailyCalories(basal: basal, active: active);
  }
}
