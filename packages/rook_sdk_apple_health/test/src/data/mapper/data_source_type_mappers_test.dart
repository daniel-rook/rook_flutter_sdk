import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/data_source_type_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

void main() {
  group('DataSourceType to DataSourceTypeProto mappers', () {
    test(
      'GIVEN DataSourceType.fitbit WHEN toProto THEN return DataSourceTypeProto.FITBIT',
      () {
        const dataSourceType = DataSourceType.fitbit;
        final result = dataSourceType.toProto();

        expect(result, DataSourceTypeProto.FITBIT);
      },
    );

    test(
      'GIVEN DataSourceType.garmin WHEN toProto THEN return DataSourceTypeProto.GARMIN',
      () {
        const dataSourceType = DataSourceType.garmin;
        final result = dataSourceType.toProto();

        expect(result, DataSourceTypeProto.GARMIN);
      },
    );

    test(
      'GIVEN DataSourceType.oura WHEN toProto THEN return DataSourceTypeProto.OURA',
      () {
        const dataSourceType = DataSourceType.oura;
        final result = dataSourceType.toProto();

        expect(result, DataSourceTypeProto.OURA);
      },
    );

    test(
      'GIVEN DataSourceType.polar WHEN toProto THEN return DataSourceTypeProto.POLAR',
      () {
        const dataSourceType = DataSourceType.polar;
        final result = dataSourceType.toProto();

        expect(result, DataSourceTypeProto.POLAR);
      },
    );

    test(
      'GIVEN DataSourceType.whoop WHEN toProto THEN return DataSourceTypeProto.WHOOP',
      () {
        const dataSourceType = DataSourceType.whoop;
        final result = dataSourceType.toProto();

        expect(result, DataSourceTypeProto.WHOOP);
      },
    );

    test(
      'GIVEN DataSourceType.withings WHEN toProto THEN return DataSourceTypeProto.WITHINGS',
      () {
        const dataSourceType = DataSourceType.withings;
        final result = dataSourceType.toProto();

        expect(result, DataSourceTypeProto.WITHINGS);
      },
    );
  });
}
