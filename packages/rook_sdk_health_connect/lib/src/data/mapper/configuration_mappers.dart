import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/environment_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/util/check_non_default.dart';

extension RookConfigurationMappers on RookConfiguration {
  ConfigurationProto toProto() {
    return ConfigurationProto(
      clientUUID: clientUUID,
      secret: secret,
      environment: environment.toProto(),
      enableBackgroundSync: enableBackgroundSync,
      appId: appId ?? defaultString,
    );
  }
}
