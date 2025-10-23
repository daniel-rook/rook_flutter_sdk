import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/data/result/data_source_authorizer_result.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

void main() {
  group("Mapper", () {
    test(
      "GIVEN an authorized DataSourceAuthorizerProto with authorizationUrl WHEN toDomain THEN return the expected DataSourceAuthorizer",
      () {
        final proto = DataSourceAuthorizerProto.create()
          ..dataSource = "Test"
          ..authorized = true
          ..authorizationUrlIsNull = false
          ..authorizationUrl = "Test url";

        final result = proto.toDomain();

        expect(result.dataSource, proto.dataSource);
        expect(result.authorized, proto.authorized);
        expect(result.authorizationUrl, proto.authorizationUrl);
      },
    );

    test(
      "GIVEN an unauthorized DataSourceAuthorizerProto without authorizationUrl WHEN toDomain THEN return the expected DataSourceAuthorizer",
      () {
        final proto = DataSourceAuthorizerProto.create()
          ..dataSource = "Test"
          ..authorized = false
          ..authorizationUrlIsNull = true
          ..authorizationUrl = "Test url";

        final result = proto.toDomain();

        expect(result.dataSource, proto.dataSource);
        expect(result.authorized, proto.authorized);
        expect(result.authorizationUrl, isNull);
      },
    );
  });

  group("Result", () {
    test(
      "GIVEN success WHEN unwrap THEN return a DataSourceAuthorizer",
      () {
        final dataSourceAuthorizerProto = DataSourceAuthorizerProto.create()
          ..dataSource = "Test"
          ..authorized = false
          ..authorizationUrlIsNull = false
          ..authorizationUrl = "Test url";

        final proto = DataSourceAuthorizerResultProto.create()
          ..success = dataSourceAuthorizerProto;

        final result = proto.unwrap();
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

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
      () {
        final failure = PluginExceptionProto.create()
          ..id = -1
          ..message = "message"
          ..code = 500;

        final proto = DataSourceAuthorizerResultProto.create()
          ..failure = failure;

        expect(() => proto.unwrap(), throwsException);
      },
    );
  });
}
