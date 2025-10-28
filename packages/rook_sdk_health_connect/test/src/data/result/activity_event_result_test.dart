import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/data/result/activity_event_result.dart';

void main() {
  group("Result", () {
    test(
      "GIVEN synced WHEN unwrap THEN return a list of ActivityEvent",
      () {
        final activityEvent = ActivityEventProto.create()
          ..dateTime = "2020-01-01T00:00:00Z"
          ..sourceOfData = "Test"
          ..wasTheUserUnderPhysicalActivity = false
          ..activityStartDateTime = "2020-01-01T00:00:00Z"
          ..activityEndDateTime = "2020-01-01T00:00:00Z"
          ..activityDurationSeconds = 123
          ..activityTypeName = "Yoga";

        final activityEvents = ActivityEventsProto.create()
          ..elements.add(activityEvent);

        final proto = ActivityEventResultProto.create()
          ..synced = activityEvents;

        final result = proto.unwrap();

        expect(result.length, 1);
      },
    );

    test(
      "GIVEN recordsNotFound WHEN unwrap THEN return an empty list",
      () {
        final proto = ActivityEventResultProto.create()..recordsNotFound = true;

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

        final proto = ActivityEventResultProto.create()..failure = failure;

        expect(() => proto.unwrap(), throwsException);
      },
    );
  });
}
