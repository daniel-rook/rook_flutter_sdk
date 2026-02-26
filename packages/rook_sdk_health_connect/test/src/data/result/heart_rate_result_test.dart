import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/data/result/heart_rate_result.dart';

void main() {
  group("Mapper", () {
    test("GIVEN a HearRateProto WHEN toDomain THEN return a HearRate", () {
      final proto = HearRateProto.create()
        ..hrMaximumBpm = 1
        ..hrMinimumBpm = 2
        ..hrAvgBpm = 3
        ..hrRestingBpm = 4
        ..hrvAvgRmssd = 5
        ..hrvAvgSdnn = 6;
      final result = proto.toDomain();

      expect(result.hrMaximumBpm, 1);
      expect(result.hrMinimumBpm, 2);
      expect(result.hrAvgBpm, 3);
      expect(result.hrRestingBpm, 4);
      expect(result.hrGranularData, isEmpty);
      expect(result.hrvAvgRmssd, 5);
      expect(result.hrvAvgSdnn, 6);
      expect(result.hrvSdnnGranularData, isEmpty);
      expect(result.hrvRmssdGranularData, isEmpty);
    });
  });

  group("Result", () {
    test("GIVEN success WHEN unwrap THEN return a HearRate", () {
      final hearRateProto = HearRateProto.create()
        ..hrMaximumBpm = 1
        ..hrMinimumBpm = 2
        ..hrAvgBpm = 3
        ..hrRestingBpm = 4
        ..hrvAvgRmssd = 5
        ..hrvAvgSdnn = 6;
      final proto = HearRateResultProto.create();
      proto.success = hearRateProto;

      final result = proto.unwrap();

      expect(result.hrMaximumBpm, 1);
      expect(result.hrMinimumBpm, 2);
      expect(result.hrAvgBpm, 3);
      expect(result.hrRestingBpm, 4);
      expect(result.hrGranularData, isEmpty);
      expect(result.hrvAvgRmssd, 5);
      expect(result.hrvAvgSdnn, 6);
      expect(result.hrvSdnnGranularData, isEmpty);
      expect(result.hrvRmssdGranularData, isEmpty);
    });

    test("GIVEN failure WHEN unwrap THEN throw exception", () {
      final failure = SDKExceptionProto.create()
        ..message = "message"
        ..code = 500;

      final proto = HearRateResultProto.create()..failure = failure;

      expect(() => proto.unwrap(), throwsException);
    });
  });
}
