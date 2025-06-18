import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/domain/exception/samsung_health_disabled_exception.dart';
import 'package:rook_sdk_samsung_health/src/domain/exception/samsung_health_not_installed_exception.dart';
import 'package:rook_sdk_samsung_health/src/domain/exception/samsung_health_not_ready_exception.dart';
import 'package:rook_sdk_samsung_health/src/domain/exception/samsung_health_outdated_exception.dart';

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
      'GIVEN id = 1 WHEN toDartException THEN return SamsungHealthDisabledException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<SamsungHealthDisabledException>());
        expect((result as SamsungHealthDisabledException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 2 WHEN toDartException THEN return SamsungHealthNotInstalledException',
          () {
        final proto = PluginExceptionProto.create()
          ..id = 2
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<SamsungHealthNotInstalledException>());
        expect((result as SamsungHealthNotInstalledException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 3 WHEN toDartException THEN return SamsungHealthNotReadyException',
          () {
        final proto = PluginExceptionProto.create()
          ..id = 3
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<SamsungHealthNotReadyException>());
        expect((result as SamsungHealthNotReadyException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 4 WHEN toDartException THEN return SamsungHealthOutdatedException',
          () {
        final proto = PluginExceptionProto.create()
          ..id = 4
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<SamsungHealthOutdatedException>());
        expect((result as SamsungHealthOutdatedException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 5 WHEN toDartException THEN return DateNotValidForEventsException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 5
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<DateNotValidForEventsException>());
        expect((result as DateNotValidForEventsException).message,
            _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 6 WHEN toDartException THEN return DateNotValidForSummariesException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 6
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<DateNotValidForSummariesException>());
        expect((result as DateNotValidForSummariesException).message,
            _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 7 WHEN toDartException THEN return HttpRequestException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 7
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
      'GIVEN id = 8 WHEN toDartException THEN return SDKNotAuthorizedException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 8
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<SDKNotAuthorizedException>());
        expect(
            (result as SDKNotAuthorizedException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 9 WHEN toDartException THEN return SDKNotInitializedException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 9
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<SDKNotInitializedException>());
        expect(
            (result as SDKNotInitializedException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 10 WHEN toDartException THEN return ConnectTimeoutException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 10
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<ConnectTimeoutException>());
        expect((result as ConnectTimeoutException).message, _exceptionMessage);
      },
    );

    test(
      'GIVEN id = 11 WHEN toDartException THEN return UserNotInitializedException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 11
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<UserNotInitializedException>());
        expect(
            (result as UserNotInitializedException).message, _exceptionMessage);
      },
    );
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
