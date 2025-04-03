import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension DataSourceMappers on DataSourceProto {
  DataSource toDomain() {
    return DataSource(
      name,
      description,
      imageUrl,
      imageUrl,
      connected,
      authorizationUrlIsNull ? null : authorizationUrl,
    );
  }
}
