import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pbenum.dart';

extension RequestPermissionsStatusMappers on RequestPermissionsStatusProto {
  RequestPermissionsStatus toDomain() {
    return switch (this) {
      RequestPermissionsStatusProto.REQUEST_SENT =>
        RequestPermissionsStatus.requestSent,
      _ => RequestPermissionsStatus.alreadyGranted,
    };
  }
}
