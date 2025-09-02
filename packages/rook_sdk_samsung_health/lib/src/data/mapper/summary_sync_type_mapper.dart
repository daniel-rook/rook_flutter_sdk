import 'package:rook_sdk_samsung_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/sh_summary_sync_type.dart';

extension SummarySyncTypeMapperExtensions on SHSummarySyncType {
  SummarySyncTypeProto toProto() {
    return switch (this) {
      SHSummarySyncType.sleep => SummarySyncTypeProto.SLEEP,
      SHSummarySyncType.physical => SummarySyncTypeProto.PHYSICAL,
      SHSummarySyncType.body => SummarySyncTypeProto.BODY,
    };
  }
}
