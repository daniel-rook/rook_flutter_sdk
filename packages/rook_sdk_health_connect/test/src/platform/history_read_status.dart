import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_history_read_status.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

void historyReadStatusTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | HistoryReadStatus Success', () {
    mockMethodCall(channel, (_) async {
      final proto = HistoryReadStatusResultProto.create()
        ..success = HistoryReadStatusProto.HISTORY_UNAVAILABLE;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN success WHEN checkHistoryReadStatus THEN return a HCHistoryReadStatus",
      () async {
        final future = platform.checkHistoryReadStatus();

        await expectLater(future, completion(HCHistoryReadStatus.unavailable));
      },
    );
  });

  group('MethodChannelRookSdkHealthConnect | HistoryReadStatus Failure', () {
    mockMethodCall(channel, (_) async {
      final failure = SDKExceptionProto.create()
        ..message = "message"
        ..code = 500;

      final proto = HistoryReadStatusResultProto.create()..failure = failure;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN failure WHEN checkHistoryReadStatus THEN throw exception",
      () async {
        final future = platform.checkHistoryReadStatus();

        await expectLater(future, throwsException);
      },
    );
  });
}
