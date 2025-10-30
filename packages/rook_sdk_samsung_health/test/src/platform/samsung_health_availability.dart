import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/samsung_health_availability.dart';
import 'package:rook_sdk_samsung_health/src/platform/rook_sdk_samsung_health_method_channel.dart';

import '../common/test_utils.dart';

void samsungHealthAvailabilityTests(
  MethodChannelRookSdkSamsungHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkSamsungHealth | Samsung Health Availability Success',
      () {
    mockMethodCall(channel, (_) async {
      return SamsungHealthAvailabilityProto.INSTALLED.value;
    });

    test(
      'GIVEN the happy path WHEN checkSamsungHealthAvailability THEN complete with expected value',
      () async {
        final future = platform.checkSamsungHealthAvailability();

        await expectLater(
            future, completion(SamsungHealthAvailability.installed));
      },
    );
  });

  group(
      'MethodChannelRookSdkSamsungHealth | Samsung Health Availability Failure',
      () {
    mockMethodCall(channel, (_) async {
      throw Exception("Unknown error");
    });

    test(
      'GIVEN the unhappy path WHEN checkSamsungHealthAvailability THEN throw exception',
      () async {
        final future = platform.checkSamsungHealthAvailability();

        await expectLater(future, throwsException);
      },
    );
  });
}
