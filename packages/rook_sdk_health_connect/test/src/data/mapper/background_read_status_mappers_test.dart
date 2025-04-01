import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/background_read_status_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_background_read_status.dart';

void main() {
  group('BackgroundReadStatusProto to HCBackgroundReadStatus mappers', () {
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
}
