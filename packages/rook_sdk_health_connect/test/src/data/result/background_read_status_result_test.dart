import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/data/result/background_read_status_result.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_background_read_status.dart';

void main() {
  group("Mapper", () {
    test(
      'GIVEN BackgroundReadStatusProto.UNAVAILABLE WHEN toDomain THEN return HCBackgroundReadStatus.unavailable',
      () {
        const proto = BackgroundReadStatusProto.UNAVAILABLE;
        final result = proto.toDomain();

        expect(result, HCBackgroundReadStatus.unavailable);
      },
    );

    test(
      'GIVEN BackgroundReadStatusProto.PERMISSION_NOT_GRANTED WHEN toDomain THEN return HCBackgroundReadStatus.permissionNotGranted',
      () {
        const proto = BackgroundReadStatusProto.PERMISSION_NOT_GRANTED;
        final result = proto.toDomain();

        expect(result, HCBackgroundReadStatus.permissionNotGranted);
      },
    );

    test(
      'GIVEN BackgroundReadStatusProto.PERMISSION_GRANTED WHEN toDomain THEN return HCBackgroundReadStatus.permissionGranted',
      () {
        const proto = BackgroundReadStatusProto.PERMISSION_GRANTED;
        final result = proto.toDomain();

        expect(result, HCBackgroundReadStatus.permissionGranted);
      },
    );
  });

  group("Result", () {
    test("GIVEN success WHEN unwrap THEN return a HCBackgroundReadStatus", () {
      final proto = BackgroundReadStatusResultProto.create();
      proto.success = BackgroundReadStatusProto.PERMISSION_GRANTED;

      final result = proto.unwrap();

      expect(result, HCBackgroundReadStatus.permissionGranted);
    });

    test("GIVEN failure WHEN unwrap THEN throw exception", () {
      final failure = SDKExceptionProto.create()
        ..message = "message"
        ..code = 500;

      final proto = BackgroundReadStatusResultProto.create()..failure = failure;

      expect(() => proto.unwrap(), throwsException);
    });
  });
}
