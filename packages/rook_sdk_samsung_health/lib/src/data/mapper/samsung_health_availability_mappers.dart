import 'package:rook_sdk_samsung_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/samsung_health_availability.dart';

extension SamsungHealthAvailabilityMappers on SamsungHealthAvailabilityProto {
  SamsungHealthAvailability toDomain() {
    return switch (this) {
      SamsungHealthAvailabilityProto.INSTALLED =>
        SamsungHealthAvailability.installed,
      SamsungHealthAvailabilityProto.NOT_INSTALLED =>
        SamsungHealthAvailability.notInstalled,
      SamsungHealthAvailabilityProto.OUTDATED =>
        SamsungHealthAvailability.outdated,
      SamsungHealthAvailabilityProto.DISABLED =>
        SamsungHealthAvailability.disabled,
      SamsungHealthAvailabilityProto.NOT_READY =>
        SamsungHealthAvailability.notReady,
      _ => throw Exception("Unknown availability: $this"),
    };
  }
}
