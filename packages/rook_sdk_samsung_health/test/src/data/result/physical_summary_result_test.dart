import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/data/result/physical_summary_result.dart';

void main() {
  group("Result", () {
    test(
      "GIVEN synced WHEN unwrap THEN return a PhysicalSummary",
      () {
        final physicalSummary = PhysicalSummaryProto.create()
          ..dateTime = "2020-01-01T00:00:00Z"
          ..sourceOfData = "Test"
          ..wasTheUserUnderPhysicalActivity = false;

        final proto = PhysicalSummaryResultProto.create()
          ..synced = physicalSummary;

        final result = proto.unwrap();

        expect(result, isNotNull);
      },
    );

    test(
      "GIVEN recordsNotFound WHEN unwrap THEN return an empty list",
      () {
        final proto = PhysicalSummaryResultProto.create()
          ..recordsNotFound = true;

        final result = proto.unwrap();

        expect(result, isNull);
      },
    );

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
      () {
        final failure = PluginExceptionProto.create()
          ..id = -1
          ..message = "message"
          ..code = 500;

        final proto = PhysicalSummaryResultProto.create()..failure = failure;

        expect(() => proto.unwrap(), throwsException);
      },
    );
  });
}
