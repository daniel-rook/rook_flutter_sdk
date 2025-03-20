import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension DataSourceAuthorizerMappers on DataSourceAuthorizerProto {
  DataSourceAuthorizer toDomain() {
    return DataSourceAuthorizer(
      dataSource: dataSource,
      authorized: authorized,
      authorizationUrl: authorizationUrlIsNull ? null : authorizationUrl,
    );
  }
}
