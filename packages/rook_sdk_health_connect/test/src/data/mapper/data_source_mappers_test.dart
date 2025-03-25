import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/data_source_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: deprecated_member_use

void main() {
  group("DataSourceProto to DataSource mappers", () {
    test(
      "GIVEN a connected DataSourceProto with authorizationUrl WHEN toDomain THEN return the expected DataSource",
      () {
        final proto = DataSourceProto.create()
          ..name = "Test"
          ..description = "Test description"
          ..image = "Test image"
          ..connected = true
          ..authorizationUrlIsNull = false
          ..authorizationUrl = "Test url";

        final result = proto.toDomain();

        expect(result.name, proto.name);
        expect(result.description, proto.description);
        expect(result.image, proto.image);
        expect(result.imageUrl, proto.image);
        expect(result.connected, proto.connected);
        expect(result.authorizationUrl, proto.authorizationUrl);
      },
    );

    test(
      "GIVEN a disconnected DataSourceProto without authorizationUrl WHEN toDomain THEN return the expected DataSource",
      () {
        final proto = DataSourceProto.create()
          ..name = "Test"
          ..description = "Test description"
          ..image = "Test image"
          ..connected = false
          ..authorizationUrlIsNull = true
          ..authorizationUrl = "Test url";

        final result = proto.toDomain();

        expect(result.name, proto.name);
        expect(result.description, proto.description);
        expect(result.image, proto.image);
        expect(result.imageUrl, proto.image);
        expect(result.connected, proto.connected);
        expect(result.authorizationUrl, isNull);
      },
    );
  });
}
