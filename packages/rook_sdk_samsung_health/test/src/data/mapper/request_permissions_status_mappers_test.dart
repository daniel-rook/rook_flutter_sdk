import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/request_permissions_status_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pbenum.dart';

void main() {
  group('RequestPermissionsStatusProto to RequestPermissionsStatus mappers',
      () {
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
}
