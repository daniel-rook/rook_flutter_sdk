import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/extension/result_int64_extensions.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';

void main() {
  group('ResultInt64Proto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final proto = ResultInt64Proto.create();
      proto.value = Int64(1000);

      final result = proto.unwrap();

      expect(result, 1000);
    });
  });

  group('ResultInt64Proto exception', () {
    test(
      'GIVEN a GenericExceptionProto WHEN unwrap THEN throw Exception',
      () {
        final proto = ResultInt64Proto.create();
        proto.genericExceptionProto = GenericExceptionProto(message: error);

        expect(proto.unwrap, throwsException);
      },
    );
  });
}

const error = 'There was an error';
