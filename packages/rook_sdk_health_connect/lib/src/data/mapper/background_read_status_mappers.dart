import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_background_read_status.dart';

extension BackgroundReadStatusMappers on BackgroundReadStatusProto {
  HCBackgroundReadStatus toDomain() {
    return switch (this) {
      BackgroundReadStatusProto.UNAVAILABLE =>
        HCBackgroundReadStatus.unavailable,
      BackgroundReadStatusProto.PERMISSION_NOT_GRANTED =>
        HCBackgroundReadStatus.permissionNotGranted,
      BackgroundReadStatusProto.PERMISSION_GRANTED =>
        HCBackgroundReadStatus.permissionGranted,
      _ => HCBackgroundReadStatus.permissionGranted,
    };
  }
}
