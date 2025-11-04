import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/data/result/sync_status_with_int_result.dart';

void main() {
  group("Mapper", () {
    test(
      'GIVEN SyncStatusWithIntProto.SYNCED WHEN toDomain THEN return SyncStatusWithData.Synced',
      () {
        final proto = SyncStatusWithIntProto.create()
          ..syncStatus = SyncStatusProto.SYNCED
          ..value = 22;
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

  group("Result", () {
    test(
      "GIVEN success WHEN unwrap THEN return a SyncStatusWithData<int>",
      () {
        final proto = SyncStatusWithIntResultProto.create();
        proto.success = SyncStatusWithIntProto.create()
          ..syncStatus = SyncStatusProto.SYNCED
          ..value = 1;

        final result = proto.unwrap();

        expect(result, isA<Synced<int?>>());

        final steps = (result as Synced<int?>).data;

        expect(steps, 1);
      },
    );

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
      () {
        final failure = PluginExceptionProto.create()
          ..id = -1
          ..message = "message"
          ..code = 500;

        final proto = SyncStatusWithIntResultProto.create()..failure = failure;

        expect(() => proto.unwrap(), throwsException);
      },
    );
  });
}
