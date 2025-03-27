import 'package:rook_sdk_health_connect/src/data/mapper/background_read_status_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_background_read_status.dart';

/// Unwraps the `ResultBackgroundReadStatusProto` and returns a HCBackgroundReadStatus if exists.
///
/// Throws an exception if the HCBackgroundReadStatus does not exists.
///
/// **Exceptions:**
/// * Throws a `DartException` if the result contains a `PluginExceptionProto`.
/// * Throws a generic `Exception` if the result type is unknown.
extension ResultBackgroundReadStatusExtensions
    on ResultBackgroundReadStatusProto {
  HCBackgroundReadStatus unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultBackgroundReadStatusProto_Result.backgroundReadStatusProto:
        return backgroundReadStatusProto.toDomain();
      case ResultBackgroundReadStatusProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
