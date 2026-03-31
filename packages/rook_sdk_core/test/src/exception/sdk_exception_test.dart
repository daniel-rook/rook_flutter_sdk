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
import 'package:rook_sdk_core/src/exception/sdk_exception.dart';
import 'package:rook_sdk_core/src/exception/sdk_not_authorized_exception.dart';
import 'package:rook_sdk_core/src/exception/sdk_not_initialized_exception.dart';
import 'package:rook_sdk_core/src/exception/session_expired_exception.dart';
import 'package:rook_sdk_core/src/exception/unknown_exception.dart';
import 'package:rook_sdk_core/src/exception/user_not_initialized_exception.dart';
import 'package:test/test.dart';

void main() {
  group("should map all codes to their respective exception types", () {
    final cases = {
      1: isA<SDKNotInitializedException>(),
      2: isA<MissingConfigurationException>(),
      3: isA<SDKNotAuthorizedException>(),
      4: isA<MissingPermissionsException>(),
      5: isA<HealthKitNotInstalledException>(),
      6: isA<HealthKitNotSupportedException>(),
      7: isA<RecordsNotFoundException>(),
      8: isA<DateNotValidForEventsException>(),
      9: isA<DateNotValidForSummariesException>(),
      10: isA<UserNotInitializedException>(),
      11: isA<HttpRequestException>(),
      12: isA<ConnectTimeoutException>(),
      13: isA<HealthConnectQuotaExceededException>(),
      14: isA<HealthKitDisabledException>(),
      15: isA<HealthKitNotReadyException>(),
      16: isA<HealthKitOutdatedException>(),
      17: isA<SessionExpiredException>(),
      -1: isA<UnknownException>(),
    };

    cases.forEach((code, expectedMatcher) {
      test('$code should map to $expectedMatcher', () {
        final result = SDKException.fromCode(code: code, message: 'error');
        expect(result, expectedMatcher, reason: 'Failed for code: $code');
      });
    });
  });
}
