import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension DataSourceAuthorizerMappers on DataSourceAuthorizerProto {
  DataSourceAuthorizer toDomain() {
    return DataSourceAuthorizer(
      dataSource: dataSource,
      authorized: authorized,
      authorizationUrl: authorizationUrlIsNull ? null : authorizationUrl,
    );
  }
}
