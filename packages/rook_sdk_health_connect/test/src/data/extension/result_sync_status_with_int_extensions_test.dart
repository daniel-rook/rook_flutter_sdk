import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_sync_status_with_int_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

void main() {
  group('ResultSyncStatusWithIntProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final proto = ResultSyncStatusWithIntProto.create();
      proto.syncStatusWithIntProto = SyncStatusWithIntProto.create()
        ..syncStatus = SyncStatusProto.SYNCED
        ..steps = 1;

      final result = proto.unwrap();

      expect(result, isA<Synced<int?>>());

      final steps = (result as Synced<int?>).data;

      expect(steps, 1);
    });
  });

  group('ResultSyncStatusWithIntProto exception', () {
    test(
      'GIVEN the unhappy path WHEN unwrap THEN throw an Exception',
      () {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultSyncStatusWithIntProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        expect(proto.unwrap, throwsA(isException));
      },
    );
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
