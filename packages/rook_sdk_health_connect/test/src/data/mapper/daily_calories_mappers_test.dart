import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/daily_calories_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

void main() {
  group("DailyCaloriesProto to DailyCalories mappers tests", () {
    test(
      "GIVEN a DailyCaloriesProto WHEN toDomain THEN return the expected DailyCalories",
      () {
        final proto = DailyCaloriesProto.create()
          ..basal = 12.3
          ..active = 44.2;
        final result = proto.toDomain();

        expect(result.basal, 12.3);
        expect(result.active, 44.2);
      },
    );
  });
}
