import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_event_sync_type.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_summary_sync_type.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package

void booleanResultTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | ResultBooleanProto success unwrap', () {
    mockMethodCall(channel, (_) async {
      final proto = BooleanResultProto()..success = true;

      return proto.writeToBuffer();
    });

    test('GIVEN the happy path WHEN initRook THEN complete', () async {
      final future = platform.initRook();

      await expectLater(future, completes);
    });

    test('GIVEN the happy path WHEN updateUserID THEN complete', () async {
      final future = platform.updateUserID('userID');

      await expectLater(future, completes);
    });

    test(
      'GIVEN the happy path WHEN deleteUserFromRook THEN complete',
      () async {
        final future = platform.deleteUserFromRook();

        await expectLater(future, completes);
      },
    );

    test('GIVEN the happy path WHEN syncUserTimeZone THEN complete', () async {
      final future = platform.syncUserTimeZone();

      await expectLater(future, completes);
    });

    test(
      'GIVEN the happy path WHEN openHealthConnectSettings THEN complete',
      () async {
        final future = platform.openHealthConnectSettings();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN checkHealthConnectPermissions THEN complete with expected value',
      () async {
        final future = platform.checkHealthConnectPermissions();

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN checkHealthConnectPermissionsPartially THEN complete with expected value',
      () async {
        final future = platform.checkHealthConnectPermissionsPartially();

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN syncHistoricSummaries THEN complete with expected value',
      () async {
        final future = platform.syncHistoricSummaries(true);

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN syncSummariesByDate THEN complete with expected value',
      () async {
        final future = platform.syncSummariesByDate(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN syncByDateAndSummary THEN complete with expected value',
      () async {
        final future = platform.syncByDateAndSummary(
          DateTime.now(),
          HCSummarySyncType.sleep,
        );

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN syncByDateAndEvent THEN complete with expected value',
      () async {
        final future = platform.syncByDateAndEvent(
          DateTime.now(),
          HCEventSyncType.activity,
        );

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN isStepsAvailable THEN complete with expected value',
      () async {
        final future = platform.isStepsAvailable();

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN isStepsCounterAvailable THEN complete with expected value',
      () async {
        final future = platform.isStepsCounterAvailable();

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN isBackgroundAndroidStepsActive THEN complete with expected value',
      () async {
        final future = platform.isBackgroundAndroidStepsActive();

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN isStepsCounterActive THEN complete with expected value',
      () async {
        final future = platform.isStepsCounterActive();

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN enableBackgroundAndroidSteps THEN complete',
      () async {
        final future = platform.enableBackgroundAndroidSteps();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN enableStepsCounter THEN complete',
      () async {
        final future = platform.enableStepsCounter();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN disableBackgroundAndroidSteps THEN complete',
      () async {
        final future = platform.disableBackgroundAndroidSteps();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN disableStepsCounter THEN complete',
      () async {
        final future = platform.disableStepsCounter();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN isScheduled THEN complete with expected value',
      () async {
        final future = platform.isScheduled();

        await expectLater(future, completion(true));
      },
    );

    test('GIVEN the happy path WHEN schedule THEN complete', () async {
      final future = platform.schedule(true, false);

      await expectLater(future, completes);
    });

    test('GIVEN the happy path WHEN cancel THEN complete', () async {
      final future = platform.cancel();

      await expectLater(future, completes);
    });
  });

  group('MethodChannelRookSdkHealthConnect | ResultBooleanProto exception unwrap', () {
    mockMethodCall(channel, (_) async {
      final failure = SDKExceptionProto.create()
        ..message = "message"
        ..code = 500;

      final proto = BooleanResultProto.create()..failure = failure;

      return proto.writeToBuffer();
    });

    test('GIVEN the unhappy path WHEN initRook THEN throw exception', () async {
      final future = platform.initRook();

      await expectLater(future, throwsException);
    });

    test(
      'GIVEN the unhappy path WHEN updateUserID THEN throw exception',
      () async {
        final future = platform.updateUserID('userID');

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN deleteUserFromRook THEN throw exception',
      () async {
        final future = platform.deleteUserFromRook();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncUserTimeZone throw exception',
      () async {
        final future = platform.syncUserTimeZone();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN openHealthConnectSettings THEN throw exception',
      () async {
        final future = platform.openHealthConnectSettings();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN checkHealthConnectPermissions THEN throw exception',
      () async {
        final future = platform.checkHealthConnectPermissions();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN checkHealthConnectPermissionsPartially THEN throw exception',
      () async {
        final future = platform.checkHealthConnectPermissionsPartially();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncHistoricSummaries THEN throw exception',
      () async {
        final future = platform.syncHistoricSummaries(true);

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncSummariesByDate THEN throw exception',
      () async {
        final future = platform.syncSummariesByDate(DateTime.now());

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncByDateAndSummary THEN throw exception',
      () async {
        final future = platform.syncByDateAndSummary(
          DateTime.now(),
          HCSummarySyncType.body,
        );

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncByDateAndEvent THEN throw exception',
      () async {
        final future = platform.syncByDateAndEvent(
          DateTime.now(),
          HCEventSyncType.steps,
        );

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN isStepsAvailable THEN throw exception',
      () async {
        final future = platform.isStepsAvailable();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN isStepsCounterAvailable THEN throw exception',
      () async {
        final future = platform.isStepsCounterAvailable();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN isBackgroundAndroidStepsActive THEN throw exception',
      () async {
        final future = platform.isBackgroundAndroidStepsActive();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN isStepsCounterActive THEN throw exception',
      () async {
        final future = platform.isStepsCounterActive();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN enableBackgroundAndroidSteps THEN throw exception',
      () async {
        final future = platform.enableBackgroundAndroidSteps();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN enableStepsCounter THEN throw exception',
      () async {
        final future = platform.enableStepsCounter();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN disableBackgroundAndroidSteps THEN throw exception',
      () async {
        final future = platform.disableBackgroundAndroidSteps();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN disableStepsCounter THEN throw exception',
      () async {
        final future = platform.disableStepsCounter();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN isScheduled THEN throw exception',
      () async {
        final future = platform.isScheduled();

        await expectLater(future, throwsException);
      },
    );

    test('GIVEN the unhappy path WHEN schedule THEN throw exception', () async {
      final future = platform.schedule(true, false);

      await expectLater(future, throwsException);
    });

    test('GIVEN the unhappy path WHEN cancel THEN throw exception', () async {
      final future = platform.cancel();

      await expectLater(future, throwsException);
    });
  });
}

void boolTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | bool Success', () {
    mockMethodCall(channel, (_) async {
      return true;
    });

    test(
      'GIVEN the happy path WHEN checkAndroidPermissions THEN complete with expected value',
      () async {
        final future = platform.checkAndroidPermissions();

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN shouldRequestAndroidPermissions THEN complete with expected value',
      () async {
        final future = platform.shouldRequestAndroidPermissions();

        await expectLater(future, completion(true));
      },
    );
  });

  group('MethodChannelRookSdkHealthConnect | bool Failure', () {
    mockMethodCall(channel, (_) async {
      throw Exception('Error');
    });

    test(
      'GIVEN the unhappy path WHEN checkAndroidPermissions THEN throw exception',
      () async {
        final future = platform.checkAndroidPermissions();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN shouldRequestAndroidPermissions THEN throw exception',
      () async {
        final future = platform.shouldRequestAndroidPermissions();

        await expectLater(future, throwsException);
      },
    );
  });
}
