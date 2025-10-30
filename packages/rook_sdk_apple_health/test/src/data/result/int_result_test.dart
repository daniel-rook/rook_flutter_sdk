import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/data/result/int_result.dart';

void main() {
  group("Result", () {
    test(
      "GIVEN success WHEN unwrap THEN return an int",
      () {
        final proto = IntResultProto.create()..success = 1;

        final result = proto.unwrap();

        expect(result, 1);
      },
    );

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
      () {
        final failure = PluginExceptionProto.create()
          ..id = -1
          ..message = "message"
          ..code = 500;

        final proto = IntResultProto.create()..failure = failure;

        expect(() => proto.unwrap(), throwsException);
      },
    );
  });
}
