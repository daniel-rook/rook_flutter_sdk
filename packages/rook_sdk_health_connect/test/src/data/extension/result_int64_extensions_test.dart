import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_int64_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

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
      'GIVEN a SDKNotInitializedExceptionProto WHEN unwrap THEN throw SDKNotInitializedException',
      () {
        final proto = ResultInt64Proto.create();
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
      'GIVEN a SDKNotAuthorizedExceptionProto WHEN unwrap THEN throw SDKNotAuthorizedException',
      () {
        final proto = ResultInt64Proto.create();
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
        final proto = ResultInt64Proto.create();
        proto.genericExceptionProto = GenericExceptionProto(message: error);

        expect(proto.unwrap, throwsException);
      },
    );
  });
}

const error = 'There was an error';
