import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/data/result/sync_status_with_int_result.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

void main() {
  group("Result", () {
    test(
      "GIVEN success WHEN unwrap THEN return a SyncStatusWithData<int>",
      () {
        final proto = SyncStatusWithIntResultProto.create()..success = 1;

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
