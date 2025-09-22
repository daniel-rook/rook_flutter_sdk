import 'package:fixnum/fixnum.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_event_sync_type.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_summary_sync_type.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_method_channel.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

import '../common/test_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: deprecated_member_use

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final platform = MethodChannelRookSdkAppleHealth();
  const channel = MethodChannel('rook_sdk_apple_health');

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  resultBooleanTests(platform, channel);
  resultInt64Tests(platform, channel);
  resultDailyCaloriesTests(platform, channel);
  resultDataSourceTests(platform, channel);
  resultDataSourceAuthorizerTests(platform, channel);
  resultAuthorizedDataSourcesTests(platform, channel);
  stringTests(platform, channel);
}

void resultBooleanTests(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
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

    test('GIVEN a Result.success WHEN enableNativeLogs THEN complete',
        () async {
      final future = platform.enableNativeLogs();

      await expectLater(future, completes);
    });

    test('GIVEN a Result.success WHEN setConfiguration THEN complete',
        () async {
      final rookConfiguration = RookConfiguration(
        clientUUID: 'rookUrl',
        secretKey: 'clientUUID',
        environment: RookEnvironment.sandbox,
        enableBackgroundSync: true,
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
      'GIVEN a Result.success WHEN requestPermissions THEN complete',
      () async {
        final future = platform.requestPermissions([]);

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
          AHSummarySyncType.sleep,
        );

        await expectLater(future, completion(true));
      },
    );

    test(
      'GIVEN the happy path WHEN syncByDateAndEvent THEN complete with expected value',
      () async {
        final future = platform.syncByDateAndEvent(
          DateTime.now(),
          AHEventSyncType.activity,
        );

        await expectLater(future, completion(true));
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
      final future = platform.enableContinuousUpload(
        true,
        'rookUrl',
        'clientUUID',
        RookEnvironment.sandbox,
      );

      await expectLater(future, completes);
    });

    test('GIVEN a Result.success WHEN disableContinuousUpload THEN complete',
        () async {
      final future = platform.disableContinuousUpload();

      await expectLater(future, completes);
    });

    test('GIVEN a Result.success WHEN enableBackGround THEN complete',
        () async {
      final future = platform.enableBackground(
        true,
        'rookUrl',
        'clientUUID',
        RookEnvironment.sandbox,
      );

      await expectLater(future, completes);
    });

    test('GIVEN a Result.success WHEN disableBackGround THEN complete',
        () async {
      final future = platform.disableBackground();

      await expectLater(future, completes);
    });

    test('GIVEN a Result.success WHEN presentDataSourceView THEN complete',
        () async {
      final future = platform.presentDataSourceView("http://tryrook.io");

      await expectLater(future, completes);
    });

    test('GIVEN the happy path WHEN revokeDataSource THEN complete', () async {
      final future = platform.revokeDataSource("Garmin");

      await expectLater(future, completes);
    });
  });

  group('MethodChannelRookSdkAppleHealth | ResultBooleanProto exception unwrap',
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
      'GIVEN a Result.exception WHEN requestPermissions THEN throw exception',
      () async {
        final future = platform.requestPermissions([]);

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
          AHSummarySyncType.body,
        );

        await expectLater(future, throwsA(isException));
      },
    );

    test(
      'GIVEN the unhappy path WHEN syncByDateAndEvent THEN throw exception',
      () async {
        final future = platform.syncByDateAndEvent(
          DateTime.now(),
          AHEventSyncType.oxygenation,
        );

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
      final future = platform.enableContinuousUpload(
        true,
        'rookUrl',
        'clientUUID',
        RookEnvironment.sandbox,
      );

      await expectLater(future, throwsA(isException));
    });

    test(
        'GIVEN a Result.exception WHEN disableContinuousUpload THEN throw exception',
        () async {
      final future = platform.disableContinuousUpload();

      await expectLater(future, throwsA(isException));
    });

    test('GIVEN a Result.exception WHEN enableBackGround THEN throw exception',
        () async {
      final future = platform.enableBackground(
        true,
        'rookUrl',
        'clientUUID',
        RookEnvironment.sandbox,
      );

      await expectLater(future, throwsA(isException));
    });

    test('GIVEN a Result.exception WHEN disableBackGround THEN throw exception',
        () async {
      final future = platform.disableBackground();

      await expectLater(future, throwsA(isException));
    });

    test(
        'GIVEN a Result.exception WHEN presentDataSourceView THEN throw exception',
        () async {
      final future = platform.presentDataSourceView("http://tryrook.io");

      await expectLater(future, throwsA(isException));
    });

    test('GIVEN the unhappy path WHEN revokeDataSource THEN throw exception',
        () async {
      final future = platform.revokeDataSource("Fitbit");

      await expectLater(future, throwsA(isException));
    });
  });
}

