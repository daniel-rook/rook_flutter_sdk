import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/diagnostic_state_permissions.dart';
import 'package:rook_sdk_health_connect/src/domain/model/diagnostic_state.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

void diagnosticStateTest(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
    'MethodChannelRookSdkHealthConnect | DiagnosticStateResultProto value unwrap',
    () {
      mockMethodCall(channel, (_) async {
        const diagnosticStatePermissionsProto =
            DiagnosticStatePermissionsProto.GRANTED;
        final manualSync = DiagnosticSyncStateProto.create()
          ..enabled = false
          ..lastSync = "2022-01-01T00:00:00.000Z";
        final backgroundSync = DiagnosticSyncStateProto.create()
          ..enabled = true
          ..lastSync = "N/A";
        final diagnosticStateProto = DiagnosticStateProto.create()
          ..isConfigured = true
          ..userIdentified = false
          ..permissions = diagnosticStatePermissionsProto
          ..manualSync = manualSync
          ..backgroundSync = backgroundSync;
        final proto = DiagnosticStateResultProto.create();
        proto.success = diagnosticStateProto;

        return proto.writeToBuffer();
      });

      test(
        "GIVEN success WHEN getDiagnosticState THEN return a Data<DailyCalories>",
        () async {
          final future = platform.getDiagnosticState();

          await expectLater(
            future,
            completion(
              predicate<HCDiagnosticState>((diagnosticState) {
                return diagnosticState.isConfigured == true &&
                    diagnosticState.userIdentified == false &&
                    diagnosticState.permissions ==
                        HCDiagnosticStatePermissions.granted &&
                    diagnosticState.manualSync.enabled == false &&
                    diagnosticState.manualSync.lastSync != null &&
                    diagnosticState.backgroundSync.enabled == true &&
                    diagnosticState.backgroundSync.lastSync == null;
              }),
            ),
          );
        },
      );
    },
  );

  group(
    'MethodChannelRookSdkHealthConnect | DiagnosticStateResultProto exception unwrap',
    () {
      mockMethodCall(channel, (_) async {
        final failure = SDKExceptionProto.create()
          ..message = "message"
          ..code = 500;

        final proto = DiagnosticStateResultProto.create()..failure = failure;

        return proto.writeToBuffer();
      });

      test(
        "GIVEN failure WHEN getDiagnosticState THEN throw exception",
        () async {
          final future = platform.getDiagnosticState();

          await expectLater(future, throwsException);
        },
      );
    },
  );
}
