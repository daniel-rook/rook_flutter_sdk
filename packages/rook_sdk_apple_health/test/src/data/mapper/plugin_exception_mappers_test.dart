import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

void main() {
  group('PluginExceptionProto to Exception mappers', () {
    test(
      'GIVEN id = -1 WHEN toDartException THEN return Exception',
      () {
        final proto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<Exception>());
        expect(result.toString(), "Exception: $_exceptionMessage");
      },
    );

    test(
      'GIVEN id = 1 WHEN toDartException THEN return BadUserTimeZoneException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<BadUserTimeZoneException>());
        expect((result as BadUserTimeZoneException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 2 WHEN toDartException THEN return DateNotValidForEventsException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 2
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<DateNotValidForEventsException>());
        expect((result as DateNotValidForEventsException).message,
            _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 3 WHEN toDartException THEN return DateNotValidForSummariesException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 3
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<DateNotValidForSummariesException>());
        expect((result as DateNotValidForSummariesException).message,
            _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 4 WHEN toDartException THEN return DeviceNotSupportedException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 4
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<DeviceNotSupportedException>());
        expect(
            (result as DeviceNotSupportedException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 5 WHEN toDartException THEN return HealthConnectNotInstalledException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 5
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<HealthConnectNotInstalledException>());
        expect((result as HealthConnectNotInstalledException).message,
            _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 6 WHEN toDartException THEN return HttpRequestException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 6
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<HttpRequestException>());

        final httpRequestException = result as HttpRequestException;

        expect(httpRequestException.error, _exceptionMessage);
        expect(httpRequestException.code, _exceptionCode);
      },
    );

    test(
      'GIVEN id = 7 WHEN toDartException THEN return MissingAndroidPermissionsException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 7
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<MissingAndroidPermissionsException>());
        expect((result as MissingAndroidPermissionsException).message,
            _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 8 WHEN toDartException THEN return MissingConfigurationException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 8
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<MissingConfigurationException>());
        expect((result as MissingConfigurationException).message,
            _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 9 WHEN toDartException THEN return MissingHealthConnectPermissionsException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 9
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<MissingHealthConnectPermissionsException>());
        expect((result as MissingHealthConnectPermissionsException).message,
            _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 10 WHEN toDartException THEN return RequestQuotaExceededException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 10
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<RequestQuotaExceededException>());
        expect((result as RequestQuotaExceededException).message,
            _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 11 WHEN toDartException THEN return SDKNotAuthorizedException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 11
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<SDKNotAuthorizedException>());
        expect(
            (result as SDKNotAuthorizedException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 12 WHEN toDartException THEN return SDKNotInitializedException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 12
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<SDKNotInitializedException>());
        expect(
            (result as SDKNotInitializedException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 13 WHEN toDartException THEN return ConnectTimeoutException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 13
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<ConnectTimeoutException>());
        expect((result as ConnectTimeoutException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 14 WHEN toDartException THEN return UserNotDeletedException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 14
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<UserNotDeletedException>());
        expect((result as UserNotDeletedException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 15 WHEN toDartException THEN return UserNotInitializedException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 15
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<UserNotInitializedException>());
        expect(
            (result as UserNotInitializedException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 16 WHEN toDartException THEN return UserNotRegisteredException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 16
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<UserNotRegisteredException>());
        expect(
            (result as UserNotRegisteredException).message, _exceptionMessage);
      },
    );
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
