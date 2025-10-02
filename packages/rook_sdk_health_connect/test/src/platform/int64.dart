import 'package:fixnum/fixnum.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

void int64ResultTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | ResultInt64Proto value unwrap',
      () {
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
  });

  group('MethodChannelRookSdkHealthConnect | ResultInt64Proto exception unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final failure = PluginExceptionProto.create()
        ..id = -1
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
  });
}
