import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/extension/result_authorized_data_sources_extensions.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';

void main() {
  group('ResultAuthorizedDataSourcesProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
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

          final proto = ResultAuthorizedDataSourcesProto.create()
            ..authorizedDataSourcesProto = authorizedDataSourcesProto;

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
        });
  });

  group('ResultAuthorizedDataSourcesProto exception', () {
    test(
      'GIVEN the unhappy path WHEN unwrap THEN throw an Exception',
          () {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultAuthorizedDataSourcesProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        expect(proto.unwrap, throwsA(isException));
      },
    );
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
