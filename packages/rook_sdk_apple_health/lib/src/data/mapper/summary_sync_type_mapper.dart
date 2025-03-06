import 'package:rook_sdk_apple_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_summary_sync_type.dart';

extension SummarySyncTypeMapperExtensions on AHSummarySyncType {
  SummarySyncTypeProto toProto() {
    return switch (this) {
      AHSummarySyncType.sleep => SummarySyncTypeProto.SLEEP,
      AHSummarySyncType.physical => SummarySyncTypeProto.PHYSICAL,
      AHSummarySyncType.body => SummarySyncTypeProto.BODY,
    };
  }
}
