import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/extension/datetime_extensions.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

extension ActiveStepsGranularDataMappers on ActiveStepsGranularDataProto {
  ActiveStepsGranularData toDomain() {
    return ActiveStepsGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      activeSteps: activeSteps,
    );
  }
}

extension ActiveLevelGranularDataMappers on ActivityLevelGranularDataProto {
  ActivityLevelGranularData toDomain() {
    return ActivityLevelGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      activityLevel: activityLevel,
    );
  }
}

extension BloodGlucoseGranularDataMappers on BloodGlucoseGranularDataProto {
  BloodGlucoseGranularData toDomain() {
    return BloodGlucoseGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      bloodGlucoseMgPerDl: bloodGlucoseMgPerDl,
    );
  }
}

extension BloodPressureGranularDataMappers on BloodPressureGranularDataProto {
  BloodPressureGranularData toDomain() {
    return BloodPressureGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      systolicMmHg: systolicMmHg,
      diastolicMmHg: diastolicMmHg,
    );
  }
}

extension BreathingGranularDataMappers on BreathingGranularDataProto {
  BreathingGranularData toDomain() {
    return BreathingGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      breathsPerMin: breathsPerMin,
    );
  }
}

extension CadenceGranularDataMappers on CadenceGranularDataProto {
  CadenceGranularData toDomain() {
    return CadenceGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      cadenceRpm: cadenceRpm,
    );
  }
}

extension ElevationGranularDataMappers on ElevationGranularDataProto {
  ElevationGranularData toDomain() {
    return ElevationGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      elevationChangeMeters: elevationChangeMeters,
    );
  }
}

extension FloorsClimbedGranularDataMappers on FloorsClimbedGranularDataProto {
  FloorsClimbedGranularData toDomain() {
    return FloorsClimbedGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      floorsClimbed: floorsClimbed,
    );
  }
}

extension HrGranularDataMappers on HrGranularDataProto {
  HrGranularData toDomain() {
    return HrGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      hrBpm: hrBpm,
    );
  }
}

extension HrvRmssdGranularDataMappers on HrvRmssdGranularDataProto {
  HrvRmssdGranularData toDomain() {
    return HrvRmssdGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      hrvRmssd: hrvRmssd,
    );
  }
}

extension HrvSdnnGranularDataMappers on HrvSdnnGranularDataProto {
  HrvSdnnGranularData toDomain() {
    return HrvSdnnGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      hrvSdnn: hrvSdnn,
    );
  }
}

extension HydrationAmountGranularDataMappers
    on HydrationAmountGranularDataProto {
  HydrationAmountGranularData toDomain() {
    return HydrationAmountGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      hydrationAmountMl: hydrationAmountMl,
    );
  }
}

extension HydrationLevelGranularDataMappers on HydrationLevelGranularDataProto {
  HydrationLevelGranularData toDomain() {
    return HydrationLevelGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      hydrationLevelPercentage: hydrationLevelPercentage,
    );
  }
}

extension LapGranularDataMappers on LapGranularDataProto {
  LapGranularData toDomain() {
    return LapGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      laps: laps,
    );
  }
}

extension MenstruationFlowGranularDataMappers
    on MenstruationFlowGranularDataProto {
  MenstruationFlowGranularData toDomain() {
    return MenstruationFlowGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      flowMl: flowMl,
    );
  }
}

extension MoodGranularDataMappers on MoodGranularDataProto {
  MoodGranularData toDomain() {
    return MoodGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      moodScale: moodScale,
    );
  }
}

extension PositionGranularDataMappers on PositionGranularDataProto {
  PositionGranularData toDomain() {
    return PositionGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      latDeg: latDeg,
      lngDeg: lngDeg,
    );
  }
}

extension PowerGranularDataMappers on PowerGranularDataProto {
  PowerGranularData toDomain() {
    return PowerGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      powerWatts: powerWatts,
    );
  }
}

extension SaturationGranularDataMappers on SaturationGranularDataProto {
  SaturationGranularData toDomain() {
    return SaturationGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      saturationPercentage: saturationPercentage,
    );
  }
}

extension SnoringGranularDataMappers on SnoringGranularDataProto {
  SnoringGranularData toDomain() {
    return SnoringGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      snoringEventsCount: snoringEventsCount,
    );
  }
}

extension SpeedGranularDataMappers on SpeedGranularDataProto {
  SpeedGranularData toDomain() {
    return SpeedGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      speedMetersPerSecond: speedMetersPerSecond,
    );
  }
}

extension StepsGranularDataMappers on StepsGranularDataProto {
  StepsGranularData toDomain() {
    return StepsGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      steps: steps,
    );
  }
}

extension StressGranularDataMappers on StressGranularDataProto {
  StressGranularData toDomain() {
    return StressGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      stressScore: stressScore,
    );
  }
}

extension SwimmingDistanceGranularDataMappers
    on SwimmingDistanceGranularDataProto {
  SwimmingDistanceGranularData toDomain() {
    return SwimmingDistanceGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      swimmingDistanceMeters: swimmingDistanceMeters,
    );
  }
}

extension TemperatureGranularDataMappers on TemperatureGranularDataProto {
  TemperatureGranularData toDomain() {
    return TemperatureGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      temperatureCelsius: temperatureCelsius,
      measurementType: measurementType,
    );
  }
}

extension TorqueGranularDataMappers on TorqueGranularDataProto {
  TorqueGranularData toDomain() {
    return TorqueGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      torqueNewtonMeters: torqueNewtonMeters,
    );
  }
}

extension TraveledDistanceGranularDataMappers
    on TraveledDistanceGranularDataProto {
  TraveledDistanceGranularData toDomain() {
    return TraveledDistanceGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      traveledDistanceMeters: traveledDistanceMeters,
    );
  }
}

extension TssGranularDataMappers on TssGranularDataProto {
  TssGranularData toDomain() {
    return TssGranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      intervalDurationSeconds: intervalDurationSeconds,
      tssScore: tssScore,
    );
  }
}

extension Vo2GranularDataMappers on Vo2GranularDataProto {
  Vo2GranularData toDomain() {
    return Vo2GranularData(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      vo2MlPerMinPerKg: vo2MlPerMinPerKg,
    );
  }
}
