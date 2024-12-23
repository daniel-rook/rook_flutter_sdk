import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

/// Unwraps the `ResultInt64Proto` and returns the integer value if successful.
///
/// This method extracts the integer value from the result, converting it from
/// a 64-bit integer (`value`) to a regular Dart `int`.
///
/// Throws an exception if the result is not successful.
///
/// **Exceptions:**
/// * Throws a `PlatformException` if the result contains a `PluginExceptionProto`.
/// * Throws a generic `Exception` if the result type is unknown.
extension ResultInt64Extensions on ResultInt64Proto {
  int unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultInt64Proto_Result.value:
        return value.toInt();
      case ResultInt64Proto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
