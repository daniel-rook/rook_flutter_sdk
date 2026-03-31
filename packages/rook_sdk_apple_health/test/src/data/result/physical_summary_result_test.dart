import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/data/result/physical_summary_result.dart';

void main() {
  group("Result", () {
    test("GIVEN synced WHEN unwrap THEN return a PhysicalSummary", () {
      final physicalSummary = PhysicalSummaryProto.create()
        ..dateTime = "2020-01-01T00:00:00Z"
        ..sourceOfData = "Test"
        ..wasTheUserUnderPhysicalActivity = false;

      final proto = PhysicalSummaryResultProto.create()
        ..success = physicalSummary;

      final result = proto.unwrap();

      expect(result, isNotNull);
    });

    test("GIVEN failure WHEN unwrap THEN throw exception", () {
      final failure = SDKExceptionProto.create()
        ..message = "message"
        ..code = 500;

      final proto = PhysicalSummaryResultProto.create()..failure = failure;

      expect(() => proto.unwrap(), throwsException);
    });
  });
}
