import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_boolean_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_sync_status_with_int_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/sync_status_with_data.dart';
import 'package:rook_sdk_health_connect/src/domain/exception/device_not_supported_exception.dart';
import 'package:rook_sdk_health_connect/src/domain/exception/health_connect_not_installed_exception.dart';
import 'package:rook_sdk_health_connect/src/domain/exception/request_quota_exceeded_exception.dart';

void main() {
  group('ResultSyncStatusWithIntProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final proto = ResultSyncStatusWithIntProto.create();
      proto.syncStatusWithIntProto = SyncStatusWithIntProto.create()
        ..syncStatus = SyncStatusProto.SYNCED
        ..steps = 1;

      final result = proto.unwrap();

      expect(result, isA<Synced<int?>>());

      final steps = (result as Synced<int?>).data;

      expect(steps, 1);
    });
  });

  group('ResultSyncStatusWithIntProto exception', () {
    test(
      'GIVEN a DeviceNotSupportedExceptionProto WHEN unwrap THEN throw DeviceNotSupportedException',
      () {
        final proto = ResultSyncStatusWithIntProto.create();
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
        final proto = ResultSyncStatusWithIntProto.create();
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
        final proto = ResultSyncStatusWithIntProto.create();
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
        final proto = ResultSyncStatusWithIntProto.create();
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
        final proto = ResultSyncStatusWithIntProto.create();
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
        final proto = ResultSyncStatusWithIntProto.create();
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
        final proto = ResultSyncStatusWithIntProto.create();
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
        final proto = ResultSyncStatusWithIntProto.create();
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
        final proto = ResultSyncStatusWithIntProto.create();
        proto.genericExceptionProto = GenericExceptionProto(message: error);

        expect(proto.unwrap, throwsException);
      },
    );
  });
}

const error = 'There was an error';
