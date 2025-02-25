import 'package:rook_sdk_apple_health/src/data/mapper/daily_calories_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

/// Unwraps the `ResultDailyCaloriesProto` and returns the DailyCalories value if successful.
///
/// This method extracts the `DailyCalories` from the result, converting it from
/// a `DailyCaloriesProto` to a `DailyCalories` domain object.
///
/// Throws an exception if the result is not successful.
///
/// **Exceptions:**
/// * Throws a `PlatformException` if the result contains a `PluginExceptionProto`.
/// * Throws a generic `Exception` if the result type is unknown.
extension ResultDailyCaloriesExtensions on ResultDailyCaloriesProto {
  DailyCalories unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ResultDailyCaloriesProto_Result.dailyCalories:
        return dailyCalories.toDomain();
      case ResultDailyCaloriesProto_Result.pluginExceptionProto:
        throw pluginExceptionProto.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
