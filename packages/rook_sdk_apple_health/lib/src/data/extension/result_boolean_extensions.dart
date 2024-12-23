import 'package:rook_sdk_apple_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';

/// Unwraps the `ResultBooleanProto` and returns a bool if exists.
///
/// Throws an exception if the bool does not exists.
///
/// **Exceptions:**
/// * Throws a `PlatformException` if the result contains a `PluginExceptionProto`.
/// * Throws a generic `Exception` if the result type is unknown.
extension ResultBooleanExtensions on ResultBooleanProto {
  bool unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultBooleanProto_Result.success:
        return success;
      case ResultBooleanProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
