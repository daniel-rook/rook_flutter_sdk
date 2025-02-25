import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_sync_status_with_daily_calories_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

void main() {
  group('ResultSyncStatusWithDailyCaloriesProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final dailyCaloriesProto = DailyCaloriesProto.create()
        ..basal = 12.5
        ..active = 22.5;
      final proto = ResultSyncStatusWithDailyCaloriesProto.create();
      proto.syncStatusWithDailyCaloriesProto =
          SyncStatusWithDailyCaloriesProto.create()
            ..syncStatus = SyncStatusProto.SYNCED
            ..dailyCalories = dailyCaloriesProto;

      final result = proto.unwrap();

      expect(result, isA<Synced<DailyCalories>>());

      final dailyCalories = (result as Synced<DailyCalories>).data;

      expect(dailyCalories.basal, 12.5);
      expect(dailyCalories.active, 22.5);
    });
  });

  group('ResultSyncStatusWithDailyCaloriesProto exception', () {
    test(
      'GIVEN the unhappy path WHEN unwrap THEN throw an Exception',
      () {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultSyncStatusWithDailyCaloriesProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        expect(proto.unwrap, throwsA(isException));
      },
    );
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
