import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/summary_sync_type_mapper.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/sh_summary_sync_type.dart';

void main() {
  group('SummarySyncType to SummarySyncTypeProto mappers', () {
    test(
      'GIVEN a SummarySyncType.sleep WHEN toProto THEN return SummarySyncTypeProto.SLEEP',
      () {
        const summarySyncType = SHSummarySyncType.sleep;

        final result = summarySyncType.toProto();

        expect(result, SummarySyncTypeProto.SLEEP);
      },
    );

    test(
      'GIVEN a SummarySyncType.physical WHEN toProto THEN return SummarySyncTypeProto.PHYSICAL',
      () {
        const summarySyncType = SHSummarySyncType.physical;

        final result = summarySyncType.toProto();

        expect(result, SummarySyncTypeProto.PHYSICAL);
      },
    );

    test(
      'GIVEN a SummarySyncType.body WHEN toProto THEN return SummarySyncTypeProto.BODY',
      () {
        const summarySyncType = SHSummarySyncType.body;

        final result = summarySyncType.toProto();

        expect(result, SummarySyncTypeProto.BODY);
      },
    );
  });
}
