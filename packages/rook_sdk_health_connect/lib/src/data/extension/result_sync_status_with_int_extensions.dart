import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/sync_status_with_int_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

/// Unwraps the `ResultSyncStatusWithIntProto` and returns the `SyncStatusWithData<int?>` if successful.
///
/// This method extracts the `SyncStatusWithData<int?>` from the result, converting it from
/// a `SyncStatusWithIntProto` to a `SyncStatusWithData<int?>` domain object.
///
/// Throws an exception if the result is not successful.
///
/// **Exceptions:**
/// * Throws a `PlatformException` if the result contains a `PluginExceptionProto`.
/// * Throws a generic `Exception` if the result type is unknown.
extension ResultSyncStatusWithIntExtensions on ResultSyncStatusWithIntProto {
  SyncStatusWithData<int?> unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultSyncStatusWithIntProto_Result.syncStatusWithIntProto:
        return syncStatusWithIntProto.toDomain();
      case ResultSyncStatusWithIntProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
