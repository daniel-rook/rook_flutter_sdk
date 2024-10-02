import 'package:rook_sdk_apple_health/src/data/mapper/data_source_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

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
