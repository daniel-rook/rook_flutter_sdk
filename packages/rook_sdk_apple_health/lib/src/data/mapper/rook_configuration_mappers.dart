import 'package:rook_sdk_apple_health/src/data/mapper/rook_environment_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension RookConfigurationMappers on RookConfiguration {
  RookConfigurationProto toProto() {
    return RookConfigurationProto(
        clientUUID: clientUUID,
        secretKey: secretKey,
        environment: environment.toProto());
  }
}
