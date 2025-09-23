import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

void syncStatusWithCaloriesTest(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkHealthConnect | SyncStatusWithCaloriesResultProto value unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final caloriesProto = CaloriesProto.create()
        ..basal = 12.5
        ..active = 22.5;
      final proto = SyncStatusWithCaloriesResultProto.create();
      proto.success = SyncStatusWithCaloriesProto.create()
        ..syncStatus = SyncStatusProto.SYNCED
        ..calories = caloriesProto;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN success WHEN getTodayCaloriesCount THEN return a SyncStatusWithData<DailyCalories>",
      () async {
        final future = platform.getTodayCaloriesCount();

        await expectLater(
          future,
          completion(
            predicate<SyncStatusWithData<DailyCalories>>(
              (value) {
                final dailyCalories = (value as Synced<DailyCalories>).data;

                return dailyCalories.basal == 12.5 &&
                    dailyCalories.active == 22.5;
              },
            ),
          ),
        );
      },
    );
  });

  group(
      'MethodChannelRookSdkHealthConnect | SyncStatusWithCaloriesResultProto exception unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final failure = PluginExceptionProto.create()
        ..id = -1
        ..message = "message"
        ..code = 500;

      final proto = SyncStatusWithCaloriesResultProto.create()
        ..failure = failure;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN failure WHEN getTodayCaloriesCount THEN throw exception",
      () async {
        final future = platform.getTodayCaloriesCount();

        await expectLater(future, throwsException);
      },
    );
  });
}
