import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

extension RequestPermissionsStatusResult
    on RequestPermissionsStatusResultProto {
  RequestPermissionsStatus unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case RequestPermissionsStatusResultProto_Result.success:
        return success.toDomain();
      case RequestPermissionsStatusResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}

extension RequestPermissionsStatusMapper on RequestPermissionsStatusProto {
  RequestPermissionsStatus toDomain() {
    return switch (this) {
      RequestPermissionsStatusProto.REQUEST_SENT =>
        RequestPermissionsStatus.requestSent,
      RequestPermissionsStatusProto.ALREADY_GRANTED =>
        RequestPermissionsStatus.alreadyGranted,
      _ => throw Exception('Unknown request permissions status: $this'),
    };
  }
}
