import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_method_channel.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

import '../common/test_utils.dart';

void physicalSummaryTest(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkAppleHealth | PhysicalSummaryResultProto success unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final physicalSummary = PhysicalSummaryProto.create()
        ..dateTime = "2020-01-01T00:00:00Z"
        ..sourceOfData = "Test"
        ..wasTheUserUnderPhysicalActivity = false;

      final proto = PhysicalSummaryResultProto.create()
        ..success = physicalSummary;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN synced WHEN getPhysicalSummary THEN return a PhysicalSummary",
      () async {
        final future = platform.getPhysicalSummary(DateTime.now());

        await expectLater(
          future,
          completion(
            predicate<PhysicalSummary?>((value) => value != null),
          ),
        );
      },
    );
  });

  group(
      'MethodChannelRookSdkAppleHealth | PhysicalSummaryResultProto exception unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final failure = SDKExceptionProto.create()
        ..message = "message"
        ..code = 500;

      final proto = PhysicalSummaryResultProto.create()..failure = failure;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN failure WHEN getPhysicalSummary THEN throw exception",
      () async {
        final future = platform.getPhysicalSummary(DateTime.now());

        await expectLater(future, throwsException);
      },
    );
  });
}
