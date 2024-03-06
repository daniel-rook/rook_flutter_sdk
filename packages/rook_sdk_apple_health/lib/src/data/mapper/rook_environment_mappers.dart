import 'package:rook_sdk_apple_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension RookEnvironmentMappers on RookEnvironment {
  RookEnvironmentProto toProto() {
    return switch (this) {
      RookEnvironment.sandbox => RookEnvironmentProto.SANDBOX,
      _ => RookEnvironmentProto.PRODUCTION,
    };
  }
}
