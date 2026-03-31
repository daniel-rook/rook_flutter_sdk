import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_method_channel.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

import '../common/test_utils.dart';

void caloriesTest(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkAppleHealth | CaloriesResultProto value unwrap', () {
    mockMethodCall(channel, (_) async {
      final caloriesProto = CaloriesProto.create()
        ..basal = 12.5
        ..active = 22.5;
      final proto = CaloriesResultProto.create();
      proto.success = caloriesProto;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN success WHEN getTodayCaloriesCount THEN return a Data<DailyCalories>",
      () async {
        final future = platform.getTodayCaloriesCount();

        await expectLater(
          future,
          completion(
            predicate<DailyCalories>((dailyCalories) {
              return dailyCalories.basal == 12.5 &&
                  dailyCalories.active == 22.5;
            }),
          ),
        );
      },
    );
  });

  group(
    'MethodChannelRookSdkAppleHealth | CaloriesResultProto exception unwrap',
    () {
      mockMethodCall(channel, (_) async {
        final failure = SDKExceptionProto.create()
          ..message = "message"
          ..code = 500;

        final proto = CaloriesResultProto.create()..failure = failure;

        return proto.writeToBuffer();
      });

      test(
        "GIVEN failure WHEN getTodayCaloriesCount THEN throw exception",
        () async {
          final future = platform.getTodayCaloriesCount();

          await expectLater(future, throwsException);
        },
      );
    },
  );
}
