import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/health_permission_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_health_permission.dart';

void main() {
  group('HCHealthPermission to HealthPermissionProto mappers', () {
    test(
      'GIVEN a HCHealthPermission.sleep WHEN toProto THEN return HealthPermissionProto.SLEEP',
      () {
        const healthPermission = HCHealthPermission.sleep;

        final result = healthPermission.toProto();

        expect(result, HealthPermissionProto.SLEEP);
      },
    );

    test(
      'GIVEN a HCHealthPermission.body WHEN toProto THEN return HealthPermissionProto.BODY',
      () {
        const healthPermission = HCHealthPermission.body;

        final result = healthPermission.toProto();

        expect(result, HealthPermissionProto.BODY);
      },
    );

    test(
      'GIVEN a HCHealthPermission.physical WHEN toProto THEN return HealthPermissionProto.PHYSICAL',
      () {
        const healthPermission = HCHealthPermission.physical;

        final result = healthPermission.toProto();

        expect(result, HealthPermissionProto.PHYSICAL);
      },
    );

    test(
      'GIVEN a HCHealthPermission.all WHEN toProto THEN return HealthPermissionProto.ALL',
      () {
        const healthPermission = HCHealthPermission.all;

        final result = healthPermission.toProto();

        expect(result, HealthPermissionProto.ALL);
      },
    );
  });
}
