import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/sync_status_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

/// Unwraps the `ResultSyncStatusProto` and returns the `SyncStatus` if successful.
///
/// This method extracts the `SyncStatus` from the result, converting it from
/// a `SyncStatusProto` to a `SyncStatus` domain object.
///
/// Throws an exception if the result is not successful.
///
/// **Exceptions:**
/// * Throws a `PlatformException` if the result contains a `PluginExceptionProto`.
/// * Throws a generic `Exception` if the result type is unknown.
extension ResultSyncStatusExtensions on ResultSyncStatusProto {
  SyncStatus unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultSyncStatusProto_Result.syncStatusProto:
        return syncStatusProto.toDomain();
      case ResultSyncStatusProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
