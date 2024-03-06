import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_health_permission.dart';

extension HealthPermissionMappers on HCHealthPermission {
  HealthPermissionProto toProto() {
    return switch (this) {
      HCHealthPermission.sleep => HealthPermissionProto.SLEEP,
      HCHealthPermission.body => HealthPermissionProto.BODY,
      HCHealthPermission.physical => HealthPermissionProto.PHYSICAL,
      _ => HealthPermissionProto.ALL,
    };
  }
}
