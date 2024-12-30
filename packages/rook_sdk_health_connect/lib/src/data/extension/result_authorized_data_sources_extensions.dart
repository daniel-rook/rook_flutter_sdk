import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/authorized_data_sources_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

/// Unwraps the `ResultAuthorizedDataSourcesProto` and returns an AuthorizedDataSources if exists.
///
/// Throws an exception if the AuthorizedDataSources does not exists.
///
/// **Exceptions:**
/// * Throws a `PlatformException` if the result contains a `PluginExceptionProto`.
/// * Throws a generic `Exception` if the result type is unknown.
extension ResultAuthorizedDataSourcesExtensions
    on ResultAuthorizedDataSourcesProto {
  AuthorizedDataSources unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultAuthorizedDataSourcesProto_Result.authorizedDataSourcesProto:
        return authorizedDataSourcesProto.toDomain();
      case ResultAuthorizedDataSourcesProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
