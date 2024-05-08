import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/extension/result_data_source_extensions.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

void main() {
  group('ResultDataSourceProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final proto = ResultDataSourceProto.create();
      proto.dataSourceProtoListWrapper =
          DataSourceProtoListWrapper(dataSources: [
        DataSourceProto(
          name: 'name',
          description: 'description',
          image: 'image',
          connected: true,
          authorizationUrl: 'authorizationUrl',
          authorizationUrlIsNull: false,
        )
      ]);

      final result = proto.unwrap();
      final expected = [
        DataSource(
          'name',
          'description',
          'image',
          true,
          'authorizationUrl',
        )
      ];

      expect(result, expected);
    });
  });

  group('ResultDataSourceProto exception', () {
    test(
      'GIVEN a GenericExceptionProto WHEN unwrap THEN throw Exception',
      () {
        final proto = ResultDataSourceProto.create();
        proto.genericExceptionProto = GenericExceptionProto(message: error);

        expect(proto.unwrap, throwsException);
      },
    );
  });
}

const error = 'There was an error';
