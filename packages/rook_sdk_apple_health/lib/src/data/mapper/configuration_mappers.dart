import 'package:rook_sdk_apple_health/src/data/mapper/environment_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension RookConfigurationMappers on RookConfiguration {
  ConfigurationProto toProto() {
    return ConfigurationProto(
      clientUUID: clientUUID,
      sha: sha,
      environment: environment.toProto(),
      enableBackgroundSync: enableBackgroundSync,
    );
  }
}
