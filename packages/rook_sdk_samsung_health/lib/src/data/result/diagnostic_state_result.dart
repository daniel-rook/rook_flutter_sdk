import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/extension/datetime_extensions.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/diagnostic_state_permissions.dart';
import 'package:rook_sdk_samsung_health/src/domain/model/diagnostic_state.dart';
import 'package:rook_sdk_samsung_health/src/domain/model/diagnostic_sync_state.dart';
import 'package:rook_sdk_samsung_health/src/domain/util/check_non_default.dart';

extension DiagnosticStateResult on DiagnosticStateResultProto {
  SHDiagnosticState unwrap() {
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
  SHDiagnosticState toDomain() {
    return SHDiagnosticState(
      isConfigured: isConfigured,
      userIdentified: userIdentified,
      permissions: permissions.toDomain(),
      backgroundSync: backgroundSync.toDomain(),
      manualSync: manualSync.toDomain(),
    );
  }
}

extension DiagnosticSyncStateMapper on DiagnosticSyncStateProto {
  SHDiagnosticSyncState toDomain() {
    return SHDiagnosticSyncState(
      enabled: enabled,
      lastSync: DateTimeExtensions.parseLocalNullable(
        lastSync.checkNonDefault(),
      ),
    );
  }
}

extension DiagnosticStatePermissionsMapper on DiagnosticStatePermissionsProto {
  SHDiagnosticStatePermissions toDomain() {
    if (this == DiagnosticStatePermissionsProto.NONE) {
      return SHDiagnosticStatePermissions.none;
    }

    if (this == DiagnosticStatePermissionsProto.REQUESTED) {
      return SHDiagnosticStatePermissions.requested;
    }

    if (this == DiagnosticStatePermissionsProto.GRANTED) {
      return SHDiagnosticStatePermissions.granted;
    }

    throw Exception("Unknown diagnostic state permissions: $this");
  }
}
