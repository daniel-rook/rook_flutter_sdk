import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/health_connect_availability_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';

void main() {
  group('HealthConnectAvailabilityProto to HCAvailabilityStatus mappers', () {
    test(
      'GIVEN HealthConnectAvailabilityProto.INSTALLED WHEN toDomain THEN return HCAvailabilityStatus.installed',
      () {
        const proto = HealthConnectAvailabilityProto.INSTALLED;
        final result = proto.toDomain();

        expect(result, HCAvailabilityStatus.installed);
      },
    );

    test(
      'GIVEN HealthConnectAvailabilityProto.NOT_INSTALLED WHEN toDomain THEN return HCAvailabilityStatus.notInstalled',
      () {
        const proto = HealthConnectAvailabilityProto.NOT_INSTALLED;
        final result = proto.toDomain();

        expect(result, HCAvailabilityStatus.notInstalled);
      },
    );

    test(
      'GIVEN HealthConnectAvailabilityProto.NOT_SUPPORTED WHEN toDomain THEN return HCAvailabilityStatus.notSupported',
      () {
        const proto = HealthConnectAvailabilityProto.NOT_SUPPORTED;
        final result = proto.toDomain();

        expect(result, HCAvailabilityStatus.notSupported);
      },
    );
  });
}
