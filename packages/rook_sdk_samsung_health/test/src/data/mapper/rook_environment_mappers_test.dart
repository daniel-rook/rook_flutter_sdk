import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/rook_environment_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pbenum.dart';

void main() {
  group('RookEnvironment to RookEnvironmentProto mappers', () {
    test(
      'GIVEN RookEnvironment.sandbox WHEN toProto THEN return RookEnvironmentProto.SANDBOX',
      () {
        const rookEnvironment = RookEnvironment.sandbox;

        final result = rookEnvironment.toProto();

        expect(result, RookEnvironmentProto.SANDBOX);
      },
    );

    test(
      'GIVEN RookEnvironment.production WHEN toProto THEN return RookEnvironmentProto.PRODUCTION',
      () {
        const rookEnvironment = RookEnvironment.production;

        final result = rookEnvironment.toProto();

        expect(result, RookEnvironmentProto.PRODUCTION);
      },
    );
  });
}
