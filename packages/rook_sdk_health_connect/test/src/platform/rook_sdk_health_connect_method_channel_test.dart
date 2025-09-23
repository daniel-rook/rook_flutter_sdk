import 'package:fixnum/fixnum.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import 'authorized_data_source_v2.dart';
import 'authorized_data_sources.dart';
import 'background_read_status.dart';
import 'data_source_authorizer.dart';
import 'health_connect_availability.dart';
import 'request_permission_status.dart';
import 'sync_status_with_calories.dart';
import 'sync_status_with_int.dart';

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
  syncStatusWithIntTest(platform, channel);
  syncStatusWithCaloriesTest(platform, channel);
  resultDataSourceTests(platform, channel);
  dataSourceAuthorizerTests(platform, channel);
  authorizedDataSourcesTests(platform, channel);
  authorizedDataSourceV2Tests(platform, channel);
  requestPermissionsStatusTests(platform, channel);
  backgroundReadStatusTests(platform, channel);
  stringTests(platform, channel);
  healthConnectAvailabilityTests(platform, channel);
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
      final future = platform.schedule(true, false);

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
      'GIVEN the unhappy path WHEN checkHealthConnectPermissionsPartially THEN throw exception',
      () async {
        final future = platform.checkHealthConnectPermissionsPartially();

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
      final future = platform.schedule(true, false);

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

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
