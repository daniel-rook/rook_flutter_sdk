import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/sync_status_with_daily_calories_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

/// Unwraps the `ResultSyncStatusWithDailyCaloriesProto` and returns the `SyncStatusWithData<DailyCalories>` if successful.
///
/// This method extracts the `SyncStatusWithData<DailyCalories>` from the result, converting it from
/// a `SyncStatusWithDailyCaloriesProto` to a `SyncStatusWithData<DailyCalories>` domain object.
///
/// Throws an exception if the result is not successful.
///
/// **Exceptions:**
/// * Throws a `PlatformException` if the result contains a `PluginExceptionProto`.
/// * Throws a generic `Exception` if the result type is unknown.
extension ResultSyncStatusWithDailyCaloriesExtensions
    on ResultSyncStatusWithDailyCaloriesProto {
  SyncStatusWithData<DailyCalories> unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultSyncStatusWithDailyCaloriesProto_Result
            .syncStatusWithDailyCaloriesProto:
        return syncStatusWithDailyCaloriesProto.toDomain();
      case ResultSyncStatusWithDailyCaloriesProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
