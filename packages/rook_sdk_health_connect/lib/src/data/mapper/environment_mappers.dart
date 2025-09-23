import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';

extension RookEnvironmentMappers on RookEnvironment {
  EnvironmentProto toProto() {
    return switch (this) {
      RookEnvironment.sandbox => EnvironmentProto.SANDBOX,
      _ => EnvironmentProto.PRODUCTION,
    };
  }
}
