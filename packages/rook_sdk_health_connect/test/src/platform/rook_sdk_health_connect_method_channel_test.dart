import 'package:fixnum/fixnum.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final platform = MethodChannelRookSdkHealthConnect();
  const channel = MethodChannel('rook_sdk_health_connect');

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  resultBooleanTests(platform, channel);
  resultInt64Tests(platform, channel);
  resultSyncStatusTests(platform, channel);
  resultSyncStatusWithIntTest(platform, channel);
  resultSyncStatusWithDailyCaloriesTest(platform, channel);
  resultDataSourceTests(platform, channel);
  resultDataSourceAuthorizerTests(platform, channel);
  resultAuthorizedDataSourcesTests(platform, channel);
  resultRequestPermissionsStatusTests(platform, channel);
  resultBackgroundReadStatusTests(platform, channel);
  stringTests(platform, channel);
  availabilityStatusTests(platform, channel);
}

void resultBooleanTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | ResultBooleanProto success unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final proto = ResultBooleanProto()..success = true;

        return proto.writeToBuffer();
      });
    });

    test('GIVEN the happy path WHEN initRook THEN complete', () async {
      final future = platform.initRook();

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
      'GIVEN the happy path WHEN syncPendingSummaries THEN complete',
      () async {
        final future = platform.syncPendingSummaries();

        await expectLater(future, completes);
      },
    );

    test(
      'GIVEN the happy path WHEN syncPendingEvents THEN complete',
      () async {
        final future = platform.syncPendingEvents();

        await expectLater(future, completes);
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
          HCSummarySyncType.sleep,
        );

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN syncByDateAndEvent THEN complete with expected value',
      () async {
        final future = platform.syncByDateAndEvent(
          DateTime.now(),
          HCEventSyncType.activity,
        );

        await expectLater(future, completion(true));
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
      'GIVEN the happy path WHEN isBackgroundAndroidStepsActive THEN complete with expected value',
      () async {
        final future = platform.isBackgroundAndroidStepsActive();

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
      'GIVEN the happy path WHEN disableBackgroundAndroidSteps THEN complete',
      () async {
        final future = platform.disableBackgroundAndroidSteps();

        await expectLater(future, completes);
      },
    );

    test('GIVEN the happy path WHEN scheduleYesterdaySync THEN complete',
        () async {
      final future = platform.scheduleYesterdaySync(true);

      await expectLater(future, completes);
    });

    test('GIVEN the happy path WHEN presentDataSourceView THEN complete',
        () async {
      final future = platform.presentDataSourceView("http://tryrook.io");

      await expectLater(future, completes);
    });

    test('GIVEN the happy path WHEN revokeDataSource THEN complete', () async {
      final future = platform.revokeDataSource("Garmin");

      await expectLater(future, completes);
    });

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
      'MethodChannelRookSdkHealthConnect | ResultBooleanProto exception unwrap',
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
      final future = platform.initRook();

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
      'GIVEN the unhappy path WHEN openHealthConnectSettings THEN throw exception',
      () async {
        final future = platform.openHealthConnectSettings();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN checkHealthConnectPermissions THEN throw exception',
      () async {
        final future = platform.checkHealthConnectPermissions();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncPendingSummaries THEN throw exception',
      () async {
        final future = platform.syncPendingSummaries();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncPendingEvents THEN throw exception',
      () async {
        final future = platform.syncPendingEvents();

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
          HCSummarySyncType.body,
        );

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncByDateAndEvent THEN throw exception',
      () async {
        final future = platform.syncByDateAndEvent(
          DateTime.now(),
          HCEventSyncType.steps,
        );

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN isStepsAvailable THEN throw exception',
      () async {
        final future = platform.isStepsAvailable();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN isBackgroundAndroidStepsActive THEN throw exception',
      () async {
        final future = platform.isBackgroundAndroidStepsActive();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN enableBackgroundAndroidSteps THEN throw exception',
      () async {
        final future = platform.enableBackgroundAndroidSteps();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN disableBackgroundAndroidSteps THEN throw exception',
      () async {
        final future = platform.disableBackgroundAndroidSteps();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
        'GIVEN the unhappy path WHEN scheduleYesterdaySync THEN throw exception',
        () async {
      final future = platform.scheduleYesterdaySync(true);

      await expectLater(future, throwsA(isException));
    });

    test(
        'GIVEN the unhappy path WHEN presentDataSourceView THEN throw exception',
        () async {
      final future = platform.presentDataSourceView("http://tryrook.io");

      await expectLater(future, throwsA(isException));
    });

    test('GIVEN the unhappy path WHEN revokeDataSource THEN throw exception',
        () async {
      final future = platform.revokeDataSource("Fitbit");

      await expectLater(future, throwsA(isException));
    });

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

void resultInt64Tests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | ResultInt64Proto value unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final proto = ResultInt64Proto()..value = Int64(1000);

        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN a Result.value WHEN syncTodayAndroidStepsCount THEN complete with expected value',
        () async {
      final future = platform.syncTodayAndroidStepsCount();

      await expectLater(future, completion(1000));
    });
  });

  group('MethodChannelRookSdkHealthConnect | ResultInt64Proto exception unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultInt64Proto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN the unhappy path WHEN syncTodayAndroidStepsCount THEN throw exception',
        () async {
      final future = platform.syncTodayAndroidStepsCount();

      await expectLater(future, throwsA(isException));
    });
  });
}

void resultSyncStatusTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkHealthConnect | ResultSyncStatusProto value unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final proto = ResultSyncStatusProto()
          ..syncStatusProto = SyncStatusProto.SYNCED;

        return proto.writeToBuffer();
      });
    });

    test(
      'GIVEN a Result.syncStatusProto WHEN syncSleepSummary THEN complete with expected value',
      () async {
        final future = platform.syncSleepSummary(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncPhysicalSummary THEN complete with expected value',
      () async {
        final future = platform.syncPhysicalSummary(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncBodySummary THEN complete with expected value',
      () async {
        final future = platform.syncBodySummary(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncPhysicalEvents THEN complete with expected value',
      () async {
        final future = platform.syncPhysicalEvents(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncBloodGlucoseEvents THEN complete with expected value',
      () async {
        final future = platform.syncBloodGlucoseEvents(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncBloodPressureEvents THEN complete with expected value',
      () async {
        final future = platform.syncBloodPressureEvents(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncBodyMetricsEvents THEN complete with expected value',
      () async {
        final future = platform.syncBodyMetricsEvents(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncBodyHeartRateEvents THEN complete with expected value',
      () async {
        final future = platform.syncBodyHeartRateEvents(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncPhysicalHeartRateEvents THEN complete with expected value',
      () async {
        final future = platform.syncPhysicalHeartRateEvents(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncHydrationEvents THEN complete with expected value',
      () async {
        final future = platform.syncHydrationEvents(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncNutritionEvents THEN complete with expected value',
      () async {
        final future = platform.syncNutritionEvents(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncBodyOxygenationEvents THEN complete with expected value',
      () async {
        final future = platform.syncBodyOxygenationEvents(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncPhysicalOxygenationEvents THEN complete with expected value',
      () async {
        final future = platform.syncPhysicalOxygenationEvents(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );

    test(
      'GIVEN a Result.syncStatusProto WHEN syncTemperatureEvents THEN complete with expected value',
      () async {
        final future = platform.syncTemperatureEvents(DateTime.now());

        await expectLater(future, completion(SyncStatus.synced));
      },
    );
  });

  group(
      'MethodChannelRookSdkHealthConnect | ResultSyncStatusProto exception unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultSyncStatusProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        return proto.writeToBuffer();
      });
    });

    test(
      'GIVEN the unhappy path WHEN syncSleepSummary throw exception',
      () async {
        final future = platform.syncSleepSummary(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncPhysicalSummary throw exception',
      () async {
        final future = platform.syncPhysicalSummary(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncBodySummary THEN throw exception',
      () async {
        final future = platform.syncBodySummary(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncPhysicalEvents THEN throw exception',
      () async {
        final future = platform.syncPhysicalEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncBloodGlucoseEvents THEN throw exception',
      () async {
        final future = platform.syncBloodGlucoseEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncBloodPressureEvents THEN throw exception',
      () async {
        final future = platform.syncBloodPressureEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncBodyMetricsEvents THEN throw exception',
      () async {
        final future = platform.syncBodyMetricsEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncBodyHeartRateEvents THEN throw exception',
      () async {
        final future = platform.syncBodyHeartRateEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncPhysicalHeartRateEvents THEN throw exception',
      () async {
        final future = platform.syncPhysicalHeartRateEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncHydrationEvents THEN throw exception',
      () async {
        final future = platform.syncHydrationEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncNutritionEvents THEN throw exception',
      () async {
        final future = platform.syncNutritionEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncBodyOxygenationEvents THEN throw exception',
      () async {
        final future = platform.syncBodyOxygenationEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncPhysicalOxygenationEvents THEN throw exception',
      () async {
        final future = platform.syncPhysicalOxygenationEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncTemperatureEvents THEN throw exception',
      () async {
        final future = platform.syncTemperatureEvents(DateTime.now());

        await expectLater(future, throwsA(isException));
      },
    );
  });
}

void resultSyncStatusWithIntTest(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkHealthConnect | ResultSyncStatusWithIntProto value unwrap',
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
      'GIVEN a Result.syncStatusWithIntProto WHEN syncTodayHealthConnectStepsCount THEN complete with expected value',
      () async {
        final future = platform.syncTodayHealthConnectStepsCount();

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
      'MethodChannelRookSdkHealthConnect | ResultSyncStatusWithIntProto exception unwrap',
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
      'GIVEN the unhappy path WHEN syncTodayHealthConnectStepsCount throw exception',
      () async {
        final future = platform.syncTodayHealthConnectStepsCount();

        await expectLater(future, throwsA(isException));
      },
    );

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
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkHealthConnect | ResultSyncStatusWithDailyCaloriesProto value unwrap',
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
      'MethodChannelRookSdkHealthConnect | ResultSyncStatusWithDailyCaloriesProto exception unwrap',
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

void resultDataSourceTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkHealthConnect | ResultDataSourceProto dataSourceProtoListWrapper unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final dataSourcesProtoListWrapper = DataSourcesProtoListWrapper(
          dataSources: [
            DataSourceProto(
              name: 'name',
              description: 'description',
              imageUrl: 'image',
              connected: true,
              authorizationUrl: 'authorizationUrl',
              authorizationUrlIsNull: false,
            ),
          ],
        );

        final proto = ResultDataSourcesProto()
          ..dataSourcesProtoListWrapper = dataSourcesProtoListWrapper;

        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN a Result.dataSourceProtoListWrapper WHEN getAvailableDataSources THEN complete with expected value',
        () async {
      final result = (await platform.getAvailableDataSources(
        "http://tryrook.io",
      ))
          .first;
      final expected = DataSource(
        'name',
        'description',
        'image',
        'imageUrl',
        true,
        'authorizationUrl',
      );

      expect(result.name, expected.name);
      expect(result.description, expected.description);
      expect(result.image, expected.image);
      expect(result.connected, expected.connected);
      expect(result.authorizationUrl, expected.authorizationUrl);
    });
  });

  group(
      'MethodChannelRookSdkHealthConnect | ResultDataSourceProto exception unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultDataSourcesProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN the unhappy path WHEN getAvailableDataSources THEN throw exception',
        () async {
      final future = platform.getAvailableDataSources("http://tryrook.io");

      await expectLater(future, throwsA(isException));
    });
  });
}

void resultDataSourceAuthorizerTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkHealthConnect | DataSourceAuthorizerProto dataSourceAuthorizerProto unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final dataSourceAuthorizerProto = DataSourceAuthorizerProto.create()
          ..dataSource = "Test"
          ..authorized = false
          ..authorizationUrlIsNull = false
          ..authorizationUrl = "Test url";

        final proto = ResultDataSourceAuthorizerProto.create()
          ..dataSourceAuthorizerProto = dataSourceAuthorizerProto;

        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN a Result.DataSourceAuthorizerProto WHEN getDataSourceAuthorizer THEN complete with expected value',
        () async {
      final result = await platform.getDataSourceAuthorizer(
        "Fitbit",
        "url",
      );
      final expected = DataSourceAuthorizer(
        dataSource: "Test",
        authorized: false,
        authorizationUrl: "Test url",
      );

      expect(result.dataSource, expected.dataSource);
      expect(result.authorized, expected.authorized);
      expect(result.authorizationUrl, expected.authorizationUrl);
    });
  });

  group(
      'MethodChannelRookSdkHealthConnect | DataSourceAuthorizerProto exception unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultDataSourceAuthorizerProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN the unhappy path WHEN getDataSourceAuthorizer THEN throw exception',
        () async {
      final future = platform.getDataSourceAuthorizer(
        "Fitbit",
        "url",
      );

      await expectLater(future, throwsA(isException));
    });
  });
}

void resultAuthorizedDataSourcesTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkHealthConnect | ResultAuthorizedDataSourcesProto authorizedDataSourcesProto unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final proto = ResultAuthorizedDataSourcesProto();

        proto.authorizedDataSourcesProto = AuthorizedDataSourcesProto.create()
          ..oura = 0
          ..polar = 1
          ..whoop = 2
          ..fitbit = 0
          ..garmin = 1
          ..withings = 2
          ..dexcom = 0
          ..appleHealth = 1
          ..healthConnect = 2
          ..android = 0;

        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN a Result.authorizedDataSourcesProto WHEN getAuthorizedDataSources THEN complete with expected value',
        () async {
      final result = await platform.getAuthorizedDataSources();
      final expected = AuthorizedDataSources(
        oura: false,
        polar: true,
        whoop: null,
        fitbit: false,
        garmin: true,
        withings: null,
        dexcom: false,
        appleHealth: true,
        healthConnect: null,
        android: false,
      );

      expect(result.oura, expected.oura);
      expect(result.polar, expected.polar);
      expect(result.whoop, expected.whoop);
      expect(result.fitbit, expected.fitbit);
      expect(result.garmin, expected.garmin);
      expect(result.withings, expected.withings);
      expect(result.appleHealth, expected.appleHealth);
      expect(result.healthConnect, expected.healthConnect);
      expect(result.android, expected.android);
    });
  });

  group(
      'MethodChannelRookSdkHealthConnect | ResultDataSourceProto exception unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultAuthorizedDataSourcesProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN a Result.exception WHEN getAuthorizedDataSources THEN throw exception',
        () async {
      final future = platform.getAuthorizedDataSources();

      await expectLater(future, throwsA(isException));
    });
  });
}

void resultRequestPermissionsStatusTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | RequestPermissionsStatus Success',
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
        'GIVEN the happy path WHEN requestHealthConnectPermissions THEN complete with expected value',
        () async {
      final future = platform.requestHealthConnectPermissions();

      await expectLater(
        future,
        completion(RequestPermissionsStatus.requestSent),
      );
    });

    test(
        'GIVEN the happy path WHEN requestAndroidPermissions THEN complete with expected value',
        () async {
      final future = platform.requestAndroidPermissions();

      await expectLater(
        future,
        completion(RequestPermissionsStatus.requestSent),
      );
    });
  });

  group('MethodChannelRookSdkHealthConnect | RequestPermissionsStatus Failure',
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
        'GIVEN the unhappy path WHEN requestHealthConnectPermissions THEN throw exception',
        () async {
      final future = platform.requestHealthConnectPermissions();

      await expectLater(future, throwsA(isException));
    });

    test(
        'GIVEN the unhappy path WHEN requestAndroidPermissions THEN throw exception',
        () async {
      final future = platform.requestAndroidPermissions();

      await expectLater(future, throwsA(isException));
    });
  });
}

void resultBackgroundReadStatusTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | BackgroundReadStatus Success', () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final proto = ResultBackgroundReadStatusProto.create()
          ..backgroundReadStatusProto = BackgroundReadStatusProto.UNAVAILABLE;

        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN the happy path WHEN checkBackgroundReadStatus THEN complete with expected value',
        () async {
      final future = platform.checkBackgroundReadStatus();

      await expectLater(
        future,
        completion(HCBackgroundReadStatus.unavailable),
      );
    });
  });

  group('MethodChannelRookSdkHealthConnect | RequestPermissionsStatus Failure',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultBackgroundReadStatusProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN the unhappy path WHEN checkBackgroundReadStatus THEN throw exception',
        () async {
      final future = platform.checkBackgroundReadStatus();

      await expectLater(future, throwsA(isException));
    });
  });
}

void stringTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | String Success', () {
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

  group('MethodChannelRookSdkHealthConnect | String null', () {
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

  group('MethodChannelRookSdkHealthConnect | String Failure', () {
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

void boolTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group('MethodChannelRookSdkHealthConnect | bool Success', () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        return true;
      });
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
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        throw Exception('Error');
      });
    });

    test(
      'GIVEN the unhappy path WHEN checkAndroidPermissions THEN throw exception',
      () async {
        final future = platform.checkAndroidPermissions();

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN shouldRequestAndroidPermissions THEN throw exception',
      () async {
        final future = platform.shouldRequestAndroidPermissions();

        await expectLater(future, throwsA(isException));
      },
    );
  });
}

void availabilityStatusTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkHealthConnect | Health Connect Availability Success',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
        channel,
        (message) async {
          return AvailabilityStatusProto.INSTALLED.value;
        },
      );
    });

    test(
        'GIVEN the happy path WHEN checkHealthConnectAvailability THEN complete with expected value',
        () async {
      final future = platform.checkHealthConnectAvailability();

      await expectLater(future, completion(HCAvailabilityStatus.installed));
    });
  });

  group(
      'MethodChannelRookSdkHealthConnect | Health Connect Availability Failure',
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
        'GIVEN the unhappy path WHEN checkHealthConnectAvailability THEN throw exception',
        () async {
      final future = platform.checkHealthConnectAvailability();

      await expectLater(future, throwsA(isException));
    });
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
