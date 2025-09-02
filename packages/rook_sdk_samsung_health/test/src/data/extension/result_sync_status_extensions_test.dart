import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/extension/result_sync_status_extensions.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

void main() {
  group('ResultSyncStatusProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final proto = ResultSyncStatusProto.create();
      proto.syncStatusProto = SyncStatusProto.SYNCED;

      final result = proto.unwrap();

      expect(result, SyncStatus.synced);
    });
  });

  group('ResultSyncStatusProto exception', () {
    test(
      'GIVEN the unhappy path WHEN unwrap THEN throw an Exception',
      () {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultSyncStatusProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        expect(proto.unwrap, throwsA(isException));
      },
    );
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
