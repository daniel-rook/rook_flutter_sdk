import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

void heartRateTest(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
    'MethodChannelRookSdkHealthConnect | HearRateResultProto value unwrap',
    () {
      mockMethodCall(channel, (_) async {
        final hearRateProto = HearRateProto.create()
          ..hrMaximumBpm = 1
          ..hrMinimumBpm = 2
          ..hrAvgBpm = 3
          ..hrRestingBpm = 4
          ..hrvAvgRmssd = 5
          ..hrvAvgSdnn = 6;
        final proto = HearRateResultProto.create();
        proto.success = hearRateProto;

        return proto.writeToBuffer();
      });

      test(
        "GIVEN success WHEN getTodayHeartRate THEN return a HeartRate",
        () async {
          final future = platform.getTodayHeartRate();

          await expectLater(
            future,
            completion(
              predicate<HeartRate>((heartRate) {
                return heartRate.hrMaximumBpm == 1 &&
                    heartRate.hrMinimumBpm == 2 &&
                    heartRate.hrAvgBpm == 3 &&
                    heartRate.hrRestingBpm == 4 &&
                    heartRate.hrvAvgRmssd == 5 &&
                    heartRate.hrvAvgSdnn == 6;
              }),
            ),
          );
        },
      );
    },
  );

  group(
    'MethodChannelRookSdkHealthConnect | HearRateResultProto exception unwrap',
    () {
      mockMethodCall(channel, (_) async {
        final failure = SDKExceptionProto.create()
          ..message = "message"
          ..code = 500;

        final proto = HearRateResultProto.create()..failure = failure;

        return proto.writeToBuffer();
      });

      test(
        "GIVEN failure WHEN getTodayHeartRate THEN throw exception",
        () async {
          final future = platform.getTodayHeartRate();

          await expectLater(future, throwsException);
        },
      );
    },
  );
}
