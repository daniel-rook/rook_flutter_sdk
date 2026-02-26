import 'package:fixnum/fixnum.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_method_channel.dart';

import '../common/test_utils.dart';

void int64ResultTests(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkAppleHealth | ResultInt64Proto value unwrap', () {
    mockMethodCall(channel, (_) async {
      final proto = Int64ResultProto.create();
      proto.success = Int64(1000);

      return proto.writeToBuffer();
    });

    test(
      "GIVEN success WHEN getTodayStepsCount THEN return a SyncStatusWithData<int>",
      () async {
        final future = platform.getTodayStepsCount();

        await expectLater(
          future,
          completion(predicate<int>((steps) => steps == 1000)),
        );
      },
    );
  });

  group(
    'MethodChannelRookSdkAppleHealth | ResultInt64Proto exception unwrap',
    () {
      mockMethodCall(channel, (_) async {
        final failure = SDKExceptionProto.create()
          ..message = "message"
          ..code = 500;

        final proto = Int64ResultProto.create()..failure = failure;

        return proto.writeToBuffer();
      });

      test(
        "GIVEN failure WHEN getTodayStepsCount THEN throw exception",
        () async {
          final future = platform.getTodayStepsCount();

          await expectLater(future, throwsException);
        },
      );
    },
  );
}
