import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/extension/int_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

extension AuthorizedDataSourcesResult on AuthorizedDataSourcesResultProto {
  AuthorizedDataSources unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case AuthorizedDataSourcesResultProto_Result.success:
        return success.toDomain();
      case AuthorizedDataSourcesResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}

extension AuthorizedDataSourcesMapper on AuthorizedDataSourcesProto {
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
