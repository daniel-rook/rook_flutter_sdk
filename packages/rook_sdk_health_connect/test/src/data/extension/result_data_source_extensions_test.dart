import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_data_sources_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

// ignore_for_file: deprecated_member_use

void main() {
  group('ResultDataSourceProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final proto = ResultDataSourcesProto.create();
      proto.dataSourcesProtoListWrapper = DataSourcesProtoListWrapper(
        dataSources: [
          DataSourceProto(
            name: 'name',
            description: 'description',
            imageUrl: 'image',
            connected: true,
            authorizationUrl: 'authorizationUrl',
            authorizationUrlIsNull: false,
          )
        ],
      );

      final result = proto.unwrap().first;
      final expected = DataSource(
        'name',
        'description',
        'image',
        'imageUrl',
        true,
        'authorizationUrl',
      );

      expect(result.name, expected.name);
      expect(result.description, expected.description);
      expect(result.image, expected.image);
      expect(result.connected, expected.connected);
      expect(result.authorizationUrl, expected.authorizationUrl);
    });
  });

  group('ResultDataSourceProto exception', () {
    test(
      'GIVEN the unhappy path WHEN unwrap THEN throw an Exception',
      () {
        final pluginExceptionProto = PluginExceptionProto.create()
          ..id = -1
          ..message = _exceptionMessage
          ..code = _exceptionCode;

        final proto = ResultDataSourcesProto.create()
          ..pluginExceptionProto = pluginExceptionProto;

        expect(proto.unwrap, throwsA(isException));
      },
    );
  });
}

const _exceptionMessage = "There was an error";
const _exceptionCode = 401;
