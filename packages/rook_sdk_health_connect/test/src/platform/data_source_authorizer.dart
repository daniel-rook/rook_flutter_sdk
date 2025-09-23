import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

void dataSourceAuthorizerTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkHealthConnect | DataSourceAuthorizerProto dataSourceAuthorizerProto unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final dataSourceAuthorizerProto = DataSourceAuthorizerProto.create()
        ..dataSource = "Test"
        ..authorized = false
        ..authorizationUrlIsNull = false
        ..authorizationUrl = "Test url";

      final proto = DataSourceAuthorizerResultProto.create()
        ..success = dataSourceAuthorizerProto;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN success WHEN getDataSourceAuthorizer THEN return a DataSourceAuthorizer",
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
      },
    );
  });

  group(
      'MethodChannelRookSdkHealthConnect | DataSourceAuthorizerProto exception unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final failure = PluginExceptionProto.create()
        ..id = -1
        ..message = "message"
        ..code = 500;

      final proto = DataSourceAuthorizerResultProto.create()..failure = failure;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN failure WHEN getDataSourceAuthorizer THEN throw exception",
      () async {
        final future = platform.getDataSourceAuthorizer(
          "Fitbit",
          "url",
        );

        await expectLater(future, throwsException);
      },
    );
  });
}
