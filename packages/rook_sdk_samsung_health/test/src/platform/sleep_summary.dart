import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/platform/rook_sdk_samsung_health_method_channel.dart';

import '../common/test_utils.dart';

void sleepSummaryTest(
  MethodChannelRookSdkSamsungHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkSamsungHealth | SleepSummaryResultProto synced unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final sleepSummary = SleepSummaryProto.create()
        ..dateTime = "2020-01-01T00:00:00Z"
        ..sourceOfData = "Test"
        ..wasTheUserUnderPhysicalActivity = false
        ..sleepStartDateTime = "2020-01-01T00:00:00Z"
        ..sleepEndDateTime = "2020-01-01T00:00:00Z"
        ..sleepDate = "2020-01-01";

      final sleepSummaries = SleepSummariesProto.create()
        ..elements.add(sleepSummary);

      final proto = SleepSummaryResultProto.create()..success = sleepSummaries;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN synced WHEN getSleepSummary THEN return a list of SleepSummary",
      () async {
        final future = platform.getSleepSummary(DateTime.now());

        await expectLater(
          future,
          completion(
            predicate<List<SleepSummary>>((value) => value.length == 1),
          ),
        );
      },
    );
  });

  group(
      'MethodChannelRookSdkSamsungHealth | SleepSummaryResultProto exception unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final failure = SDKExceptionProto.create()
        ..message = "message"
        ..code = 500;

      final proto = SleepSummaryResultProto.create()..failure = failure;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN failure WHEN getSleepSummary THEN throw exception",
      () async {
        final future = platform.getSleepSummary(DateTime.now());

        await expectLater(future, throwsException);
      },
    );
  });
}
