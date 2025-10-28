import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/body_summary.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension BodySummaryResult on BodySummaryResultProto {
  BodySummary? unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case BodySummaryResultProto_Result.synced:
        return synced.toDomain();
      case BodySummaryResultProto_Result.recordsNotFound:
        return null;
      case BodySummaryResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
