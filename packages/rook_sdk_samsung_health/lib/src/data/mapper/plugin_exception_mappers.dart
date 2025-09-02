import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/domain/exception/samsung_health_disabled_exception.dart';
import 'package:rook_sdk_samsung_health/src/domain/exception/samsung_health_not_installed_exception.dart';
import 'package:rook_sdk_samsung_health/src/domain/exception/samsung_health_not_ready_exception.dart';
import 'package:rook_sdk_samsung_health/src/domain/exception/samsung_health_outdated_exception.dart';

extension PluginExceptionProtoExtensions on PluginExceptionProto {
  Exception toDartException() {
    return switch (id) {
      _samsungHealthDisabled => SamsungHealthDisabledException(message),
      _samsungHealthNotInstalled => SamsungHealthNotInstalledException(message),
      _samsungHealthNotReady => SamsungHealthNotReadyException(message),
      _samsungHealthOutdated => SamsungHealthOutdatedException(message),
      _dateNotValidForEvents => DateNotValidForEventsException(message),
      _dateNotValidForSummaries => DateNotValidForSummariesException(message),
      _httpRequest => HttpRequestException(code, message),
      _sdkNotAuthorized => SDKNotAuthorizedException(message),
      _sdkNotInitialized => SDKNotInitializedException(message),
      _timeout => ConnectTimeoutException(message),
      _userNotInitialized => UserNotInitializedException(message),
      _ => Exception(message),
    };
  }
}

const _samsungHealthDisabled = 1;
const _samsungHealthNotInstalled = 2;
const _samsungHealthNotReady = 3;
const _samsungHealthOutdated = 4;
const _dateNotValidForEvents = 5;
const _dateNotValidForSummaries = 6;
const _httpRequest = 7;
const _sdkNotAuthorized = 8;
const _sdkNotInitialized = 9;
const _timeout = 10;
const _userNotInitialized = 11;
