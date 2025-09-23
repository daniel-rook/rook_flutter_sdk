import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/data/result/request_permissions_status_result.dart';

void main() {
  group("Mapper", () {
    test(
      'GIVEN RequestPermissionsStatusProto.REQUEST_SENT WHEN toProto THEN return RequestPermissionsStatus.requestSent',
          () {
        const proto = RequestPermissionsStatusProto.REQUEST_SENT;
        final result = proto.toDomain();

        expect(result, RequestPermissionsStatus.requestSent);
      },
    );

    test(
      'GIVEN RequestPermissionsStatusProto.ALREADY_GRANTED WHEN toProto THEN return RequestPermissionsStatus.alreadyGranted',
          () {
        const proto = RequestPermissionsStatusProto.ALREADY_GRANTED;
        final result = proto.toDomain();

        expect(result, RequestPermissionsStatus.alreadyGranted);
      },
    );
  });

  group("Result", () {
    test(
      "GIVEN success WHEN unwrap THEN return a RequestPermissionsStatus",
          () {
            final proto = RequestPermissionsStatusResultProto.create()
              ..success = RequestPermissionsStatusProto.ALREADY_GRANTED;

            final result = proto.unwrap();

            expect(result, RequestPermissionsStatus.alreadyGranted);
      },
    );

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
          () {
            final failure = PluginExceptionProto.create()
              ..id = -1
              ..message = "message"
              ..code = 500;

            final proto = RequestPermissionsStatusResultProto.create()
              ..failure = failure;

            expect(proto.unwrap, throwsException);
      },
    );
  });
}
