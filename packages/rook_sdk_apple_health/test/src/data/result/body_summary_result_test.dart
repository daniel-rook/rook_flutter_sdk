import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/data/result/body_summary_result.dart';

void main() {
  group("Result", () {
    test(
      "GIVEN synced WHEN unwrap THEN return a BodySummary",
      () {
        final bodySummary = BodySummaryProto.create()
          ..dateTime = "2020-01-01T00:00:00Z"
          ..sourceOfData = "Test"
          ..wasTheUserUnderPhysicalActivity = true;

        final proto = BodySummaryResultProto.create()..success = bodySummary;

        final result = proto.unwrap();

        expect(result, isNotNull);
      },
    );

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
      () {
        final failure = SDKExceptionProto.create()
          ..message = "message"
          ..code = 500;

        final proto = BodySummaryResultProto.create()..failure = failure;

        expect(() => proto.unwrap(), throwsException);
      },
    );
  });
}
