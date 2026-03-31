import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_method_channel.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

import '../common/test_utils.dart';

void activityEventTest(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
  group(
    'MethodChannelRookSdkAppleHealth | ActivityEventResultProto success unwrap',
    () {
      mockMethodCall(channel, (_) async {
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
          ..success = activityEvents;

        return proto.writeToBuffer();
      });

      test(
        "GIVEN synced WHEN getActivityEvents THEN return a list of ActivityEvent",
        () async {
          final future = platform.getActivityEvents(DateTime.now());

          await expectLater(
            future,
            completion(
              predicate<List<ActivityEvent>>((value) => value.length == 1),
            ),
          );
        },
      );
    },
  );

  group(
    'MethodChannelRookSdkAppleHealth | ActivityEventResultProto exception unwrap',
    () {
      mockMethodCall(channel, (_) async {
        final failure = SDKExceptionProto.create()
          ..message = "message"
          ..code = 500;

        final proto = ActivityEventResultProto.create()..failure = failure;

        return proto.writeToBuffer();
      });

      test(
        "GIVEN failure WHEN getActivityEvents THEN throw exception",
        () async {
          final future = platform.getActivityEvents(DateTime.now());

          await expectLater(future, throwsException);
        },
      );
    },
  );
}
