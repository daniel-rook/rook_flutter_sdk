import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/extension/datetime_extensions.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/domain/util/check_non_default.dart';

extension DiagnosticStateResult on DiagnosticStateResultProto {
  DiagnosticState unwrap() {
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
  DiagnosticState toDomain() {
    return DiagnosticState(
      isConfigured: isConfigured,
      userIdentified: userIdentified,
      permissions: permissions.toDomain(),
      backgroundSync: backgroundSync.toDomain(),
      manualSync: manualSync.toDomain(),
    );
  }
}

extension DiagnosticSyncStateMapper on DiagnosticSyncStateProto {
  DiagnosticSyncState toDomain() {
    return DiagnosticSyncState(
      enabled: enabled,
      lastSync: DateTimeExtensions.parseLocalNullable(
        lastSync.checkNonDefault(),
      ),
    );
  }
}

extension DiagnosticStatePermissionsMapper on DiagnosticStatePermissionsProto {
  DiagnosticStatePermissions toDomain() {
    if (this == DiagnosticStatePermissionsProto.NOT_REQUESTED) {
      return DiagnosticStatePermissions.notRequested;
    }

    if (this == DiagnosticStatePermissionsProto.REQUESTED) {
      return DiagnosticStatePermissions.requested;
    }

    if (this == DiagnosticStatePermissionsProto.GRANTED) {
      return DiagnosticStatePermissions.granted;
    }

    throw Exception("Unknown diagnostic state permissions: $this");
  }
}
