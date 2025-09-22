import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension AuthorizedDataSourceV2Result on AuthorizedDataSourceV2ResultProto {
  List<AuthorizedDataSourceV2> unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case AuthorizedDataSourceV2ResultProto_Result.success:
        return success.toDomain();
      case AuthorizedDataSourceV2ResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}

extension AuthorizedDataSourceV2Mapper on AuthorizedDataSourceV2ListProto {
  List<AuthorizedDataSourceV2> toDomain() {
    return list.map((element) {
      return AuthorizedDataSourceV2(
        name: element.name,
        authorized: element.authorized,
        imageUrl: element.imageUrl,
      );
    }).toList();
  }
}
