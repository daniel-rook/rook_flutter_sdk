import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/data/result/sync_status_result.dart';

void main() {
  group("Mapper", () {
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

  group("Result", () {
    test(
      "GIVEN success WHEN unwrap THEN return a SyncStatus",
      () {
        final proto = SyncStatusResultProto.create();
        proto.success = SyncStatusProto.SYNCED;

        final result = proto.unwrap();

        expect(result, SyncStatus.synced);
      },
    );

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
      () {
        final failure = PluginExceptionProto.create()
          ..id = -1
          ..message = "message"
          ..code = 500;

        final proto = SyncStatusResultProto.create()..failure = failure;

        expect(() => proto.unwrap(), throwsException);
      },
    );
  });
}
