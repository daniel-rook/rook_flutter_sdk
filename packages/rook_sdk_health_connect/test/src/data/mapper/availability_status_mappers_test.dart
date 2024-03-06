import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/availability_status_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';

void main() {
  group('AvailabilityStatusProto to HCAvailabilityStatus mappers', () {
    test(
      'GIVEN AvailabilityStatusProto.INSTALLED WHEN toDomain THEN return HCAvailabilityStatus.installed',
      () {
        const proto = AvailabilityStatusProto.INSTALLED;
        final result = proto.toDomain();

        expect(result, HCAvailabilityStatus.installed);
      },
    );

    test(
      'GIVEN AvailabilityStatusProto.NOT_INSTALLED WHEN toDomain THEN return HCAvailabilityStatus.notInstalled',
      () {
        const proto = AvailabilityStatusProto.NOT_INSTALLED;
        final result = proto.toDomain();

        expect(result, HCAvailabilityStatus.notInstalled);
      },
    );

    test(
      'GIVEN AvailabilityStatusProto.NOT_SUPPORTED WHEN toDomain THEN return HCAvailabilityStatus.notSupported',
      () {
        const proto = AvailabilityStatusProto.NOT_SUPPORTED;
        final result = proto.toDomain();

        expect(result, HCAvailabilityStatus.notSupported);
      },
    );
  });
}
