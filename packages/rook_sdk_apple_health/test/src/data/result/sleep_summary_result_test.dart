import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/data/result/sleep_summary_result.dart';

void main() {
  group("Result", () {
    test(
      "GIVEN synced WHEN unwrap THEN return a list of SleepSummary",
      () {
        final sleepSummary = SleepSummaryProto.create()
          ..dateTime = "2020-01-01T00:00:00Z"
          ..sourceOfData = "Test"
          ..wasTheUserUnderPhysicalActivity = false
          ..sleepStartDateTime = "2020-01-01T00:00:00Z"
          ..sleepEndDateTime = "2020-01-01T00:00:00Z"
          ..sleepDate = "2020-01-01";

        final sleepSummaries = SleepSummariesProto.create()
          ..elements.add(sleepSummary);

        final proto = SleepSummaryResultProto.create()..synced = sleepSummaries;

        final result = proto.unwrap();

        expect(result.length, 1);
      },
    );

    test(
      "GIVEN recordsNotFound WHEN unwrap THEN return an empty list",
      () {
        final proto = SleepSummaryResultProto.create()..recordsNotFound = true;

        final result = proto.unwrap();

        expect(result.length, 0);
      },
    );

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
      () {
        final failure = PluginExceptionProto.create()
          ..id = -1
          ..message = "message"
          ..code = 500;

        final proto = SleepSummaryResultProto.create()..failure = failure;

        expect(() => proto.unwrap(), throwsException);
      },
    );
  });
}
