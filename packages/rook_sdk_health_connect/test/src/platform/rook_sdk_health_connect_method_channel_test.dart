import 'package:fixnum/fixnum.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

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
  resultDataSourceTests(platform, channel);
  resultRequestPermissionsStatusTests(platform, channel);
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
      'GIVEN the happy path WHEN shouldSyncFor THEN complete with expected value',
      () async {
        final future = platform.shouldSyncFor(
            HCHealthDataType.sleepSummary, DateTime.now());

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
      final future = platform.scheduleYesterdaySync(
        true,
        'rookUrl',
        'clientUUID',
        RookEnvironment.sandbox,
      );

      await expectLater(future, completes);
    });

    test('GIVEN the happy path WHEN presentDataSourceView THEN complete',
        () async {
      final future = platform.presentDataSourceView("http://tryrook.io");

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
      'GIVEN the unhappy path WHEN shouldSyncFor THEN throw exception',
      () async {
        final future = platform.shouldSyncFor(
            HCHealthDataType.sleepSummary, DateTime.now());

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
      final future = platform.scheduleYesterdaySync(
        true,
        'rookUrl',
        'clientUUID',
        RookEnvironment.sandbox,
      );

      await expectLater(future, throwsA(isException));
    });

    test(
        'GIVEN the unhappy path WHEN presentDataSourceView THEN throw exception',
        () async {
      final future = platform.presentDataSourceView("http://tryrook.io");

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
              image: 'image',
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

        final proto = ResultDataSourcesProto.create()
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
