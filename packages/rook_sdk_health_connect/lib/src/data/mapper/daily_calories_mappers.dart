import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension DailyCaloriesMappers on DailyCaloriesProto {
  DailyCalories toDomain() {
    return DailyCalories(basal: basal, active: active);
  }
}
