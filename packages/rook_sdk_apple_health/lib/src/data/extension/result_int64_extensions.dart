import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';

extension ResultInt64Extensions on ResultInt64Proto {
  int unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultInt64Proto_Result.value:
        return value.toInt();
      case ResultInt64Proto_Result.genericExceptionProto:
        throw Exception(
          genericExceptionProto.message,
        );
      default:
        throw Exception("Unknown error");
    }
  }
}
