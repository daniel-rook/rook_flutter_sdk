import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension ResultBooleanExtensions on ResultBooleanProto {
  bool unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultBooleanProto_Result.success:
        return success;
      case ResultBooleanProto_Result.deviceNotSupportedExceptionProto:
        throw DeviceNotSupportedException(
          deviceNotSupportedExceptionProto.message,
        );
      case ResultBooleanProto_Result.healthConnectNotInstalledExceptionProto:
        throw HealthConnectNotInstalledException(
          healthConnectNotInstalledExceptionProto.message,
        );
      case ResultBooleanProto_Result.httpRequestExceptionProto:
        throw HttpRequestException(
          httpRequestExceptionProto.code,
          httpRequestExceptionProto.message,
        );
      case ResultBooleanProto_Result.missingConfigurationExceptionProto:
        throw MissingConfigurationException(
          missingConfigurationExceptionProto.message,
        );
      case ResultBooleanProto_Result.missingPermissionsExceptionProto:
        throw MissingAndroidPermissionsException(
          missingPermissionsExceptionProto.message,
        );
      case ResultBooleanProto_Result.requestQuotaExceededExceptionProto:
        throw RequestQuotaExceededException(
          requestQuotaExceededExceptionProto.message,
        );
      case ResultBooleanProto_Result.sdkNotInitializedExceptionProto:
        throw SDKNotInitializedException(
          sdkNotInitializedExceptionProto.message,
        );
      case ResultBooleanProto_Result.timeoutExceptionProto:
        throw ConnectTimeoutException(
          timeoutExceptionProto.message,
        );
      case ResultBooleanProto_Result.userNotInitializedExceptionProto:
        throw UserNotInitializedException(
          userNotInitializedExceptionProto.message,
        );
      case ResultBooleanProto_Result.missingAndroidPermissionsExceptionProto:
        throw MissingAndroidPermissionsException(
          missingAndroidPermissionsExceptionProto.message,
        );
      case ResultBooleanProto_Result.sdkNotAuthorizedExceptionProto:
        throw SDKNotAuthorizedException(
          sdkNotAuthorizedExceptionProto.message,
        );
      case ResultBooleanProto_Result.genericExceptionProto:
        throw Exception(
          genericExceptionProto.message,
        );
      default:
        throw Exception("Unknown error");
    }
  }
}
