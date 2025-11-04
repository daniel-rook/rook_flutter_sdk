import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/data/result/body_summary_result.dart';

void main() {
  group("Result", () {
    test(
      "GIVEN synced WHEN unwrap THEN return a BodySummary",
      () {
        final bodySummary = BodySummaryProto.create()
          ..dateTime = "2020-01-01T00:00:00Z"
          ..sourceOfData = "Test"
          ..wasTheUserUnderPhysicalActivity = true;

        final proto = BodySummaryResultProto.create()..synced = bodySummary;

        final result = proto.unwrap();

        expect(result, isNotNull);
      },
    );

    test(
      "GIVEN recordsNotFound WHEN unwrap THEN return an empty list",
      () {
        final proto = BodySummaryResultProto.create()..recordsNotFound = true;

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

        final proto = BodySummaryResultProto.create()..failure = failure;

        expect(() => proto.unwrap(), throwsException);
      },
    );
  });
}
