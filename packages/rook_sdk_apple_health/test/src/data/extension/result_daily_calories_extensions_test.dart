import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/extension/result_daily_calories_extensions.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';

void main() {
  group('ResultDailyCaloriesProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final dailyCaloriesProto = DailyCaloriesProto.create()
        ..basal = 12.5
        ..active = 22.5;
      final proto = ResultDailyCaloriesProto.create()
        ..dailyCalories = dailyCaloriesProto;

      final result = proto.unwrap();

      expect(result.basal, 12.5);
      expect(result.active, 22.5);
    });
  });

  group('ResultDailyCaloriesProto exception', () {
    test(
      'GIVEN the unhappy path WHEN unwrap THEN throw an Exception',
      () {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultDailyCaloriesProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        expect(proto.unwrap, throwsA(isException));
      },
    );
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
