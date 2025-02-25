import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/sync_status_with_daily_calories_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

void main() {
  group('SyncStatusWithDailyCaloriesProto to SyncStatusWithData mappers', () {
    test(
      'GIVEN SyncStatusWithDailyCaloriesProto.SYNCED WHEN toDomain THEN return SyncStatusWithData.Synced',
      () {
        final dailyCaloriesProto = DailyCaloriesProto.create()
          ..basal = 12.5
          ..active = 22.5;
        final proto = SyncStatusWithDailyCaloriesProto.create()
          ..syncStatus = SyncStatusProto.SYNCED
          ..dailyCalories = dailyCaloriesProto;
        final result = proto.toDomain();

        expect(result, isA<Synced<DailyCalories>>());

        final dailyCalories = (result as Synced<DailyCalories>).data;

        expect(dailyCalories.basal, 12.5);
        expect(dailyCalories.active, 22.5);
      },
    );

    test(
      'GIVEN SyncStatusWithDailyCaloriesProto.RECORDS_NOT_FOUND WHEN toDomain THEN return SyncStatusWithData.RecordsNotFound',
      () {
        final proto = SyncStatusWithDailyCaloriesProto.create()
          ..syncStatus = SyncStatusProto.RECORDS_NOT_FOUND;
        final result = proto.toDomain();

        expect(result, isA<RecordsNotFound>());

        final recordsNotFound = result as RecordsNotFound;

        expect(recordsNotFound, RecordsNotFound.singleton);
      },
    );
  });
}
