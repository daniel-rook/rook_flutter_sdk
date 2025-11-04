import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/physical_summary_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

extension PhysicalSummaryResult on PhysicalSummaryResultProto {
  PhysicalSummary? unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case PhysicalSummaryResultProto_Result.synced:
        return synced.toDomain();
      case PhysicalSummaryResultProto_Result.recordsNotFound:
        return null;
      case PhysicalSummaryResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
