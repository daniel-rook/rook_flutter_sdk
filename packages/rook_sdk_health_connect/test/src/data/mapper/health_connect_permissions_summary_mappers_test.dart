import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/health_connect_permissions_summary_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

void main() {
  group(
      'HealthConnectPermissionsSummaryProto to HealthConnectPermissionsSummary mappers',
      () {
    test(
      'GIVEN the happy path WHEN toDomain THEN return the expected result',
      () {
        final proto = HealthConnectPermissionsSummaryProto.create()
          ..dataTypesGranted = false
          ..dataTypesPartiallyGranted = true
          ..backgroundReadGranted = false;

        final result = proto.toDomain();

        expect(result.dataTypesGranted, false);
        expect(result.dataTypesPartiallyGranted, true);
        expect(result.dataTypesPartiallyGranted, false);
      },
    );
  });
}
