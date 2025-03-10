import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/daily_calories_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension SyncStatusWithDailyCaloriesProtoMappers
    on SyncStatusWithDailyCaloriesProto {
  SyncStatusWithData<DailyCalories> toDomain() {
    if (syncStatus == SyncStatusProto.SYNCED) {
      return Synced(dailyCalories.toDomain());
    } else {
      return RecordsNotFound.singleton;
    }
  }
}
