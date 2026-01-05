import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/sleep_summary_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension SleepSummaryResult on SleepSummaryResultProto {
  List<SleepSummary> unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case SleepSummaryResultProto_Result.success:
        return success.elements.map((element) {
          return element.toDomain();
        }).toList();
      case SleepSummaryResultProto_Result.failure:
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
