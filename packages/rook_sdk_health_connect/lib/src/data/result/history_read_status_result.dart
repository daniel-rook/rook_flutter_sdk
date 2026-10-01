import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_history_read_status.dart';

extension HistoryReadStatusResult on HistoryReadStatusResultProto {
  HCHistoryReadStatus unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case HistoryReadStatusResultProto_Result.success:
        return success.toDomain();
      case HistoryReadStatusResultProto_Result.failure:
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

extension HistoryReadStatusMapper on HistoryReadStatusProto {
  HCHistoryReadStatus toDomain() {
    return switch (this) {
      HistoryReadStatusProto.HISTORY_UNAVAILABLE =>
        HCHistoryReadStatus.unavailable,
      HistoryReadStatusProto.HISTORY_PERMISSION_NOT_GRANTED =>
        HCHistoryReadStatus.permissionNotGranted,
      HistoryReadStatusProto.HISTORY_PERMISSION_GRANTED =>
        HCHistoryReadStatus.permissionGranted,
      _ => throw Exception('Unknown history read status: $this'),
    };
  }
}
