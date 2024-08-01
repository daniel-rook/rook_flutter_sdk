import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/sync_status_with_data_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension ResultSyncStatusWithIntExtensions on ResultSyncStatusWithIntProto {
  SyncStatusWithData<int?> unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultSyncStatusWithIntProto_Result.syncStatusWithIntProto:
        return syncStatusWithIntProto.toDomain();
      case ResultSyncStatusWithIntProto_Result.deviceNotSupportedExceptionProto:
        throw DeviceNotSupportedException(
          deviceNotSupportedExceptionProto.message,
        );
      case ResultSyncStatusWithIntProto_Result
            .healthConnectNotInstalledExceptionProto:
        throw HealthConnectNotInstalledException(
          healthConnectNotInstalledExceptionProto.message,
        );
      case ResultSyncStatusWithIntProto_Result.httpRequestExceptionProto:
        throw HttpRequestException(
          httpRequestExceptionProto.code,
          httpRequestExceptionProto.message,
        );
      case ResultSyncStatusWithIntProto_Result.missingPermissionsExceptionProto:
        throw MissingAndroidPermissionsException(
          missingPermissionsExceptionProto.message,
        );
      case ResultSyncStatusWithIntProto_Result
            .requestQuotaExceededExceptionProto:
        throw RequestQuotaExceededException(
          requestQuotaExceededExceptionProto.message,
        );
      case ResultSyncStatusWithIntProto_Result.sdkNotInitializedExceptionProto:
        throw SDKNotInitializedException(
          sdkNotInitializedExceptionProto.message,
        );
      case ResultSyncStatusWithIntProto_Result.timeoutExceptionProto:
        throw ConnectTimeoutException(
          timeoutExceptionProto.message,
        );
      case ResultSyncStatusWithIntProto_Result.userNotInitializedExceptionProto:
        throw UserNotInitializedException(
          userNotInitializedExceptionProto.message,
        );
      case ResultSyncStatusWithIntProto_Result.sdkNotAuthorizedExceptionProto:
        throw SDKNotAuthorizedException(
          sdkNotAuthorizedExceptionProto.message,
        );
      case ResultSyncStatusWithIntProto_Result.genericExceptionProto:
        throw Exception(
          genericExceptionProto.message,
        );
      default:
        throw Exception("Unknown error");
    }
  }
}
