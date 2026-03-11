import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/data/result/diagnostic_state_result.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/diagnostic_state_permissions.dart';

void main() {
  group("Mapper", () {
    test(
      "GIVEN a DiagnosticStateProto WHEN toDomain THEN return a DiagnosticState",
      () {
        const diagnosticStatePermissionsProto =
            DiagnosticStatePermissionsProto.REQUESTED;
        final manualSync = DiagnosticSyncStateProto.create()
          ..enabled = true
          ..lastSync = "2022-01-01T00:00:00.000Z";
        final backgroundSync = DiagnosticSyncStateProto.create()
          ..enabled = false
          ..lastSync = "N/A";
        final proto = DiagnosticStateProto.create()
          ..isConfigured = false
          ..userIdentified = true
          ..permissions = diagnosticStatePermissionsProto
          ..manualSync = manualSync
          ..backgroundSync = backgroundSync;
        final result = proto.toDomain();

        expect(result.isConfigured, isFalse);
        expect(result.userIdentified, isTrue);
        expect(result.permissions, SHDiagnosticStatePermissions.requested);
        expect(result.manualSync.enabled, isTrue);
        expect(result.manualSync.lastSync, isNotNull);
        expect(result.backgroundSync.enabled, isFalse);
        expect(result.backgroundSync.lastSync, isNull);
      },
    );

    test(
      "GIVEN a DiagnosticSyncStateProto WHEN toDomain THEN return a DiagnosticSyncState",
      () {
        final proto = DiagnosticSyncStateProto.create()
          ..enabled = true
          ..lastSync = "2022-01-01T00:00:00.000Z";
        final result = proto.toDomain();

        expect(result.enabled, isTrue);
        expect(
          result.lastSync?.toUtc(),
          DateTime.parse("2022-01-01T00:00:00.000Z"),
        );
      },
    );

    test(
      "GIVEN a DiagnosticStatePermissionsMapper WHEN toDomain THEN return a DiagnosticStatePermissions",
      () {
        const proto = DiagnosticStatePermissionsProto.NONE;
        final result = proto.toDomain();

        expect(result, SHDiagnosticStatePermissions.none);
      },
    );
  });

  group("Result", () {
    test("GIVEN success WHEN unwrap THEN return a DiagnosticState", () {
      const diagnosticStatePermissionsProto =
          DiagnosticStatePermissionsProto.GRANTED;
      final manualSync = DiagnosticSyncStateProto.create()
        ..enabled = false
        ..lastSync = "2022-01-01T00:00:00.000Z";
      final backgroundSync = DiagnosticSyncStateProto.create()
        ..enabled = true
        ..lastSync = "2022-01-01T00:00:00.000Z";
      final diagnosticStateProto = DiagnosticStateProto.create()
        ..isConfigured = true
        ..userIdentified = false
        ..permissions = diagnosticStatePermissionsProto
        ..manualSync = manualSync
        ..backgroundSync = backgroundSync;
      final proto = DiagnosticStateResultProto.create();
      proto.success = diagnosticStateProto;

      final result = proto.unwrap();

      expect(result.isConfigured, isTrue);
      expect(result.userIdentified, isFalse);
      expect(result.permissions, SHDiagnosticStatePermissions.granted);
      expect(result.manualSync.enabled, isFalse);
      expect(result.manualSync.lastSync, isNotNull);
      expect(result.backgroundSync.enabled, isTrue);
      expect(result.backgroundSync.lastSync, isNotNull);
    });

    test("GIVEN failure WHEN unwrap THEN throw exception", () {
      final failure = SDKExceptionProto.create()
        ..message = "message"
        ..code = 500;

      final proto = DiagnosticStateResultProto.create()..failure = failure;

      expect(() => proto.unwrap(), throwsException);
    });
  });
}
