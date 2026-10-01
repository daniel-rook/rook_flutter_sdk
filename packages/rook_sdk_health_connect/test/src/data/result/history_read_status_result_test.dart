import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/data/result/history_read_status_result.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_history_read_status.dart';

void main() {
  group("Mapper", () {
    test(
      'GIVEN HistoryReadStatusProto.HISTORY_UNAVAILABLE WHEN toDomain THEN return HCHistoryReadStatus.unavailable',
      () {
        const proto = HistoryReadStatusProto.HISTORY_UNAVAILABLE;
        final result = proto.toDomain();

        expect(result, HCHistoryReadStatus.unavailable);
      },
    );

    test(
      'GIVEN HistoryReadStatusProto.HISTORY_PERMISSION_NOT_GRANTED WHEN toDomain THEN return HCHistoryReadStatus.permissionNotGranted',
      () {
        const proto = HistoryReadStatusProto.HISTORY_PERMISSION_NOT_GRANTED;
        final result = proto.toDomain();

        expect(result, HCHistoryReadStatus.permissionNotGranted);
      },
    );

    test(
      'GIVEN HistoryReadStatusProto.HISTORY_PERMISSION_GRANTED WHEN toDomain THEN return HCHistoryReadStatus.permissionGranted',
      () {
        const proto = HistoryReadStatusProto.HISTORY_PERMISSION_GRANTED;
        final result = proto.toDomain();

        expect(result, HCHistoryReadStatus.permissionGranted);
      },
    );
  });

  group("Result", () {
    test("GIVEN success WHEN unwrap THEN return a HCHistoryReadStatus", () {
      final proto = HistoryReadStatusResultProto.create()
        ..success = HistoryReadStatusProto.HISTORY_PERMISSION_GRANTED;

      final result = proto.unwrap();

      expect(result, HCHistoryReadStatus.permissionGranted);
    });

    test("GIVEN failure WHEN unwrap THEN throw exception", () {
      final failure = SDKExceptionProto.create()
        ..message = "message"
        ..code = 500;

      final proto = HistoryReadStatusResultProto.create()..failure = failure;

      expect(() => proto.unwrap(), throwsException);
    });

    test(
      "GIVEN a missing permissions failure WHEN unwrap THEN throw MissingPermissionsException",
      () {
        final failure = SDKExceptionProto.create()
          ..message = "message"
          ..code = SDKExceptionCode.missingPermissions;

        final proto = HistoryReadStatusResultProto.create()..failure = failure;

        expect(
          () => proto.unwrap(),
          throwsA(isA<MissingPermissionsException>()),
        );
      },
    );
  });
}
