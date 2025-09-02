import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/samsung_health_permissions_summary_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

void main() {
  group(
      'SamsungHealthPermissionsSummaryProto to SamsungHealthPermissionsSummary mappers',
      () {
    test(
      'GIVEN the happy path WHEN toDomain THEN return the expected result',
      () {
        final proto = SamsungHealthPermissionsSummaryProto.create()
          ..dataTypesGranted = false
          ..dataTypesPartiallyGranted = true;

        final result = proto.toDomain();

        expect(result.dataTypesGranted, false);
        expect(result.dataTypesPartiallyGranted, true);
      },
    );
  });
}
