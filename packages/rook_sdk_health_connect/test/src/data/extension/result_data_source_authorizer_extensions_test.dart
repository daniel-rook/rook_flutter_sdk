import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_data_source_authorizer_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

// ignore_for_file: deprecated_member_use

void main() {
  group('ResultDataSourceAuthorizerProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final dataSourceAuthorizerProto = DataSourceAuthorizerProto.create()
        ..dataSource = "Test"
        ..authorized = false
        ..authorizationUrlIsNull = false
        ..authorizationUrl = "Test url";

      final proto = ResultDataSourceAuthorizerProto.create()
        ..dataSourceAuthorizerProto = dataSourceAuthorizerProto;

      final result = proto.unwrap();
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

  group('ResultDataSourceAuthorizerProto exception', () {
    test(
      'GIVEN the unhappy path WHEN unwrap THEN throw an Exception',
      () {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultDataSourceAuthorizerProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        expect(proto.unwrap, throwsA(isException));
      },
    );
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
