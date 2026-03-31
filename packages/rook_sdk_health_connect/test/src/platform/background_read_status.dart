import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_background_read_status.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

void backgroundReadStatusTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | BackgroundReadStatus Success', () {
    mockMethodCall(channel, (_) async {
      final proto = BackgroundReadStatusResultProto.create()
        ..success = BackgroundReadStatusProto.UNAVAILABLE;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN success WHEN checkBackgroundReadStatus THEN return a HCBackgroundReadStatus",
      () async {
        final future = platform.checkBackgroundReadStatus();

        await expectLater(
          future,
          completion(HCBackgroundReadStatus.unavailable),
        );
      },
    );
  });

  group(
    'MethodChannelRookSdkHealthConnect | RequestPermissionsStatus Failure',
    () {
      mockMethodCall(channel, (_) async {
        final failure = SDKExceptionProto.create()
          ..message = "message"
          ..code = 500;

        final proto = BackgroundReadStatusResultProto.create()
          ..failure = failure;

        return proto.writeToBuffer();
      });

      test("GIVEN failure WHEN unwrap THEN throw exception", () async {
        final future = platform.checkBackgroundReadStatus();

        await expectLater(future, throwsException);
      });
    },
  );
}
