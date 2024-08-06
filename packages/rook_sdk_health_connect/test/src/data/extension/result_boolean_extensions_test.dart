import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_boolean_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

void main() {
  group('ResultBooleanProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final proto = ResultBooleanProto.create();
      proto.success = true;

      final result = proto.unwrap();

      expect(result, true);
    });
  });

  group('ResultBooleanProto exception', () {
    test(
      'GIVEN the unhappy path WHEN unwrap THEN throw an Exception',
      () {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultBooleanProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        expect(proto.unwrap, throwsA(isException));
      },
    );
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
