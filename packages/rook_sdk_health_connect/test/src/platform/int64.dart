import 'package:fixnum/fixnum.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package

void int64ResultTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | ResultInt64Proto value unwrap', () {
    mockMethodCall(channel, (_) async {
      final proto = Int64ResultProto.create();
      proto.success = Int64(1000);

      return proto.writeToBuffer();
    });

    test(
      'GIVEN a Result.value WHEN syncTodayAndroidStepsCount THEN complete with expected value',
      () async {
        final future = platform.syncTodayAndroidStepsCount();

        await expectLater(future, completion(1000));
      },
    );

    test(
      'GIVEN a Result.value WHEN getTodayStepsCounterCount THEN complete with expected value',
      () async {
        final future = platform.getTodayStepsCounterCount();

        await expectLater(future, completion(1000));
      },
    );

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
    'MethodChannelRookSdkHealthConnect | ResultInt64Proto exception unwrap',
    () {
      mockMethodCall(channel, (_) async {
        final failure = SDKExceptionProto.create()
          ..message = "message"
          ..code = 500;

        final proto = Int64ResultProto.create()..failure = failure;

        return proto.writeToBuffer();
      });

      test(
        'GIVEN the unhappy path WHEN syncTodayAndroidStepsCount THEN throw exception',
        () async {
          final future = platform.syncTodayAndroidStepsCount();

          await expectLater(future, throwsException);
        },
      );

      test(
        'GIVEN the unhappy path WHEN getTodayStepsCounterCount THEN throw exception',
        () async {
          final future = platform.getTodayStepsCounterCount();

          await expectLater(future, throwsException);
        },
      );

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
