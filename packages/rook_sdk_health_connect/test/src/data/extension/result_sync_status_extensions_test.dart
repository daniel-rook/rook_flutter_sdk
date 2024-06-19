import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_boolean_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_sync_status_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/sync_status.dart';
import 'package:rook_sdk_health_connect/src/domain/exception/device_not_supported_exception.dart';
import 'package:rook_sdk_health_connect/src/domain/exception/health_connect_not_installed_exception.dart';
import 'package:rook_sdk_health_connect/src/domain/exception/request_quota_exceeded_exception.dart';

void main() {
  group('ResultSyncStatusProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final proto = ResultSyncStatusProto.create();
      proto.syncStatusProto = SyncStatusProto.SYNCED;

      final result = proto.unwrap();

      expect(result, SyncStatus.synced);
    });
  });

  group('ResultSyncStatusProto exception', () {
    test(
      'GIVEN a DeviceNotSupportedExceptionProto WHEN unwrap THEN throw DeviceNotSupportedException',
      () {
        final proto = ResultSyncStatusProto.create();
        proto.deviceNotSupportedExceptionProto =
            DeviceNotSupportedExceptionProto(message: error);

        expect(
          proto.unwrap,
          throwsA(
            predicate(
              (exception) =>
                  exception is DeviceNotSupportedException &&
                  exception.message == error,
            ),
          ),
        );
      },
    );

    test(
      'GIVEN a HealthConnectNotInstalledExceptionProto WHEN unwrap THEN throw HealthConnectNotInstalledException',
      () {
        final proto = ResultSyncStatusProto.create();
        proto.healthConnectNotInstalledExceptionProto =
            HealthConnectNotInstalledExceptionProto(message: error);

        expect(
          proto.unwrap,
          throwsA(
            predicate(
              (exception) =>
                  exception is HealthConnectNotInstalledException &&
                  exception.message == error,
            ),
          ),
        );
      },
    );

    test(
      'GIVEN a HttpRequestExceptionProto WHEN unwrap THEN throw HttpRequestException',
      () {
        final proto = ResultSyncStatusProto.create();
        proto.httpRequestExceptionProto =
            HttpRequestExceptionProto(message: error);

        expect(
          proto.unwrap,
          throwsA(
            predicate(
              (exception) =>
                  exception is HttpRequestException &&
                  exception.message == error,
            ),
          ),
        );
      },
    );

    test(
      'GIVEN a MissingPermissionsExceptionProto WHEN unwrap THEN throw MissingPermissionsException',
      () {
        final proto = ResultSyncStatusProto.create();
        proto.missingPermissionsExceptionProto =
            MissingPermissionsExceptionProto(message: error);

        expect(
          proto.unwrap,
          throwsA(
            predicate(
              (exception) =>
                  exception is MissingPermissionsException &&
                  exception.message == error,
            ),
          ),
        );
      },
    );

    test(
      'GIVEN a RequestQuotaExceededExceptionProto WHEN unwrap THEN throw MissingAndroidPermissionsException',
      () {
        final proto = ResultBooleanProto.create();
        proto.requestQuotaExceededExceptionProto =
            RequestQuotaExceededExceptionProto(message: error);

        expect(
          proto.unwrap,
          throwsA(
            predicate(
              (exception) =>
                  exception is RequestQuotaExceededException &&
                  exception.message == error,
            ),
          ),
        );
      },
    );

    test(
      'GIVEN a SDKNotInitializedExceptionProto WHEN unwrap THEN throw SDKNotInitializedException',
      () {
        final proto = ResultSyncStatusProto.create();
        proto.sdkNotInitializedExceptionProto =
            SDKNotInitializedExceptionProto(message: error);

        expect(
          proto.unwrap,
          throwsA(
            predicate(
              (exception) =>
                  exception is SDKNotInitializedException &&
                  exception.message == error,
            ),
          ),
        );
      },
    );

    test(
      'GIVEN a TimeoutExceptionProto WHEN unwrap THEN throw ConnectTimeoutException',
      () {
        final proto = ResultSyncStatusProto.create();
        proto.timeoutExceptionProto = TimeoutExceptionProto(message: error);

        expect(
          proto.unwrap,
          throwsA(
            predicate(
              (exception) =>
                  exception is ConnectTimeoutException &&
                  exception.message == error,
            ),
          ),
        );
      },
    );

    test(
      'GIVEN a UserNotInitializedExceptionProto WHEN unwrap THEN throw UserNotInitializedException',
      () {
        final proto = ResultSyncStatusProto.create();
        proto.userNotInitializedExceptionProto =
            UserNotInitializedExceptionProto(message: error);

        expect(
          proto.unwrap,
          throwsA(
            predicate(
              (exception) =>
                  exception is UserNotInitializedException &&
                  exception.message == error,
            ),
          ),
        );
      },
    );

    test(
      'GIVEN a SDKNotAuthorizedExceptionProto WHEN unwrap THEN throw SDKNotAuthorizedException',
          () {
        final proto = ResultSyncStatusProto.create();
        proto.sdkNotAuthorizedExceptionProto =
            SDKNotAuthorizedExceptionProto(message: error);

        expect(
          proto.unwrap,
          throwsA(
            predicate(
                  (exception) =>
              exception is SDKNotAuthorizedException &&
                  exception.message == error,
            ),
          ),
        );
      },
    );

    test(
      'GIVEN a GenericExceptionProto WHEN unwrap THEN throw Exception',
      () {
        final proto = ResultSyncStatusProto.create();
        proto.genericExceptionProto = GenericExceptionProto(message: error);

        expect(proto.unwrap, throwsException);
      },
    );
  });
}

const error = 'There was an error';
