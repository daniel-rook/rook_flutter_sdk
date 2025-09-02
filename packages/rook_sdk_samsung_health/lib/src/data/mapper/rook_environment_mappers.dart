import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pbenum.dart';

extension RookEnvironmentMappers on RookEnvironment {
  RookEnvironmentProto toProto() {
    return switch (this) {
      RookEnvironment.sandbox => RookEnvironmentProto.SANDBOX,
      _ => RookEnvironmentProto.PRODUCTION,
    };
  }
}
