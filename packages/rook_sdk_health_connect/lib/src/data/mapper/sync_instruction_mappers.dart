import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_sync_instruction.dart';

extension SyncStatusMappers on HCSyncInstruction {
  SyncInstructionProto toProto() {
    return switch (this) {
      HCSyncInstruction.syncOldest => SyncInstructionProto.SYNC_OLDEST,
      HCSyncInstruction.syncLatest => SyncInstructionProto.SYNC_LATEST,
      _ => SyncInstructionProto.NOTHING,
    };
  }
}
