import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

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
