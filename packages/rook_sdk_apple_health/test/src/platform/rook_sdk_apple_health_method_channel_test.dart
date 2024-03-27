import 'package:fixnum/fixnum.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_method_channel.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final platform = MethodChannelRookSdkAppleHealth();
  const channel = MethodChannel('rook_sdk_apple_health');

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  group('MethodChannelRookSdkAppleHealth | ResultBooleanProto success unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final proto = ResultBooleanProto();
        proto.success = true;
        return proto.writeToBuffer();
      });
    });

    test('GIVEN a Result.success WHEN setConfiguration THEN complete',
        () async {
      final rookConfiguration = RookConfiguration(
        'rookUrl',
        'clientUUID',
        RookEnvironment.sandbox,
      );
      final future = platform.setConfiguration(rookConfiguration);

      await expectLater(future, completes);
    });

    test('GIVEN a Result.success WHEN initRook THEN complete', () async {
      final future = platform.initRook();

      await expectLater(future, completes);
    });

    test('GIVEN a Result.success WHEN updateUserID THEN complete', () async {
      final future = platform.updateUserID('userID');

      await expectLater(future, completes);
    });

    test('GIVEN a Result.success WHEN updateUserID THEN complete', () async {
      final future = platform.updateUserID('userID');

      await expectLater(future, completes);
    });

    test('GIVEN a Result.success WHEN clearUserID THEN complete', () async {
      final future = platform.clearUserID();

      await expectLater(future, completes);
    });

    test(
      'GIVEN a Result.success WHEN syncUserTimeZone THEN complete',
      () async {
        final future = platform.syncUserTimeZone();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN requestAllPermissions THEN complete',
      () async {
        final future = platform.requestAllPermissions();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN requestSleepPermissions THEN complete',
      () async {
        final future = platform.requestSleepPermissions();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN requestPhysicalPermissions THEN complete',
      () async {
        final future = platform.requestPhysicalPermissions();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN requestBodyPermissions THEN complete',
      () async {
        final future = platform.requestBodyPermissions();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncSleepSummary THEN complete',
      () async {
        final future = platform.syncSleepSummary(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncSleepSummary THEN complete',
      () async {
        final future = platform.syncPhysicalSummary(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncBodySummary THEN complete',
      () async {
        final future = platform.syncBodySummary(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncPendingSummaries THEN complete',
      () async {
        final future = platform.syncPendingSummaries();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncYesterdaySummaries THEN complete',
      () async {
        final future = platform.syncYesterdaySummaries();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncPhysicalEvents THEN complete',
      () async {
        final future = platform.syncPhysicalEvents(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncBloodGlucoseEvents THEN complete',
      () async {
        final future = platform.syncBloodGlucoseEvents(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncBloodPressureEvents THEN complete',
      () async {
        final future = platform.syncBloodPressureEvents(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncBodyMetricsEvents THEN complete',
      () async {
        final future = platform.syncBodyMetricsEvents(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncBodyHeartRateEvents THEN complete',
      () async {
        final future = platform.syncBodyHeartRateEvents(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncPhysicalHeartRateEvents THEN complete',
      () async {
        final future = platform.syncPhysicalHeartRateEvents(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncBodyOxygenationEvents THEN complete',
      () async {
        final future = platform.syncBodyOxygenationEvents(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncPhysicalOxygenationEvents THEN complete',
      () async {
        final future = platform.syncPhysicalOxygenationEvents(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncTemperatureEvents THEN complete',
      () async {
        final future = platform.syncTemperatureEvents(DateTime.now());

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncPendingEvents THEN complete',
      () async {
        final future = platform.syncPendingEvents();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN syncYesterdayEvents THEN complete',
      () async {
        final future = platform.syncYesterdayEvents();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN isStepsTrackerActive THEN complete with expected value',
      () async {
        final future = platform.isStepsTrackerActive();

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN a Result.success WHEN startStepsTracker THEN complete',
      () async {
        final future = platform.startStepsTracker();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN stopStepsTracker THEN complete',
      () async {
        final future = platform.stopStepsTracker();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN isCaloriesTrackerActive THEN complete with expected value',
      () async {
        final future = platform.isCaloriesTrackerActive();

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN a Result.success WHEN startCaloriesTracker THEN complete',
      () async {
        final future = platform.startCaloriesTracker();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN a Result.success WHEN stopCaloriesTracker THEN complete',
      () async {
        final future = platform.stopCaloriesTracker();

        await expectLater(future, completes);
      },
    );

    test(
        'GIVEN a Result.success WHEN isContinuousUploadEnabled THEN complete with expected value',
        () async {
      final future = platform.isContinuousUploadEnabled();

      await expectLater(future, completion(true));
    });

    test('GIVEN a Result.success WHEN enableContinuousUpload THEN complete',
        () async {
      final rookConfiguration = RookConfiguration(
        'rookUrl',
        'clientUUID',
        RookEnvironment.sandbox,
      );

      final future = platform.enableContinuousUpload(rookConfiguration);

      await expectLater(future, completes);
    });

    test('GIVEN a Result.success WHEN disableContinuousUpload THEN complete',
        () async {
      final future = platform.disableContinuousUpload();

      await expectLater(future, completes);
    });

    test(
        'GIVEN a Result.success WHEN enableBackGround THEN complete',
        () async {
      final rookConfiguration = RookConfiguration(
        'rookUrl',
        'clientUUID',
        RookEnvironment.sandbox,
      );

      final future = platform.enableBackGround(rookConfiguration);

      await expectLater(future, completes);
    });

    test(
        'GIVEN a Result.success WHEN disableBackGround THEN complete',
        () async {
      final future = platform.disableBackGround();

      await expectLater(future, completes);
    });
  });

  group('MethodChannelRookSdkAppleHealth | ResultBooleanProto exception unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final proto = ResultBooleanProto();
        proto.genericExceptionProto =
            GenericExceptionProto(message: 'Generic error');

        return proto.writeToBuffer();
      });
    });

    test('GIVEN a Result.exception WHEN initRook THEN throw exception',
        () async {
      final future = platform.initRook();

      await expectLater(future, throwsA(isException));
    });

    test('GIVEN a Result.exception WHEN updateUserID THEN throw exception',
        () async {
      final future = platform.updateUserID('userID');

      await expectLater(future, throwsA(isException));
    });

    test(
        'GIVEN a Result.exception WHEN deleteUserFromRook THEN throw exception',
        () async {
      final future = platform.deleteUserFromRook();

      await expectLater(future, throwsA(isException));
    });

    test(
      'GIVEN a Result.exception WHEN syncUserTimeZone THEN throw exception',
      () async {
        final future = platform.syncUserTimeZone();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN requestAllPermissions THEN throw exception',
      () async {
        final future = platform.requestAllPermissions();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN requestSleepPermissions THEN throw exception',
      () async {
        final future = platform.requestSleepPermissions();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN requestBodyPermissions THEN throw exception',
      () async {
        final future = platform.requestBodyPermissions();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN requestPhysicalPermissions THEN throw exception',
      () async {
        final future = platform.requestPhysicalPermissions();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncSleepSummary THEN throw exception',
      () async {
        final future = platform.syncSleepSummary(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncSleepSummary THEN throw exception',
      () async {
        final future = platform.syncPhysicalSummary(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncBodySummary THEN throw exception',
      () async {
        final future = platform.syncBodySummary(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncPendingSummaries THEN throw exception',
      () async {
        final future = platform.syncPendingSummaries();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncYesterdaySummaries THEN throw exception',
      () async {
        final future = platform.syncYesterdaySummaries();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncPhysicalEvents THEN throw exception',
      () async {
        final future = platform.syncPhysicalEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncBloodGlucoseEvents THEN throw exception',
      () async {
        final future = platform.syncBloodGlucoseEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncBloodPressureEvents THEN throw exception',
      () async {
        final future = platform.syncBloodPressureEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncBodyMetricsEvents THEN throw exception',
      () async {
        final future = platform.syncBodyMetricsEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncBodyHeartRateEvents THEN throw exception',
      () async {
        final future = platform.syncBodyHeartRateEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncPhysicalHeartRateEvents THEN throw exception',
      () async {
        final future = platform.syncPhysicalHeartRateEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncBodyOxygenationEvents THEN throw exception',
      () async {
        final future = platform.syncBodyOxygenationEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncPhysicalOxygenationEvents THEN throw exception',
      () async {
        final future = platform.syncPhysicalOxygenationEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncTemperatureEvents THEN throw exception',
      () async {
        final future = platform.syncTemperatureEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncPendingEvents THEN throw exception',
      () async {
        final future = platform.syncPendingEvents();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN syncYesterdayEvents THEN throw exception',
      () async {
        final future = platform.syncYesterdayEvents();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN isStepsTrackerActive THEN throw exception',
      () async {
        final future = platform.isStepsTrackerActive();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN startStepsTracker THEN throw exception',
      () async {
        final future = platform.startStepsTracker();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN stopStepsTracker THEN throw exception',
      () async {
        final future = platform.stopStepsTracker();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN isCaloriesTrackerActive THEN throw exception',
      () async {
        final future = platform.isCaloriesTrackerActive();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN startCaloriesTracker THEN throw exception',
      () async {
        final future = platform.startCaloriesTracker();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN a Result.exception WHEN stopCaloriesTracker THEN throw exception',
      () async {
        final future = platform.stopCaloriesTracker();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
        'GIVEN a Result.exception WHEN isContinuousUploadEnabled THEN throw exception',
        () async {
      final future = platform.isContinuousUploadEnabled();

      await expectLater(future, throwsA(isException));
    });

    test(
        'GIVEN a Result.exception WHEN enableContinuousUpload THEN throw exception',
        () async {
      final rookConfiguration = RookConfiguration(
        'rookUrl',
        'clientUUID',
        RookEnvironment.sandbox,
      );

      final future = platform.enableContinuousUpload(rookConfiguration);

      await expectLater(future, throwsA(isException));
    });

    test(
        'GIVEN a Result.exception WHEN disableContinuousUpload THEN throw exception',
        () async {
      final future = platform.disableContinuousUpload();

      await expectLater(future, throwsA(isException));
    });

    test(
        'GIVEN a Result.exception WHEN enableBackGround THEN throw exception',
        () async {
      final rookConfiguration = RookConfiguration(
        'rookUrl',
        'clientUUID',
        RookEnvironment.sandbox,
      );

      final future = platform.enableBackGround(rookConfiguration);

      await expectLater(future, throwsA(isException));
    });

    test(
        'GIVEN a Result.exception WHEN disableBackGround THEN throw exception',
        () async {
      final future = platform.disableBackGround();

      await expectLater(future, throwsA(isException));
    });
  });

  group('MethodChannelRookSdkAppleHealth | ResultInt64Proto value unwrap', () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final proto = ResultInt64Proto();
        proto.value = Int64(1000);
        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN a Result.value WHEN getTodaySteps THEN complete with expected value',
        () async {
      final future = platform.getTodaySteps();

      await expectLater(future, completion(1000));
    });

    test(
        'GIVEN a Result.value WHEN getTodayCalories THEN complete with expected value',
        () async {
      final future = platform.getTodayCalories();

      await expectLater(future, completion(1000));
    });
  });

  group('MethodChannelRookSdkAppleHealth | ResultInt64Proto exception unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final proto = ResultInt64Proto();
        proto.genericExceptionProto =
            GenericExceptionProto(message: 'Generic error');

        return proto.writeToBuffer();
      });
    });

    test('GIVEN a Result.exception WHEN getTodaySteps THEN throw exception',
        () async {
      final future = platform.getTodaySteps();

      await expectLater(future, throwsA(isException));
    });

    test('GIVEN a Result.exception WHEN getTodayCalories THEN throw exception',
        () async {
      final future = platform.getTodayCalories();

      await expectLater(future, throwsA(isException));
    });
  });

  group('MethodChannelRookSdkAppleHealth | String Success', () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        return 'RookUser';
      });
    });

    test(
        'GIVEN the happy path WHEN getUserID THEN complete with expected value',
        () async {
      final future = platform.getUserID();

      await expectLater(future, completion('RookUser'));
    });
  });

  group('MethodChannelRookSdkAppleHealth | String null', () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        return null;
      });
    });

    test('GIVEN null WHEN getUserID THEN complete with expected value',
        () async {
      final future = platform.getUserID();

      await expectLater(future, completion(null));
    });
  });

  group('MethodChannelRookSdkAppleHealth | String Failure', () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        throw Exception('Error');
        // return 'RookUser';
      });
    });

    test('GIVEN the unhappy path WHEN getUserID THEN throw exception',
        () async {
      final future = platform.getUserID();

      await expectLater(future, throwsA(isException));
    });
  });
}
