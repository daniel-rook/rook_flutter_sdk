import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/samsung_health_availability.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/sh_event_sync_type.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/sh_summary_sync_type.dart';
import 'package:rook_sdk_samsung_health/src/platform/rook_sdk_samsung_health_method_channel.dart';

// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final platform = MethodChannelRookSdkSamsungHealth();
  const channel = MethodChannel('rook_sdk_samsung_health');

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  resultBooleanTests(platform, channel);
  resultSyncStatusWithIntTest(platform, channel);
  resultSyncStatusWithDailyCaloriesTest(platform, channel);
  resultRequestPermissionsStatusTests(platform, channel);
  stringTests(platform, channel);
  availabilityStatusTests(platform, channel);
}

void resultBooleanTests(
  MethodChannelRookSdkSamsungHealth platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkSamsungHealth | ResultBooleanProto success unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final proto = ResultBooleanProto()..success = true;

        return proto.writeToBuffer();
      });
    });

    test('GIVEN the happy path WHEN initRook THEN complete', () async {
      final configuration = RookConfiguration(
        clientUUID: "clientUUID",
        secretKey: "secretKey",
        environment: RookEnvironment.sandbox,
        enableBackgroundSync: false,
      );

      final future = platform.initRook(configuration);

      await expectLater(future, completes);
    });

    test('GIVEN the happy path WHEN updateUserID THEN complete', () async {
      final future = platform.updateUserID('userID');

      await expectLater(future, completes);
    });

    test('GIVEN the happy path WHEN clearUserID THEN complete', () async {
      final future = platform.clearUserID();

      await expectLater(future, completes);
    });

    test('GIVEN the happy path WHEN deleteUserFromRook THEN complete',
        () async {
      final future = platform.deleteUserFromRook();

      await expectLater(future, completes);
    });

    test(
      'GIVEN the happy path WHEN syncUserTimeZone THEN complete',
      () async {
        final future = platform.syncUserTimeZone();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN checkSamsungHealthPermissions THEN complete with expected value',
      () async {
        final future = platform.checkSamsungHealthPermissions([]);

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN checkSamsungHealthPermissionsPartially THEN complete with expected value',
      () async {
        final future = platform.checkSamsungHealthPermissionsPartially([]);

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN syncHistoricSummaries THEN complete with expected value',
      () async {
        final future = platform.syncHistoricSummaries(true);

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN syncSummariesByDate THEN complete with expected value',
      () async {
        final future = platform.syncSummariesByDate(DateTime.now());

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN syncByDateAndSummary THEN complete with expected value',
      () async {
        final future = platform.syncByDateAndSummary(
          DateTime.now(),
          SHSummarySyncType.sleep,
        );

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN syncByDateAndEvent THEN complete with expected value',
      () async {
        final future = platform.syncByDateAndEvent(
          DateTime.now(),
          SHEventSyncType.activity,
        );

        await expectLater(future, completion(true));
      },
    );

    test(
        'GIVEN the happy path WHEN isScheduled THEN complete with expected value',
        () async {
      final future = platform.isScheduled();

      await expectLater(future, completion(true));
    });

    test('GIVEN the happy path WHEN schedule THEN complete', () async {
      final future = platform.schedule(true);

      await expectLater(future, completes);
    });

    test('GIVEN the happy path WHEN cancel THEN complete', () async {
      final future = platform.cancel();

      await expectLater(future, completes);
    });
  });

  group(
      'MethodChannelRookSdkSamsungHealth | ResultBooleanProto exception unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultBooleanProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        return proto.writeToBuffer();
      });
    });

    test('GIVEN the unhappy path WHEN initRook THEN throw exception', () async {
      final configuration = RookConfiguration(
        clientUUID: "clientUUID",
        secretKey: "secretKey",
        environment: RookEnvironment.sandbox,
        enableBackgroundSync: false,
      );

      final future = platform.initRook(configuration);

      await expectLater(future, throwsA(isException));
    });

    test('GIVEN the unhappy path WHEN updateUserID THEN throw exception',
        () async {
      final future = platform.updateUserID('userID');

      await expectLater(future, throwsA(isException));
    });

    test('GIVEN the unhappy path WHEN clearUserID THEN throw exception',
        () async {
      final future = platform.clearUserID();

      await expectLater(future, throwsA(isException));
    });

    test('GIVEN the unhappy path WHEN deleteUserFromRook THEN throw exception',
        () async {
      final future = platform.deleteUserFromRook();

      await expectLater(future, throwsA(isException));
    });

    test(
      'GIVEN the unhappy path WHEN syncUserTimeZone throw exception',
      () async {
        final future = platform.syncUserTimeZone();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN checkSamsungHealthPermissions THEN throw exception',
      () async {
        final future = platform.checkSamsungHealthPermissions([]);

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN checkSamsungHealthPermissionsPartially THEN throw exception',
      () async {
        final future = platform.checkSamsungHealthPermissionsPartially([]);

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncHistoricSummaries THEN throw exception',
      () async {
        final future = platform.syncHistoricSummaries(true);

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncSummariesByDate THEN throw exception',
      () async {
        final future = platform.syncSummariesByDate(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncByDateAndSummary THEN throw exception',
      () async {
        final future = platform.syncByDateAndSummary(
          DateTime.now(),
          SHSummarySyncType.body,
        );

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncByDateAndEvent THEN throw exception',
      () async {
        final future = platform.syncByDateAndEvent(
          DateTime.now(),
          SHEventSyncType.steps,
        );

        await expectLater(future, throwsA(isException));
      },
    );

    test('GIVEN the unhappy path WHEN isScheduled THEN throw exception',
        () async {
      final future = platform.isScheduled();

      await expectLater(future, throwsA(isException));
    });

    test('GIVEN the unhappy path WHEN schedule THEN throw exception', () async {
      final future = platform.schedule(true);

      await expectLater(future, throwsA(isException));
    });

    test('GIVEN the unhappy path WHEN cancel THEN throw exception', () async {
      final future = platform.cancel();

      await expectLater(future, throwsA(isException));
    });
  });
}

void resultSyncStatusWithIntTest(
  MethodChannelRookSdkSamsungHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkSamsungHealth | ResultSyncStatusWithIntProto value unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final syncStatusWithIntProto = SyncStatusWithIntProto.create()
          ..syncStatus = SyncStatusProto.SYNCED
          ..steps = 1;

        final proto = ResultSyncStatusWithIntProto()
          ..syncStatusWithIntProto = syncStatusWithIntProto;

        return proto.writeToBuffer();
      });
    });

    test(
      'GIVEN a Result.syncStatusWithIntProto WHEN getTodayStepsCount THEN complete with expected value',
      () async {
        final future = platform.getTodayStepsCount();

        await expectLater(
          future,
          completion(
            predicate<SyncStatusWithData<int?>>(
              (value) => (value as Synced<int?>).data == 1,
            ),
          ),
        );
      },
    );
  });

  group(
      'MethodChannelRookSdkSamsungHealth | ResultSyncStatusWithIntProto exception unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultSyncStatusWithIntProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        return proto.writeToBuffer();
      });
    });

    test(
      'GIVEN the unhappy path WHEN getTodayStepsCount throw exception',
      () async {
        final future = platform.getTodayStepsCount();

        await expectLater(future, throwsA(isException));
      },
    );
  });
}

