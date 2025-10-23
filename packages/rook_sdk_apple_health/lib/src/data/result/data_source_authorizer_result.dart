import 'package:rook_sdk_apple_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension DataSourceAuthorizerResult on DataSourceAuthorizerResultProto {
  DataSourceAuthorizer unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case DataSourceAuthorizerResultProto_Result.success:
        return success.toDomain();
      case DataSourceAuthorizerResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}

extension DataSourceAuthorizerMapper on DataSourceAuthorizerProto {
  DataSourceAuthorizer toDomain() {
    return DataSourceAuthorizer(
      dataSource: dataSource,
      authorized: authorized,
      authorizationUrl: authorizationUrlIsNull ? null : authorizationUrl,
    );
  }
}
