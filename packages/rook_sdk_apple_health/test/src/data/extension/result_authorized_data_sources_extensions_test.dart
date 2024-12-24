import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/extension/result_authorized_data_sources_extensions.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';

void main() {
  group('ResultAuthorizedDataSourcesProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final authorizedDataSourcesProto = AuthorizedDataSourcesProto.create()
        ..oura = true
        ..polar = false
        ..whoop = true
        ..fitbit = false
        ..garmin = true
        ..withings = false
        ..appleHealth = true
        ..healthConnect = false
        ..android = true;
      final proto = ResultAuthorizedDataSourcesProto.create()
        ..authorizedDataSourcesProto = authorizedDataSourcesProto;

      final result = proto.unwrap();

      expect(result.oura, true);
      expect(result.polar, false);
      expect(result.whoop, true);
      expect(result.fitbit, false);
      expect(result.garmin, true);
      expect(result.withings, false);
      expect(result.appleHealth, true);
      expect(result.healthConnect, false);
      expect(result.android, true);
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
