import 'package:rook_sdk_core/src/domain/model/granular/hr_granular_data.dart';
import 'package:rook_sdk_core/src/domain/model/granular/hrv_rmssd_granular_data.dart';
import 'package:rook_sdk_core/src/domain/model/granular/hrv_sdnn_granular_data.dart';

class HeartRate {
  final int? hrMaximumBpm;
  final int? hrMinimumBpm;
  final int? hrAvgBpm;
  final int? hrRestingBpm;
  final List<HrGranularData>? hrGranularData;
  final double? hrvAvgRmssd;
  final double? hrvAvgSdnn;
  final List<HrvSdnnGranularData>? hrvSdnnGranularData;
  final List<HrvRmssdGranularData>? hrvRmssdGranularData;

  HeartRate({
    this.hrMaximumBpm,
    this.hrMinimumBpm,
    this.hrAvgBpm,
    this.hrRestingBpm,
    this.hrGranularData,
    this.hrvAvgRmssd,
    this.hrvAvgSdnn,
    this.hrvSdnnGranularData,
    this.hrvRmssdGranularData,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeartRate &&
          runtimeType == other.runtimeType &&
          hrMaximumBpm == other.hrMaximumBpm &&
          hrMinimumBpm == other.hrMinimumBpm &&
          hrAvgBpm == other.hrAvgBpm &&
          hrRestingBpm == other.hrRestingBpm &&
          hrGranularData == other.hrGranularData &&
          hrvAvgRmssd == other.hrvAvgRmssd &&
          hrvAvgSdnn == other.hrvAvgSdnn &&
          hrvSdnnGranularData == other.hrvSdnnGranularData &&
          hrvRmssdGranularData == other.hrvRmssdGranularData;

  @override
  int get hashCode => Object.hash(
    hrMaximumBpm,
    hrMinimumBpm,
    hrAvgBpm,
    hrRestingBpm,
    hrGranularData,
    hrvAvgRmssd,
    hrvAvgSdnn,
    hrvSdnnGranularData,
    hrvRmssdGranularData,
  );

  @override
  String toString() {
    return 'HeartRate{hrMaximumBpm: $hrMaximumBpm, hrMinimumBpm: $hrMinimumBpm, hrAvgBpm: $hrAvgBpm, hrRestingBpm: $hrRestingBpm, hrGranularData: $hrGranularData, hrvAvgRmssd: $hrvAvgRmssd, hrvAvgSdnn: $hrvAvgSdnn, hrvSdnnGranularData: $hrvSdnnGranularData, hrvRmssdGranularData: $hrvRmssdGranularData}';
  }
}
