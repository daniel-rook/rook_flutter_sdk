import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_method_channel.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

import 'authorized_data_source_v2.dart';
import 'authorized_data_sources.dart';
import 'boolean.dart';
import 'data_source_authorizer.dart';
import 'int64.dart';
import 'string.dart';
import 'sync_status_with_calories.dart';
import 'sync_status_with_int.dart';

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

  booleanResultTests(platform, channel);
  int64ResultTests(platform, channel);
  syncStatusWithIntTest(platform, channel);
  syncStatusWithCaloriesTest(platform, channel);
  resultDataSourceTests(platform, channel);
  dataSourceAuthorizerTests(platform, channel);
  authorizedDataSourcesTests(platform, channel);
  authorizedDataSourceV2Tests(platform, channel);
  stringTests(platform, channel);
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
              imageUrl: 'image',
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

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
