import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/sync_status_with_int_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

void main() {
  group('SyncStatusWithIntProto to SyncStatusWithData mappers', () {
    test(
      'GIVEN SyncStatusWithIntProto.SYNCED WHEN toDomain THEN return SyncStatusWithData.Synced',
      () {
        final proto = SyncStatusWithIntProto.create()
          ..syncStatus = SyncStatusProto.SYNCED
          ..steps = 22;
        final result = proto.toDomain();

        expect(result, isA<Synced<int?>>());

        final steps = (result as Synced<int?>).data;

        expect(steps, 22);
      },
    );

    test(
      'GIVEN SyncStatusWithIntProto.RECORDS_NOT_FOUND WHEN toDomain THEN return SyncStatusWithData.RecordsNotFound',
      () {
        final proto = SyncStatusWithIntProto.create()
          ..syncStatus = SyncStatusProto.RECORDS_NOT_FOUND;
        final result = proto.toDomain();

        expect(result, isA<RecordsNotFound>());

        final recordsNotFound = result as RecordsNotFound;

        expect(recordsNotFound, RecordsNotFound.singleton);
      },
    );
  });
}
