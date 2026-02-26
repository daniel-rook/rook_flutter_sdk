import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/granular_data_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/util/check_non_default.dart';

extension HeartRateResult on HearRateResultProto {
  HeartRate unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case HearRateResultProto_Result.success:
        return success.toDomain();
      case HearRateResultProto_Result.failure:
        final exception = SDKException.fromCode(
          code: failure.code,
          message: failure.message,
        );

        throw exception;
      default:
        throw Exception("Unknown error");
    }
  }
}

extension HeartRateMapper on HearRateProto {
  HeartRate toDomain() {
    return HeartRate(
      hrMaximumBpm: hrMaximumBpm.checkNonDefault(),
      hrMinimumBpm: hrMinimumBpm,
      hrAvgBpm: hrAvgBpm,
      hrRestingBpm: hrRestingBpm,
      hrGranularData: hrGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      hrvAvgRmssd: hrvAvgRmssd,
      hrvAvgSdnn: hrvAvgSdnn,
      hrvSdnnGranularData: hrvSdnnGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      hrvRmssdGranularData: hrvRmssdGranularData.map((element) {
        return element.toDomain();
      }).toList(),
    );
  }
}
