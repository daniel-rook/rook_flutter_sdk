import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/sync_instruction_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_sync_instruction.dart';

void main() {
  group('HCSyncInstruction to SyncInstructionProto mappers', () {
    test(
      'GIVEN HCSyncInstruction.nothing WHEN toProto THEN return SyncInstructionProto.NOTHING',
      () {
        const proto = HCSyncInstruction.nothing;
        final result = proto.toProto();

        expect(result, SyncInstructionProto.NOTHING);
      },
    );

    test(
      'GIVEN HCSyncInstruction.syncOldest WHEN toProto THEN return SyncInstructionProto.SYNC_OLDEST',
      () {
        const proto = HCSyncInstruction.syncOldest;
        final result = proto.toProto();

        expect(result, SyncInstructionProto.SYNC_OLDEST);
      },
    );

    test(
      'GIVEN HCSyncInstruction.syncLatest WHEN toProto THEN return SyncInstructionProto.SYNC_LATEST',
      () {
        const proto = HCSyncInstruction.syncLatest;
        final result = proto.toProto();

        expect(result, SyncInstructionProto.SYNC_LATEST);
      },
    );
  });
}
