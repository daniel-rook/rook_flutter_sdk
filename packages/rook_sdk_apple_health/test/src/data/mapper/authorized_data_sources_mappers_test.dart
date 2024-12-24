import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/authorized_data_sources_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';

void main() {
  group('AuthorizedDataSourcesProto to AuthorizedDataSources mappers', () {
    test(
      'GIVEN a AuthorizedDataSourcesProto WHEN toDomain THEN return AuthorizedDataSources',
      () {
        final proto = AuthorizedDataSourcesProto.create()
          ..oura = true
          ..polar = false
          ..whoop = true
          ..fitbit = false
          ..garmin = true
          ..withings = false
          ..appleHealth = true
          ..healthConnect = false
          ..android = true;

        final result = proto.toDomain();

        expect(result.oura, true);
        expect(result.polar, false);
        expect(result.whoop, true);
        expect(result.fitbit, false);
        expect(result.garmin, true);
        expect(result.withings, false);
        expect(result.appleHealth, true);
        expect(result.healthConnect, false);
        expect(result.android, true);
      },
    );
  });
}
