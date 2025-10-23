import 'package:rook_sdk_apple_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension RookEnvironmentMappers on RookEnvironment {
  EnvironmentProto toProto() {
    return switch (this) {
      RookEnvironment.sandbox => EnvironmentProto.SANDBOX,
      _ => EnvironmentProto.PRODUCTION,
    };
  }
}
