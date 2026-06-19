import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

void requestPermissionsStatusTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | RequestPermissionsStatus Success', () {
    mockMethodCall(channel, (_) async {
      final proto = RequestPermissionsStatusResultProto()
        ..success = RequestPermissionsStatusProto.REQUEST_SENT;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN success WHEN requestHealthConnectPermissions THEN return a RequestPermissionsStatus",
      () async {
        final future = platform.requestHealthConnectPermissions();

        await expectLater(
          future,
          completion(RequestPermissionsStatus.requestSent),
        );
      },
    );

    test(
      "GIVEN success WHEN requestAndroidPermissions THEN return a RequestPermissionsStatus",
      () async {
        final future = platform.requestAndroidPermissions();

        await expectLater(
          future,
          completion(RequestPermissionsStatus.requestSent),
        );
      },
    );

    test(
      "GIVEN success WHEN requestExactAlarmPermissions THEN return a RequestPermissionsStatus",
      () async {
        final future = platform.requestExactAlarmPermissions();

        await expectLater(
          future,
          completion(RequestPermissionsStatus.requestSent),
        );
      },
    );

    test(
      "GIVEN success WHEN requestDisableBatteryOptimizations THEN return a RequestPermissionsStatus",
      () async {
        final future = platform.requestDisableBatteryOptimizations();

        await expectLater(
          future,
          completion(RequestPermissionsStatus.requestSent),
        );
      },
    );

    test(
      "GIVEN success WHEN openOemAutoStartSetup THEN return a RequestPermissionsStatus",
      () async {
        final future = platform.openOemAutoStartSetup();

        await expectLater(
          future,
          completion(RequestPermissionsStatus.requestSent),
        );
      },
    );
  });

  group('MethodChannelRookSdkHealthConnect | RequestPermissionsStatus Failure', () {
    mockMethodCall(channel, (_) async {
      final failure = SDKExceptionProto.create()
        ..message = "message"
        ..code = 500;

      final proto = RequestPermissionsStatusResultProto.create()
        ..failure = failure;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN failure WHEN requestHealthConnectPermissions THEN throw exception",
      () async {
        final future = platform.requestHealthConnectPermissions();

        await expectLater(future, throwsException);
      },
    );

    test(
      "GIVEN failure WHEN requestAndroidPermissions THEN throw exception",
      () async {
        final future = platform.requestAndroidPermissions();

        await expectLater(future, throwsException);
      },
    );

    test(
      "GIVEN failure WHEN requestExactAlarmPermissions THEN throw exception",
      () async {
        final future = platform.requestExactAlarmPermissions();

        await expectLater(future, throwsException);
      },
    );

    test(
      "GIVEN failure WHEN requestDisableBatteryOptimizations THEN throw exception",
      () async {
        final future = platform.requestDisableBatteryOptimizations();

        await expectLater(future, throwsException);
      },
    );

    test(
      "GIVEN failure WHEN openOemAutoStartSetup THEN throw exception",
      () async {
        final future = platform.openOemAutoStartSetup();

        await expectLater(future, throwsException);
      },
    );
  });
}
