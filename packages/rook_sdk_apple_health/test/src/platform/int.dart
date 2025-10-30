import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_method_channel.dart';

import '../common/test_utils.dart';

void intTests(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkAppleHealth | SyncStatusWithIntResultProto value unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final proto = IntResultProto.create()..success = 1;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN success WHEN getTodayStepsCount THEN return a SyncStatusWithData<int>",
      () async {
        final future = platform.getTodayStepsCount();

        await expectLater(
          future,
          completion(
            predicate<int?>(
              (value) {
                return value != null && value == 1;
              },
            ),
          ),
        );
      },
    );
  });

  group(
      'MethodChannelRookSdkAppleHealth | SyncStatusWithIntResultProto exception unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final failure = PluginExceptionProto.create()
        ..id = -1
        ..message = "message"
        ..code = 500;

      final proto = IntResultProto.create()..failure = failure;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN failure WHEN getTodayStepsCount THEN throw exception",
      () async {
        final future = platform.getTodayStepsCount();

        await expectLater(future, throwsException);
      },
    );
  });
}
