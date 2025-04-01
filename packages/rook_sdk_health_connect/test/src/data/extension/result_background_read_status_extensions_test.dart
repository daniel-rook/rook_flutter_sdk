import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_background_read_status_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

void main() {
  group('ResultBackgroundReadStatusProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final proto = ResultBackgroundReadStatusProto.create();
      proto.backgroundReadStatusProto =
          BackgroundReadStatusProto.PERMISSION_GRANTED;

      final result = proto.unwrap();

      expect(result, true);
    });
  });

  group('ResultBackgroundReadStatusProto exception', () {
    test(
      'GIVEN the unhappy path WHEN unwrap THEN throw an Exception',
      () {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultBackgroundReadStatusProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        expect(proto.unwrap, throwsA(isException));
      },
    );
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