void resultSyncStatusWithDailyCaloriesTest(
  MethodChannelRookSdkSamsungHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkSamsungHealth | ResultSyncStatusWithDailyCaloriesProto value unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final dailyCaloriesProto = DailyCaloriesProto.create()
          ..basal = 12.5
          ..active = 22.5;
        final syncStatusWithDailyCaloriesProto =
            SyncStatusWithDailyCaloriesProto.create()
              ..syncStatus = SyncStatusProto.SYNCED
              ..dailyCalories = dailyCaloriesProto;

        final proto = ResultSyncStatusWithDailyCaloriesProto()
          ..syncStatusWithDailyCaloriesProto = syncStatusWithDailyCaloriesProto;

        return proto.writeToBuffer();
      });
    });

    test(
      'GIVEN a Result.syncStatusWithDailyCaloriesProto WHEN getTodayCaloriesCount THEN complete with expected value',
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
      'MethodChannelRookSdkSamsungHealth | ResultSyncStatusWithDailyCaloriesProto exception unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultSyncStatusWithDailyCaloriesProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        return proto.writeToBuffer();
      });
    });

    test(
      'GIVEN the unhappy path WHEN getTodayCaloriesCount throw exception',
      () async {
        final future = platform.getTodayCaloriesCount();

        await expectLater(future, throwsA(isException));
      },
    );
  });
}

void resultRequestPermissionsStatusTests(
  MethodChannelRookSdkSamsungHealth platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkSamsungHealth | RequestPermissionsStatus Success',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final proto = ResultRequestPermissionsStatusProto()
          ..requestPermissionsStatusProto =
              RequestPermissionsStatusProto.REQUEST_SENT;

        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN the happy path WHEN requestSamsungHealthPermissions THEN complete with expected value',
        () async {
      final future = platform.requestSamsungHealthPermissions([]);

      await expectLater(
        future,
        completion(RequestPermissionsStatus.requestSent),
      );
    });
  });

  group('MethodChannelRookSdkSamsungHealth | RequestPermissionsStatus Failure',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultRequestPermissionsStatusProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN the unhappy path WHEN requestSamsungHealthPermissions THEN throw exception',
        () async {
      final future = platform.requestSamsungHealthPermissions([]);

      await expectLater(future, throwsA(isException));
    });
  });
}

void stringTests(
  MethodChannelRookSdkSamsungHealth platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkSamsungHealth | String Success', () {
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

  group('MethodChannelRookSdkSamsungHealth | String null', () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        return null;
      });
    });

    test('GIVEN a null String WHEN getUserID THEN complete with expected value',
        () async {
      final future = platform.getUserID();

      await expectLater(future, completion(null));
    });
  });

  group('MethodChannelRookSdkSamsungHealth | String Failure', () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        throw Exception('Error');
      });
    });

    test('GIVEN the unhappy path WHEN getUserID THEN throw exception',
        () async {
      final future = platform.getUserID();

      await expectLater(future, throwsA(isException));
    });
  });
}

void availabilityStatusTests(
  MethodChannelRookSdkSamsungHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkSamsungHealth | Samsung Health Availability Success',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
        channel,
        (message) async {
          return SamsungHealthAvailabilityProto.INSTALLED.value;
        },
      );
    });

    test(
        'GIVEN the happy path WHEN checkSamsungHealthAvailability THEN complete with expected value',
        () async {
      final future = platform.checkSamsungHealthAvailability();

      await expectLater(
          future, completion(SamsungHealthAvailability.installed));
    });
  });

  group(
      'MethodChannelRookSdkSamsungHealth | Samsung Health Availability Failure',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
        channel,
        (message) async {
          throw Exception("Unknown error");
        },
      );
    });

    test(
        'GIVEN the unhappy path WHEN checkSamsungHealthAvailability THEN throw exception',
        () async {
      final future = platform.checkSamsungHealthAvailability();

      await expectLater(future, throwsA(isException));
    });
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
