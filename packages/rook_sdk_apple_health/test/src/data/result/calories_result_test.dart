import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/data/result/calories_result.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

void main() {
  group("Mapper", () {
    test("GIVEN a CaloriesProto WHEN toDomain THEN return a DailyCalories", () {
      final proto = CaloriesProto.create()
        ..basal = 12.3
        ..active = 44.2;
      final result = proto.toDomain();

      expect(result.basal, 12.3);
      expect(result.active, 44.2);
    });
  });

  group("Result", () {
    test(
      "GIVEN success WHEN unwrap THEN return a SyncStatusWithData<DailyCalories>",
      () {
        final caloriesProto = CaloriesProto.create()
          ..basal = 12.5
          ..active = 22.5;
        final proto = CaloriesResultProto.create();
        proto.success = caloriesProto;

        final result = proto.unwrap();

        expect(result, isA<Synced<DailyCalories>>());

        final dailyCalories = (result as Synced<DailyCalories>).data;

        expect(dailyCalories.basal, 12.5);
        expect(dailyCalories.active, 22.5);
      },
    );

    test("GIVEN failure WHEN unwrap THEN throw exception", () {
      final failure = SDKExceptionProto.create()
        ..message = "message"
        ..code = 500;

      final proto = CaloriesResultProto.create()..failure = failure;

      expect(() => proto.unwrap(), throwsException);
    });
  });
}
