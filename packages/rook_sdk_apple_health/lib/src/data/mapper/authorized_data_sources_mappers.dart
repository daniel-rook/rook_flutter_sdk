import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension AuthorizedDataSourceMappers on AuthorizedDataSourcesProto {
  AuthorizedDataSources toDomain() {
    return AuthorizedDataSources(
      oura: oura,
      polar: polar,
      whoop: whoop,
      fitbit: fitbit,
      garmin: garmin,
      withings: withings,
      appleHealth: appleHealth,
      healthConnect: healthConnect,
      android: android,
    );
  }
}
