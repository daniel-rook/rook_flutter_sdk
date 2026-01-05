import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/data/result/int64_result.dart';

void main() {
  group("Result", () {
    test(
      "GIVEN success WHEN unwrap THEN return a Int64ResultProto",
      () {
        final proto = Int64ResultProto.create();
        proto.success = Int64(1000);

        final result = proto.unwrap();

        expect(result, 1000);
      },
    );

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
      () {
        final failure = SDKExceptionProto.create()
          ..message = "message"
          ..code = 500;

        final proto = Int64ResultProto.create()..failure = failure;

        expect(proto.unwrap, throwsException);
      },
    );
  });
}
