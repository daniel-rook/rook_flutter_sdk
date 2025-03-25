import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_summary_sync_type.dart';

extension SummarySyncTypeMapperExtensions on HCSummarySyncType {
  SummarySyncTypeProto toProto() {
    return switch (this) {
      HCSummarySyncType.sleep => SummarySyncTypeProto.SLEEP,
      HCSummarySyncType.physical => SummarySyncTypeProto.PHYSICAL,
      HCSummarySyncType.body => SummarySyncTypeProto.BODY,
    };
  }
}
