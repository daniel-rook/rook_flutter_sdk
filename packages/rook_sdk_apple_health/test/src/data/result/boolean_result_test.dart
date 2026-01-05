import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/data/result/boolean_result.dart';

void main() {
  group("Result", () {
    test(
      "GIVEN success WHEN unwrap THEN return a BooleanResultProto",
      () {
        final proto = BooleanResultProto.create();
        proto.success = true;

        final result = proto.unwrap();

        expect(result, true);
      },
    );

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
      () {
        final failure = SDKExceptionProto.create()
          ..message = "message"
          ..code = 500;

        final proto = BooleanResultProto.create()..failure = failure;

        expect(proto.unwrap, throwsException);
      },
    );
  });
}
