import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/data_source_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

// ignore_for_file: deprecated_member_use

void main() {
  group('DataSource mappers', () {
    test(
      'GIVEN a DataSourceProto WHEN toDomain THEN return DataSource',
      () {
        final dataSourceProto = DataSourceProto(
          name: 'name',
          description: 'description',
          image: 'image',
          connected: true,
          authorizationUrl: 'authorizationUrl',
          authorizationUrlIsNull: false,
        );

        final result = dataSourceProto.toDomain();

        expect(result.name, dataSourceProto.name);
        expect(result.description, dataSourceProto.description);
        expect(result.image, dataSourceProto.image);
        expect(result.connected, dataSourceProto.connected);
        expect(result.authorizationUrl, dataSourceProto.authorizationUrl);
      },
    );

    test(
      'GIVEN a DataSourceProto with a null authorizationUrl WHEN toDomain THEN return DataSource',
      () {
        final dataSourceProto = DataSourceProto(
          name: 'name',
          description: 'description',
          image: 'image',
          connected: true,
          authorizationUrl: null,
          authorizationUrlIsNull: true,
        );

        final result = dataSourceProto.toDomain();

        expect(result.name, dataSourceProto.name);
        expect(result.description, dataSourceProto.description);
        expect(result.image, dataSourceProto.image);
        expect(result.connected, dataSourceProto.connected);
        expect(result.authorizationUrl, null);
      },
    );
  });
}
