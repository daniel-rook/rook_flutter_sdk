import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

void stringTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | String Success', () {
    mockMethodCall(channel, (_) async {
      return 'RookUser';
    });

    test(
      'GIVEN the happy path WHEN getUserID THEN complete with expected value',
      () async {
        final future = platform.getUserID();

        await expectLater(future, completion('RookUser'));
      },
    );
  });

  group('MethodChannelRookSdkHealthConnect | String null', () {
    mockMethodCall(channel, (_) async {
      return null;
    });

    test(
      'GIVEN a null String WHEN getUserID THEN complete with expected value',
      () async {
        final future = platform.getUserID();

        await expectLater(future, completion(null));
      },
    );
  });

  group('MethodChannelRookSdkHealthConnect | String Failure', () {
    mockMethodCall(channel, (_) async {
      throw Exception('Error');
    });

    test(
      'GIVEN the unhappy path WHEN getUserID THEN throw exception',
      () async {
        final future = platform.getUserID();

        await expectLater(future, throwsA(isException));
      },
    );
  });
}
