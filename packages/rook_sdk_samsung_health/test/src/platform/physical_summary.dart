import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/platform/rook_sdk_samsung_health_method_channel.dart';

import '../common/test_utils.dart';

void physicalSummaryTest(
  MethodChannelRookSdkSamsungHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkSamsungHealth | PhysicalSummaryResultProto synced unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final physicalSummary = PhysicalSummaryProto.create()
        ..dateTime = "2020-01-01T00:00:00Z"
        ..sourceOfData = "Test"
        ..wasTheUserUnderPhysicalActivity = false;

      final proto = PhysicalSummaryResultProto.create()
        ..synced = physicalSummary;

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
      'MethodChannelRookSdkSamsungHealth | PhysicalSummaryResultProto recordsNotFound unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final proto = PhysicalSummaryResultProto.create()..recordsNotFound = true;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN recordsNotFound WHEN getPhysicalSummary THEN return null",
      () async {
        final future = platform.getPhysicalSummary(DateTime.now());

        await expectLater(
          future,
          completion(
            predicate<PhysicalSummary?>((value) => value == null),
          ),
        );
      },
    );
  });

  group(
      'MethodChannelRookSdkSamsungHealth | PhysicalSummaryResultProto exception unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final failure = PluginExceptionProto.create()
        ..id = -1
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
