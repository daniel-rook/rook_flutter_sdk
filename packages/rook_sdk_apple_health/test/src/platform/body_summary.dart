import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_method_channel.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

import '../common/test_utils.dart';

void bodySummaryTest(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
  group(
    'MethodChannelRookSdkAppleHealth | BodySummaryResultProto success unwrap',
    () {
      mockMethodCall(channel, (_) async {
        final bodySummary = BodySummaryProto.create()
          ..dateTime = "2020-01-01T00:00:00Z"
          ..sourceOfData = "Test"
          ..wasTheUserUnderPhysicalActivity = true;

        final proto = BodySummaryResultProto.create()..success = bodySummary;

        return proto.writeToBuffer();
      });

      test(
        "GIVEN synced WHEN getBodySummary THEN return a BodySummary",
        () async {
          final future = platform.getBodySummary(DateTime.now());

          await expectLater(
            future,
            completion(predicate<BodySummary?>((value) => value != null)),
          );
        },
      );
    },
  );

  group(
    'MethodChannelRookSdkAppleHealth | BodySummaryResultProto exception unwrap',
    () {
      mockMethodCall(channel, (_) async {
        final failure = SDKExceptionProto.create()
          ..message = "message"
          ..code = 500;

        final proto = BodySummaryResultProto.create()..failure = failure;

        return proto.writeToBuffer();
      });

      test("GIVEN failure WHEN getBodySummary THEN throw exception", () async {
        final future = platform.getBodySummary(DateTime.now());

        await expectLater(future, throwsException);
      });
    },
  );
}
