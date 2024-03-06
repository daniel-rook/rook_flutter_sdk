import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/rook_configuration_mappers.dart';

void main() {
  group('RookConfiguration to RookConfigurationProto mappers', () {
    test(
      'GIVEN a RookConfiguration WHEN toProto THEN return RookConfigurationProto',
      () {
        final rookConfiguration = RookConfiguration(
          "rookUrl",
          "clientUUID",
          RookEnvironment.production,
        );

        final result = rookConfiguration.toProto();

        expect(result.clientUUID, rookConfiguration.clientUUID);
        expect(result.secretKey, rookConfiguration.secretKey);
      },
    );
  });
}
