import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_event_sync_type.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_summary_sync_type.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_method_channel.dart';

import '../common/test_utils.dart';

// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package

void booleanResultTests(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkAppleHealth | ResultBooleanProto success unwrap', () {
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
      'GIVEN the happy path WHEN requestPermissions THEN complete',
      () async {
        final future = platform.requestPermissions([]);

        await expectLater(future, completes);
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
          AHSummarySyncType.sleep,
        );

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN syncByDateAndEvent THEN complete with expected value',
      () async {
        final future = platform.syncByDateAndEvent(
          DateTime.now(),
          AHEventSyncType.activity,
        );

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN isContinuousUploadEnabled THEN complete with expected value',
      () async {
        final future = platform.isContinuousUploadEnabled();

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN enableContinuousUpload THEN complete',
      () async {
        final future = platform.enableContinuousUpload(true);

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN disableContinuousUpload THEN complete',
      () async {
        final future = platform.disableContinuousUpload();

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
      final future = platform.schedule(true);

      await expectLater(future, completes);
    });

    test('GIVEN the happy path WHEN cancel THEN complete', () async {
      final future = platform.cancel();

      await expectLater(future, completes);
    });
  });

  group('MethodChannelRookSdkAppleHealth | ResultBooleanProto exception unwrap', () {
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
      'GIVEN the unhappy path WHEN requestPermissions THEN throw exception',
      () async {
        final future = platform.requestPermissions([]);

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
          AHSummarySyncType.body,
        );

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncByDateAndEvent THEN throw exception',
      () async {
        final future = platform.syncByDateAndEvent(
          DateTime.now(),
          AHEventSyncType.heartRate,
        );

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN isContinuousUploadEnabled THEN throw exception',
      () async {
        final future = platform.isContinuousUploadEnabled();

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN enableContinuousUpload THEN throw exception',
      () async {
        final future = platform.enableContinuousUpload(true);

        await expectLater(future, throwsException);
      },
    );

    test(
      'GIVEN the unhappy path WHEN disableContinuousUpload THEN throw exception',
      () async {
        final future = platform.disableContinuousUpload();

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
      final future = platform.schedule(true);

      await expectLater(future, throwsException);
    });

    test('GIVEN the unhappy path WHEN cancel THEN throw exception', () async {
      final future = platform.cancel();

      await expectLater(future, throwsException);
    });
  });
}
