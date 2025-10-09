import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/environment_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

extension RookConfigurationMappers on RookConfiguration {
  ConfigurationProto toProto() {
    return ConfigurationProto(
      clientUUID: clientUUID,
      secretKey: secretKey,
      environment: environment.toProto(),
      enableBackgroundSync: enableBackgroundSync,
    );
  }
}
