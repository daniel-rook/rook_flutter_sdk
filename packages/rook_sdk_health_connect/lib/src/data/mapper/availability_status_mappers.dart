import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_availability_status.dart';

extension AvailabilityStatusMappers on AvailabilityStatusProto {
  HCAvailabilityStatus toDomain() {
    return switch (this) {
      AvailabilityStatusProto.INSTALLED => HCAvailabilityStatus.installed,
      AvailabilityStatusProto.NOT_INSTALLED =>
        HCAvailabilityStatus.notInstalled,
      AvailabilityStatusProto.NOT_SUPPORTED =>
        HCAvailabilityStatus.notSupported,
      _ => throw Exception('Unknown availability status: $this'),
    };
  }
}
