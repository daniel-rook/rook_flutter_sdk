import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/configuration_mappers.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

void main() {
  group('RookConfiguration to ConfigurationProto mappers', () {
    test(
      'GIVEN a RookConfiguration WHEN toProto THEN return ConfigurationProto',
      () {
        final rookConfiguration = RookConfiguration(
          clientUUID: "rookUrl",
          sha: "sha",
          environment: RookEnvironment.production,
          enableBackgroundSync: true,
        );

        final result = rookConfiguration.toProto();

        expect(result.clientUUID, rookConfiguration.clientUUID);
        expect(result.sha, rookConfiguration.sha);
        expect(result.environment.name, "PRODUCTION");
        expect(
          result.enableBackgroundSync,
          rookConfiguration.enableBackgroundSync,
        );
      },
    );
  });
}
