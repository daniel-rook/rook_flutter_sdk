import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/extension/datetime_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/diagnostic_state_permissions.dart';
import 'package:rook_sdk_health_connect/src/domain/model/diagnostic_state.dart';
import 'package:rook_sdk_health_connect/src/domain/model/diagnostic_sync_state.dart';
import 'package:rook_sdk_health_connect/src/domain/util/check_non_default.dart';

extension DiagnosticStateResult on DiagnosticStateResultProto {
  HCDiagnosticState unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case DiagnosticStateResultProto_Result.success:
        return success.toDomain();
      case DiagnosticStateResultProto_Result.failure:
        final exception = SDKException.fromCode(
          code: failure.code,
          message: failure.message,
        );

        throw exception;
      default:
        throw Exception("Unknown error");
    }
  }
}

extension DiagnosticStateMapper on DiagnosticStateProto {
  HCDiagnosticState toDomain() {
    return HCDiagnosticState(
      isConfigured: isConfigured,
      userIdentified: userIdentified,
      permissions: permissions.toDomain(),
      backgroundSync: backgroundSync.toDomain(),
      manualSync: manualSync.toDomain(),
    );
  }
}

extension DiagnosticSyncStateMapper on DiagnosticSyncStateProto {
  HCDiagnosticSyncState toDomain() {
    return HCDiagnosticSyncState(
      enabled: enabled,
      lastSync: DateTimeExtensions.parseLocalNullable(
        lastSync.checkNonDefault(),
      ),
    );
  }
}

extension DiagnosticStatePermissionsMapper on DiagnosticStatePermissionsProto {
  HCDiagnosticStatePermissions toDomain() {
    if (this == DiagnosticStatePermissionsProto.NONE) {
      return HCDiagnosticStatePermissions.none;
    }

    if (this == DiagnosticStatePermissionsProto.REQUESTED) {
      return HCDiagnosticStatePermissions.requested;
    }

    if (this == DiagnosticStatePermissionsProto.GRANTED) {
      return HCDiagnosticStatePermissions.granted;
    }

    throw Exception("Unknown diagnostic state permissions: $this");
  }
}
