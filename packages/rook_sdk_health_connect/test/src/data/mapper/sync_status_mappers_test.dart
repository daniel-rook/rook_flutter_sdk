import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/sync_status_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';

void main() {
  group('SyncStatusProto to SyncStatus mappers', () {
    test(
      'GIVEN SyncStatusProto.SYNCED WHEN toDomain THEN return SyncStatus.synced',
      () {
        const proto = SyncStatusProto.SYNCED;
        final result = proto.toDomain();

        expect(result, SyncStatus.synced);
      },
    );

    test(
      'GIVEN SyncStatusProto.RECORDS_NOT_FOUND WHEN toDomain THEN return SyncStatus.recordsNotFound',
      () {
        const proto = SyncStatusProto.RECORDS_NOT_FOUND;
        final result = proto.toDomain();

        expect(result, SyncStatus.recordsNotFound);
      },
    );
  });
}
