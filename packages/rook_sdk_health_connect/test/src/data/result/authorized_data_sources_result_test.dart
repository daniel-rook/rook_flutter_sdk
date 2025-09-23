import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/data/result/authorized_data_sources_result.dart';

void main() {
  group("Mapper", () {
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

  group("Result", () {
    test(
      "GIVEN success WHEN unwrap THEN return a AuthorizedDataSources",
      () {
        final authorizedDataSourcesProto = AuthorizedDataSourcesProto.create()
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

        final proto = AuthorizedDataSourcesResultProto.create()
          ..success = authorizedDataSourcesProto;

        final result = proto.unwrap();

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

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
      () {
        final failure = PluginExceptionProto.create()
          ..id = -1
          ..message = "message"
          ..code = 500;

        final proto = AuthorizedDataSourcesResultProto.create()
          ..failure = failure;

        expect(() => proto.unwrap(), throwsException);
      },
    );
  });
}
