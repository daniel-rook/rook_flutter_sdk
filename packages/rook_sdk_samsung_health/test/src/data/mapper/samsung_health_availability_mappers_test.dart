import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/samsung_health_availability_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/samsung_health_availability.dart';

void main() {
  group('SamsungHealthAvailabilityProto to SamsungHealthAvailability mappers', () {
    test(
      'GIVEN SamsungHealthAvailabilityProto.INSTALLED WHEN toDomain THEN return SamsungHealthAvailability.installed',
      () {
        const proto = SamsungHealthAvailabilityProto.INSTALLED;
        final result = proto.toDomain();

        expect(result, SamsungHealthAvailability.installed);
      },
    );

    test(
      'GIVEN SamsungHealthAvailabilityProto.NOT_INSTALLED WHEN toDomain THEN return SamsungHealthAvailability.notInstalled',
      () {
        const proto = SamsungHealthAvailabilityProto.NOT_INSTALLED;
        final result = proto.toDomain();

        expect(result, SamsungHealthAvailability.notInstalled);
      },
    );

    test(
      'GIVEN SamsungHealthAvailabilityProto.OUTDATED WHEN toDomain THEN return SamsungHealthAvailability.outdated',
      () {
        const proto = SamsungHealthAvailabilityProto.OUTDATED;
        final result = proto.toDomain();

        expect(result, SamsungHealthAvailability.outdated);
      },
    );

    test(
      'GIVEN SamsungHealthAvailabilityProto.DISABLED WHEN toDomain THEN return SamsungHealthAvailability.disabled',
          () {
        const proto = SamsungHealthAvailabilityProto.DISABLED;
        final result = proto.toDomain();

        expect(result, SamsungHealthAvailability.disabled);
      },
    );

    test(
      'GIVEN SamsungHealthAvailabilityProto.NOT_READY WHEN toDomain THEN return SamsungHealthAvailability.notReady',
          () {
        const proto = SamsungHealthAvailabilityProto.NOT_READY;
        final result = proto.toDomain();

        expect(result, SamsungHealthAvailability.notReady);
      },
    );
  });
}