void resultInt64Tests(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
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
      'GIVEN a Result.syncStatusWithIntProto WHEN getTodayStepsCount THEN complete with expected value',
      () async {
        final future = platform.getTodayStepsCount();

        await expectLater(future, completion(1000));
      },
    );
  });

  group('MethodChannelRookSdkAppleHealth | ResultInt64Proto exception unwrap',
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
      'GIVEN the unhappy path WHEN getTodayStepsCount throw exception',
      () async {
        final future = platform.getTodayStepsCount();

        await expectLater(future, throwsA(isException));
      },
    );
  });
}

void resultDailyCaloriesTests(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkAppleHealth | ResultDailyCaloriesProto value unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final dailyCaloriesProto = DailyCaloriesProto.create()
          ..basal = 12.5
          ..active = 22.5;
        final proto = ResultDailyCaloriesProto.create()
          ..dailyCalories = dailyCaloriesProto;
        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN a Result.value WHEN getTodayCaloriesCount THEN complete with expected value',
        () async {
      final future = platform.getTodayCaloriesCount();

      await expectLater(
        future,
        completion(
          predicate<DailyCalories?>((value) {
            return value?.basal == 12.5 && value?.active == 22.5;
          }),
        ),
      );
    });
  });

  group(
      'MethodChannelRookSdkAppleHealth | ResultDailyCaloriesProto exception unwrap',
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
        'GIVEN a Result.exception WHEN getTodayCaloriesCount THEN throw exception',
        () async {
      final future = platform.getTodayCaloriesCount();

      await expectLater(future, throwsA(isException));
    });
  });
}

void resultDataSourceTests(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkAppleHealth | ResultDataSourceProto dataSourceProtoListWrapper unwrap',
      () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(channel, (_) async {
        final proto = ResultDataSourcesProto();
        proto.dataSourcesProtoListWrapper = DataSourcesProtoListWrapper(
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
        return proto.writeToBuffer();
      });
    });

    test(
        'GIVEN a Result.dataSourceProtoListWrapper WHEN getAvailableDataSources THEN complete with expected value',
        () async {
      final result =
          (await platform.getAvailableDataSources("http://tryrook.io")).first;
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
      'MethodChannelRookSdkAppleHealth | ResultDataSourceProto exception unwrap',
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
        'GIVEN a Result.exception WHEN getAvailableDataSources THEN throw exception',
        () async {
      final future = platform.getAvailableDataSources("http://tryrook.io");

      await expectLater(future, throwsA(isException));
    });
  });
}

void resultDataSourceAuthorizerTests(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkAppleHealth | DataSourceAuthorizerProto dataSourceAuthorizerProto unwrap',
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
      'MethodChannelRookSdkAppleHealth | DataSourceAuthorizerProto exception unwrap',
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
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkAppleHealth | ResultAuthorizedDataSourcesProto authorizedDataSourcesProto unwrap',
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
      'MethodChannelRookSdkAppleHealth | ResultDataSourceProto exception unwrap',
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

void authorizedDataSourceV2Tests(
    MethodChannelRookSdkAppleHealth platform,
    MethodChannel channel,
    ) {
  group(
      "MethodChannelRookSdkAppleHealth | AuthorizedDataSourceV2ResultProto success unwrap",
          () {
        mockMethodCall(channel, (_) async {
          final dataSource1 = AuthorizedDataSourceV2Proto.create()
            ..name = "name1"
            ..authorized = true
            ..imageUrl = "imageUrl1";

          final success = AuthorizedDataSourceV2ListProto(list: [dataSource1]);
          final proto = AuthorizedDataSourceV2ResultProto(success: success);

          return proto.writeToBuffer();
        });

        test(
          "GIVEN success WHEN getAuthorizedDataSourcesV2 THEN return a list of AuthorizedDataSourceV2",
              () async {
            final result = await platform.getAuthorizedDataSourcesV2();

            expect(result.length, 1);

            expect(result[0].name, "name1");
            expect(result[0].authorized, true);
            expect(result[0].imageUrl, "imageUrl1");
          },
        );
      });

  group(
      'MethodChannelRookSdkAppleHealth | AuthorizedDataSourceV2ResultProto failure unwrap',
          () {
        mockMethodCall(channel, (_) async {
          final failure = PluginExceptionProto.create()
            ..code = 1
            ..message = "message";

          final proto = AuthorizedDataSourceV2ResultProto(failure: failure);

          return proto.writeToBuffer();
        });

        test(
          "GIVEN failure WHEN getAuthorizedDataSourcesV2 THEN throw exception",
              () async {
            final future = platform.getAuthorizedDataSourcesV2();

            await expectLater(future, throwsException);
          },
        );
      });
}

void stringTests(
  MethodChannelRookSdkAppleHealth platform,
  MethodChannel channel,
) {
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

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
