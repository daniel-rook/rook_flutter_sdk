import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/android_permissions_summary_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

void main() {
  group('AndroidPermissionsSummaryProto to AndroidPermissionsSummary mappers',
      () {
    test(
      'GIVEN the happy path WHEN toDomain THEN return the expected result',
      () {
        final proto = AndroidPermissionsSummaryProto.create()
          ..permissionsGranted = false
          ..dialogDisplayed = true;

        final result = proto.toDomain();

        expect(result.permissionsGranted, false);
        expect(result.dialogDisplayed, true);
      },
    );
  });
}
