import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/data_source_authorizer_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

/// Unwraps the `ResultDataSourceAuthorizerProto` and returns a `DataSourceAuthorizer` if successful.
///
/// This method processes the result and converts the contained `DataSourceAuthorizerProto`
/// objects into a `DataSourceAuthorizer` domain object.
///
/// Throws an exception if the result is not successful.
///
/// **Exceptions:**
/// * Throws a `PlatformException` if the result contains a `PluginExceptionProto`.
/// * Throws a generic `Exception` if the result type is unknown.
extension ResultDataSourceAuthorizerExtensions
    on ResultDataSourceAuthorizerProto {
  DataSourceAuthorizer unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultDataSourceAuthorizerProto_Result.dataSourceAuthorizerProto:
        return dataSourceAuthorizerProto.toDomain();
      case ResultDataSourceAuthorizerProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
