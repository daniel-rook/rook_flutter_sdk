import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/sync_status_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/exception/device_not_supported_exception.dart';
import 'package:rook_sdk_health_connect/src/domain/exception/health_connect_not_installed_exception.dart';
import 'package:rook_sdk_health_connect/src/domain/exception/request_quota_exceeded_exception.dart';

extension ResultSyncStatusExtensions on ResultSyncStatusProto {
  SyncStatus unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultSyncStatusProto_Result.syncStatusProto:
        return syncStatusProto.toDomain();
      case ResultSyncStatusProto_Result.deviceNotSupportedExceptionProto:
        throw DeviceNotSupportedException(
          deviceNotSupportedExceptionProto.message,
        );
      case ResultSyncStatusProto_Result.healthConnectNotInstalledExceptionProto:
        throw HealthConnectNotInstalledException(
          healthConnectNotInstalledExceptionProto.message,
        );
      case ResultSyncStatusProto_Result.httpRequestExceptionProto:
        throw HttpRequestException(
          httpRequestExceptionProto.message,
          httpRequestExceptionProto.code,
        );
      case ResultSyncStatusProto_Result.missingPermissionsExceptionProto:
        throw MissingPermissionsException(
          missingPermissionsExceptionProto.message,
        );
      case ResultSyncStatusProto_Result.requestQuotaExceededExceptionProto:
        throw RequestQuotaExceededException(
          requestQuotaExceededExceptionProto.message,
        );
      case ResultSyncStatusProto_Result.sdkNotInitializedExceptionProto:
        throw SDKNotInitializedException(
          sdkNotInitializedExceptionProto.message,
        );
      case ResultSyncStatusProto_Result.timeoutExceptionProto:
        throw ConnectTimeoutException(
          timeoutExceptionProto.message,
        );
      case ResultSyncStatusProto_Result.userNotInitializedExceptionProto:
        throw UserNotInitializedException(
          userNotInitializedExceptionProto.message,
        );
      case ResultSyncStatusProto_Result.sdkNotAuthorizedExceptionProto:
        throw SDKNotAuthorizedException(
          sdkNotAuthorizedExceptionProto.message,
        );
      case ResultSyncStatusProto_Result.genericExceptionProto:
        throw Exception(
          genericExceptionProto.message,
        );
      default:
        throw Exception("Unknown error");
    }
  }
}
