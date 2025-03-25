import 'package:rook_sdk_apple_health/src/data/mapper/int_extensions.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension AuthorizedDataSourceMappers on AuthorizedDataSourcesProto {
  AuthorizedDataSources toDomain() {
    return AuthorizedDataSources(
      oura: oura.toBoolOrNull(),
      polar: polar.toBoolOrNull(),
      whoop: whoop.toBoolOrNull(),
      fitbit: fitbit.toBoolOrNull(),
      garmin: garmin.toBoolOrNull(),
      withings: withings.toBoolOrNull(),
      dexcom: dexcom.toBoolOrNull(),
      appleHealth: appleHealth.toBoolOrNull(),
      healthConnect: healthConnect.toBoolOrNull(),
      android: android.toBoolOrNull(),
    );
  }
}
