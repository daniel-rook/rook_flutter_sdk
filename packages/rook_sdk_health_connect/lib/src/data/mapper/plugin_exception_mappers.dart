import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension PluginExceptionProtoExtensions on PluginExceptionProto {
  Exception toDartException() {
    return switch (id) {
      _badUserTimeZone => BadUserTimeZoneException(message),
      _dateNotValidForEvents => DateNotValidForEventsException(message),
      _dateNotValidForSummaries => DateNotValidForSummariesException(message),
      _deviceNotSupported => DeviceNotSupportedException(message),
      _healthConnectNotInstalled => HealthConnectNotInstalledException(message),
      _httpRequest => HttpRequestException(code, message),
      _missingAndroidPermissions => MissingAndroidPermissionsException(message),
      _missingConfiguration => MissingConfigurationException(message),
      _missingHealthConnectPermissions =>
        MissingHealthConnectPermissionsException(
          message,
        ),
      _requestQuotaExceeded => RequestQuotaExceededException(message),
      _sdkNotAuthorized => SDKNotAuthorizedException(message),
      _sdkNotInitialized => SDKNotInitializedException(message),
      _timeout => ConnectTimeoutException(message),
      _userNotDeleted => UserNotDeletedException(message),
      _userNotInitialized => UserNotInitializedException(message),
      _userNotRegistered => UserNotRegisteredException(message),
      _ => Exception(message),
    };
  }
}

const _unknown = -1;
const _badUserTimeZone = 1;
const _dateNotValidForEvents = 2;
const _dateNotValidForSummaries = 3;
const _deviceNotSupported = 4;
const _healthConnectNotInstalled = 5;
const _httpRequest = 6;
const _missingAndroidPermissions = 7;
const _missingConfiguration = 8;
const _missingHealthConnectPermissions = 9;
const _requestQuotaExceeded = 10;
const _sdkNotAuthorized = 11;
const _sdkNotInitialized = 12;
const _timeout = 13;
const _userNotDeleted = 14;
const _userNotInitialized = 15;
const _userNotRegistered = 16;
