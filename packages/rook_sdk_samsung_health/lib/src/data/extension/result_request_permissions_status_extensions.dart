import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/request_permissions_status_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

/// Unwraps the `ResultRequestPermissionsStatusProto` and returns the `RequestPermissionsStatus` if successful.
///
/// This method extracts the `RequestPermissionsStatus` from the result, converting it from
/// a `RequestPermissionsStatusProto` to a `RequestPermissionsStatus` domain object.
///
/// Throws an exception if the result is not successful.
///
/// **Exceptions:**
/// * Throws a `PlatformException` if the result contains a `PluginExceptionProto`.
/// * Throws a generic `Exception` if the result type is unknown.
extension ResultRequestPermissionsStatusExtensions
    on ResultRequestPermissionsStatusProto {
  RequestPermissionsStatus unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultRequestPermissionsStatusProto_Result
            .requestPermissionsStatusProto:
        return requestPermissionsStatusProto.toDomain();
      case ResultRequestPermissionsStatusProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
