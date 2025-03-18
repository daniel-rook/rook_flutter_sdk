import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/data_source_authorizer_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

void main() {
  group("DataSourceAuthorizerProto to DataSourceAuthorizer mappers", () {
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
}
