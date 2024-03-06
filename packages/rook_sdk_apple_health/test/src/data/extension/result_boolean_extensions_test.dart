import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/extension/result_boolean_extensions.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

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
      'GIVEN a MissingConfigurationExceptionProto WHEN unwrap THEN throw MissingConfigurationException',
      () {
        final proto = ResultBooleanProto.create();
        proto.missingConfigurationExceptionProto =
            MissingConfigurationExceptionProto(message: error);

        expect(
          proto.unwrap,
          throwsA(
            predicate(
              (exception) =>
                  exception is MissingConfigurationException &&
                  exception.message == error,
            ),
          ),
        );
      },
    );

    test(
      'GIVEN a GenericExceptionProto WHEN unwrap THEN throw Exception',
      () {
        final proto = ResultBooleanProto.create();
        proto.genericExceptionProto = GenericExceptionProto(message: error);

        expect(proto.unwrap, throwsException);
      },
    );
  });
}

const error = 'There was an error';
