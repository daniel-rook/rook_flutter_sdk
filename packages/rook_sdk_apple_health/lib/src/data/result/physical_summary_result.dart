import 'package:rook_sdk_apple_health/src/data/mapper/physical_summary_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension PhysicalSummaryResult on PhysicalSummaryResultProto {
  PhysicalSummary unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case PhysicalSummaryResultProto_Result.success:
        return success.toDomain();
      case PhysicalSummaryResultProto_Result.failure:
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
