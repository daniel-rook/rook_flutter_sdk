import 'package:rook_sdk_core/src/exception/connect_timeout_exception.dart';
import 'package:rook_sdk_core/src/exception/date_not_valid_for_events_exception.dart';
import 'package:rook_sdk_core/src/exception/date_not_valid_for_summaries_exception.dart';
import 'package:rook_sdk_core/src/exception/health_connect_quota_exceeded_exception.dart';
import 'package:rook_sdk_core/src/exception/health_kit_disabled_exception.dart';
import 'package:rook_sdk_core/src/exception/health_kit_not_installed_exception.dart';
import 'package:rook_sdk_core/src/exception/health_kit_not_ready_exception.dart';
import 'package:rook_sdk_core/src/exception/health_kit_not_supported_exception.dart';
import 'package:rook_sdk_core/src/exception/health_kit_outdated_exception.dart';
import 'package:rook_sdk_core/src/exception/http_request_exception.dart';
import 'package:rook_sdk_core/src/exception/missing_configuration_exception.dart';
import 'package:rook_sdk_core/src/exception/missing_permissions_exception.dart';
import 'package:rook_sdk_core/src/exception/records_not_found_exception.dart';
import 'package:rook_sdk_core/src/exception/sdk_exception_code.dart';
import 'package:rook_sdk_core/src/exception/sdk_not_authorized_exception.dart';
import 'package:rook_sdk_core/src/exception/sdk_not_initialized_exception.dart';
import 'package:rook_sdk_core/src/exception/session_expired_exception.dart';
import 'package:rook_sdk_core/src/exception/unknown_exception.dart';
import 'package:rook_sdk_core/src/exception/user_not_initialized_exception.dart';

abstract class SDKException implements Exception {
  final int code;
  final String message;

  const SDKException({required this.code, required this.message});

  static SDKException fromCode({required int code, required String message}) {
    return switch (code) {
      SDKExceptionCode.sdkNotInitialized => SDKNotInitializedException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.missingConfiguration => MissingConfigurationException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.notAuthorized => SDKNotAuthorizedException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.missingPermissions => MissingPermissionsException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.healthKitNotInstalled => HealthKitNotInstalledException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.healthKitNotSupported => HealthKitNotSupportedException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.recordsNotFound => RecordsNotFoundException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.dateNotValidEvent => DateNotValidForEventsException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.dateNotValidSummary => DateNotValidForSummariesException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.userNotInitialized => UserNotInitializedException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.httpRequest => HttpRequestException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.timeout => ConnectTimeoutException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.quotaExceeded => HealthConnectQuotaExceededException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.healthKitDisabled => HealthKitDisabledException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.healthKitNotReady => HealthKitNotReadyException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.healthKitOutdated => HealthKitOutdatedException(
        code: code,
        message: message,
      ),
      SDKExceptionCode.sessionExpired => SessionExpiredException(
        code: code,
        message: message,
      ),
      _ => UnknownException(message: message),
    };
  }
}
