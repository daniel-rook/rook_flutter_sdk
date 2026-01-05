import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/data/result/activity_event_result.dart';

void main() {
  group("Result", () {
    test("GIVEN synced WHEN unwrap THEN return a list of ActivityEvent", () {
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

      final proto = ActivityEventResultProto.create()..success = activityEvents;

      final result = proto.unwrap();

      expect(result.length, 1);
    });

    test("GIVEN failure WHEN unwrap THEN throw exception", () {
      final failure = SDKExceptionProto.create()
        ..message = "message"
        ..code = 500;

      final proto = ActivityEventResultProto.create()..failure = failure;

      expect(() => proto.unwrap(), throwsException);
    });
  });
}
