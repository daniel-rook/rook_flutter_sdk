import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension DataSourceMappers on DataSourceProto {
  DataSource toDomain() {
    return DataSource(
      name,
      description,
      image,
      image,
      connected,
      authorizationUrlIsNull ? null : authorizationUrl,
    );
  }
}
