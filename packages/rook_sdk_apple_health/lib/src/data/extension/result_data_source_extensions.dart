import 'package:rook_sdk_apple_health/src/data/mapper/data_source_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension ResultBooleanExtensions on ResultDataSourceProto {
  List<DataSource> unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultDataSourceProto_Result.dataSourceProtoListWrapper:
        return dataSourceProtoListWrapper.dataSources
            .map((it) => it.toDomain())
            .toList();
      case ResultDataSourceProto_Result.genericExceptionProto:
        throw Exception(
          genericExceptionProto.message,
        );
      default:
        throw Exception("Unknown error");
    }
  }
}
