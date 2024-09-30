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
      'GIVEN id = 1 WHEN toDartException THEN return MissingConfigurationException',
      () {
        final proto = PluginExceptionProto.create()
          ..id = 1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final result = proto.toDartException();

        expect(result, isA<MissingConfigurationException>());
        expect((result as MissingConfigurationException).message,
            _exceptionMessage);
      },
    );
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
