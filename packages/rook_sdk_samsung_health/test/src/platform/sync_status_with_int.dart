import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/platform/rook_sdk_samsung_health_method_channel.dart';

import '../common/test_utils.dart';

void syncStatusWithIntTest(
  MethodChannelRookSdkSamsungHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkSamsungHealth | SyncStatusWithIntResultProto value unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final proto = SyncStatusWithIntResultProto.create();
      proto.success = SyncStatusWithIntProto.create()
        ..syncStatus = SyncStatusProto.SYNCED
        ..value = 1;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN success WHEN getTodayStepsCount THEN return a SyncStatusWithData<int>",
      () async {
        final future = platform.getTodayStepsCount();

        await expectLater(
          future,
          completion(
            predicate<SyncStatusWithData<int?>>(
              (value) => (value as Synced<int?>).data == 1,
            ),
          ),
        );
      },
    );
  });

  group(
      'MethodChannelRookSdkSamsungHealth | SyncStatusWithIntResultProto exception unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final failure = PluginExceptionProto.create()
        ..id = -1
        ..message = "message"
        ..code = 500;

      final proto = SyncStatusWithIntResultProto.create()..failure = failure;

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
