import 'package:rook_sdk_apple_health/src/data/extension/datetime_extensions.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/diagnostic_state_permissions.dart';
import 'package:rook_sdk_apple_health/src/domain/model/diagnostic_state.dart';
import 'package:rook_sdk_apple_health/src/domain/model/diagnostic_sync_state.dart';
import 'package:rook_sdk_apple_health/src/domain/util/check_non_default.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension DiagnosticStateResult on DiagnosticStateResultProto {
  AHDiagnosticState unwrap() {
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
  AHDiagnosticState toDomain() {
    return AHDiagnosticState(
      isConfigured: isConfigured,
      userIdentified: userIdentified,
      permissions: permissions.toDomain(),
      backgroundSync: backgroundSync.toDomain(),
      manualSync: manualSync.toDomain(),
    );
  }
}

extension DiagnosticSyncStateMapper on DiagnosticSyncStateProto {
  AHDiagnosticSyncState toDomain() {
    return AHDiagnosticSyncState(
      enabled: enabled,
      lastSync: DateTimeExtensions.parseLocalNullable(
        lastSync.checkNonDefault(),
      ),
    );
  }
}

extension DiagnosticStatePermissionsMapper on DiagnosticStatePermissionsProto {
  AHDiagnosticStatePermissions toDomain() {
    if (this == DiagnosticStatePermissionsProto.NONE) {
      return AHDiagnosticStatePermissions.none;
    }

    if (this == DiagnosticStatePermissionsProto.REQUESTED) {
      return AHDiagnosticStatePermissions.requested;
    }

    throw Exception("Unknown diagnostic state permissions: $this");
  }
}
