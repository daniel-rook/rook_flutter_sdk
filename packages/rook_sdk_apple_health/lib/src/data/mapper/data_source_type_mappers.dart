import 'package:rook_sdk_apple_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension DataSourceTypeMappers on DataSourceType {
  DataSourceTypeProto toProto() {
    return switch (this) {
      DataSourceType.garmin => DataSourceTypeProto.GARMIN,
      DataSourceType.oura => DataSourceTypeProto.OURA,
      DataSourceType.polar => DataSourceTypeProto.POLAR,
      DataSourceType.fitbit => DataSourceTypeProto.FITBIT,
      DataSourceType.withings => DataSourceTypeProto.WITHINGS,
      DataSourceType.whoop => DataSourceTypeProto.WHOOP,
    };
  }
}
