import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_availability_status.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

void healthConnectAvailabilityTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkHealthConnect | Health Connect Availability Success',
      () {
    mockMethodCall(channel, (_) async {
      return HealthConnectAvailabilityProto.INSTALLED.value;
    });

    test(
      'GIVEN the happy path WHEN checkHealthConnectAvailability THEN complete with expected value',
      () async {
        final future = platform.checkHealthConnectAvailability();

        await expectLater(future, completion(HCAvailabilityStatus.installed));
      },
    );
  });

  group(
      'MethodChannelRookSdkHealthConnect | Health Connect Availability Failure',
      () {
    mockMethodCall(channel, (_) async {
      throw Exception("Unknown error");
    });

    test(
      'GIVEN the unhappy path WHEN checkHealthConnectAvailability THEN throw exception',
      () async {
        final future = platform.checkHealthConnectAvailability();

        await expectLater(future, throwsException);
      },
    );
  });
}
