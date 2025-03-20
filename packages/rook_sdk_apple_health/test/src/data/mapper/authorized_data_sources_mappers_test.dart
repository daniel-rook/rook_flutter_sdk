import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/authorized_data_sources_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';

void main() {
  group('AuthorizedDataSourcesProto to AuthorizedDataSources mappers', () {
    test(
      'GIVEN a AuthorizedDataSourcesProto WHEN toDomain THEN return AuthorizedDataSources',
          () {
        final proto = AuthorizedDataSourcesProto.create()
          ..oura = 0
          ..polar = 1
          ..whoop = 2
          ..fitbit = 0
          ..garmin = 1
          ..withings = 2
          ..dexcom = 0
          ..appleHealth = 1
          ..healthConnect = 2
          ..android = 0;

        final result = proto.toDomain();

        expect(result.oura, false);
        expect(result.polar, true);
        expect(result.whoop, null);
        expect(result.fitbit, false);
        expect(result.garmin, true);
        expect(result.withings, null);
        expect(result.dexcom, false);
        expect(result.appleHealth, true);
        expect(result.healthConnect, null);
        expect(result.android, false);
      },
    );
  });
}
