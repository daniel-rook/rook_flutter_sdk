import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_method_channel.dart';

import '../common/test_utils.dart';

void stringTests(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkAppleHealth | String Success', () {
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

  group('MethodChannelRookSdkAppleHealth | String null', () {
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

  group('MethodChannelRookSdkAppleHealth | String Failure', () {
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
