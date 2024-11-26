import 'package:rook_sdk_apple_health/src/data/mapper/data_source_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

/// Unwraps the `ResultDataSourcesProto` and returns a list of `DataSource` objects if successful.
///
/// This method processes the result and converts the contained `DataSourcesProto`
/// objects into a list of `DataSource` domain objects.
///
/// Throws an exception if the result is not successful.
///
/// **Exceptions:**
/// * Throws a `PlatformException` if the result contains a `PluginExceptionProto`.
/// * Throws a generic `Exception` if the result type is unknown.
extension ResultDataSourcesExtensions on ResultDataSourcesProto {
  List<DataSource> unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultDataSourcesProto_Result.dataSourcesProtoListWrapper:
        return dataSourcesProtoListWrapper.dataSources
            .map((it) => it.toDomain())
            .toList();
      case ResultDataSourcesProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
