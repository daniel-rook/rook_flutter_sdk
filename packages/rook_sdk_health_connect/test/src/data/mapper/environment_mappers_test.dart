import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/environment_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';

void main() {
  group('RookEnvironment to EnvironmentProto mappers', () {
    test(
      'GIVEN RookEnvironment.sandbox WHEN toProto THEN return EnvironmentProto.SANDBOX',
      () {
        const rookEnvironment = RookEnvironment.sandbox;

        final result = rookEnvironment.toProto();

        expect(result, EnvironmentProto.SANDBOX);
      },
    );

    test(
      'GIVEN RookEnvironment.production WHEN toProto THEN return EnvironmentProto.PRODUCTION',
      () {
        const rookEnvironment = RookEnvironment.production;

        final result = rookEnvironment.toProto();

        expect(result, EnvironmentProto.PRODUCTION);
      },
    );
  });
}
