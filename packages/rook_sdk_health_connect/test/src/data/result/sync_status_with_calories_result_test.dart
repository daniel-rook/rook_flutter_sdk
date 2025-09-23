import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/data/result/sync_status_with_calories_result.dart';

void main() {
  group("Mapper", () {
    test(
      "GIVEN a CaloriesProto WHEN toDomain THEN return a DailyCalories",
      () {
        final proto = CaloriesProto.create()
          ..basal = 12.3
          ..active = 44.2;
        final result = proto.toDomain();

        expect(result.basal, 12.3);
        expect(result.active, 44.2);
      },
    );

    test(
      'GIVEN SyncStatusWithCaloriesProto.SYNCED WHEN toDomain THEN return SyncStatusWithData.Synced',
      () {
        final caloriesProto = CaloriesProto.create()
          ..basal = 12.5
          ..active = 22.5;
        final proto = SyncStatusWithCaloriesProto.create()
          ..syncStatus = SyncStatusProto.SYNCED
          ..calories = caloriesProto;
        final result = proto.toDomain();

        expect(result, isA<Synced<DailyCalories>>());

        final dailyCalories = (result as Synced<DailyCalories>).data;

        expect(dailyCalories.basal, 12.5);
        expect(dailyCalories.active, 22.5);
      },
    );

    test(
      'GIVEN SyncStatusWithCaloriesProto.RECORDS_NOT_FOUND WHEN toDomain THEN return SyncStatusWithData.RecordsNotFound',
      () {
        final proto = SyncStatusWithCaloriesProto.create()
          ..syncStatus = SyncStatusProto.RECORDS_NOT_FOUND;
        final result = proto.toDomain();

        expect(result, isA<RecordsNotFound>());

        final recordsNotFound = result as RecordsNotFound;

        expect(recordsNotFound, RecordsNotFound.singleton);
      },
    );
  });

  group("Result", () {
    test(
      "GIVEN success WHEN unwrap THEN return a SyncStatusWithData<DailyCalories>",
      () {
        final caloriesProto = CaloriesProto.create()
          ..basal = 12.5
          ..active = 22.5;
        final proto = SyncStatusWithCaloriesResultProto.create();
        proto.success = SyncStatusWithCaloriesProto.create()
          ..syncStatus = SyncStatusProto.SYNCED
          ..calories = caloriesProto;

        final result = proto.unwrap();

        expect(result, isA<Synced<DailyCalories>>());

        final dailyCalories = (result as Synced<DailyCalories>).data;

        expect(dailyCalories.basal, 12.5);
        expect(dailyCalories.active, 22.5);
      },
    );

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
      () {
        final failure = PluginExceptionProto.create()
          ..id = -1
          ..message = "message"
          ..code = 500;

        final proto = SyncStatusWithCaloriesResultProto.create()
          ..failure = failure;

        expect(() => proto.unwrap(), throwsException);
      },
    );
  });
}
