import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_background_read_status.dart';

extension BackgroundReadStatusResult on BackgroundReadStatusResultProto {
  HCBackgroundReadStatus unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case BackgroundReadStatusResultProto_Result.success:
        return success.toDomain();
      case BackgroundReadStatusResultProto_Result.failure:
        final exception = SDKException.fromCode(
          code: failure.code,
          message: failure.message,
        );

        throw exception;
      default:
        throw Exception("Unknown error");
    }
  }
}

extension BackgroundReadStatusMapper on BackgroundReadStatusProto {
  HCBackgroundReadStatus toDomain() {
    return switch (this) {
      BackgroundReadStatusProto.UNAVAILABLE =>
        HCBackgroundReadStatus.unavailable,
      BackgroundReadStatusProto.PERMISSION_NOT_GRANTED =>
        HCBackgroundReadStatus.permissionNotGranted,
      BackgroundReadStatusProto.PERMISSION_GRANTED =>
        HCBackgroundReadStatus.permissionGranted,
      _ => throw Exception('Unknown background read status: $this'),
    };
  }
}
