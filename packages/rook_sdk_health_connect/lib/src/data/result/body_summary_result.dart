import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/body_summary_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension BodySummaryResult on BodySummaryResultProto {
  BodySummary unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case BodySummaryResultProto_Result.success:
        return success.toDomain();
      case BodySummaryResultProto_Result.failure:
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
