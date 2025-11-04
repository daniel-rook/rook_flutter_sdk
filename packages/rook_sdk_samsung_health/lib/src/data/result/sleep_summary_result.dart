import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/sleep_summary_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

extension SleepSummaryResult on SleepSummaryResultProto {
  List<SleepSummary> unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case SleepSummaryResultProto_Result.synced:
        return synced.elements.map((element) {
          return element.toDomain();
        }).toList();
      case SleepSummaryResultProto_Result.recordsNotFound:
        return [];
      case SleepSummaryResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
