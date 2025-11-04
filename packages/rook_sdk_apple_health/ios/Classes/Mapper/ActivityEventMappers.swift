//
//  ActivityEventMappers.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 29/10/25.
//

import Foundation
import RookSDK

extension RookActivityEvent {
    func toProto() -> ActivityEventProto {
        return ActivityEventProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.sourceOfData = sourcesOfData ?? "Apple Health"
            $0.wasTheUserUnderPhysicalActivity = true
            $0.activityStartDateTime = activityStartTimeDateTime.toProtoString()
            $0.activityEndDateTime = activityEndTimeDateTime.toProtoString()
            $0.activityDurationSeconds = activityDurationSeconds?.toInt32() ?? activityEndTimeDateTime
                .timeIntervalSince(activityStartTimeDateTime).toInt32()
            $0.activityTypeName = activityTypeName ?? "Other workout"
            $0.activeSeconds = activeSeconds.toInt32()
            $0.restSeconds = restSeconds.toInt32()
            $0.lowIntensitySeconds = lowIntensitySeconds.toInt32()
            $0.moderateIntensitySeconds = moderateIntensitySeconds.toInt32()
            $0.vigorousIntensitySeconds = vigorousIntensitySeconds.toInt32()
            $0.inactivitySeconds = inactivitySeconds.toInt32()
            $0.activityLevelGranularData = activityLevelGranularDataNumber?.map { $0.toGranularProto() } ?? []
            $0.continuousInactivePeriods = continuousInactivePeriodsNumber.toInt32()
            $0.activityStrainLevel = activityStrainLevelNumber.toInt32()
            $0.activityWorkKilojoules = activityWorkKilojoules.toDouble()
            $0.activityEnergyKilojoules = activityEnergyKilojoules.toDouble()
            $0.activityEnergyPlannedKilojoules = activityEnergyPlannedKilojoules.toDouble()
            $0.caloriesNetIntakeKcal = caloriesNetIntakeKilocalories.toDouble()
            $0.caloriesExpenditureKcal = caloriesExpenditureKilocalories.toDouble()
            $0.caloriesNetActiveKcal = caloriesNetActiveKilocalories.toDouble()
            $0.caloriesBasalMetabolicRateKcal = caloriesBasalMetabolicRateKilocalories.toDouble()
            $0.fatPercentageOfCalories = fatPercentageOfCaloriesPercentage.toDouble()
            $0.carbohydratePercentageOfCalories = carbohydratePercentageOfCaloriesPercentage.toDouble()
            $0.proteinPercentageOfCalories = proteinPercentageOfCaloriesPercentage.toDouble()
            $0.steps = stepsNumber.toInt32()
            $0.stepsGranularData = stepsGranularDataStepsPerMin?.map { $0.toStepsGranularProto() } ?? []
            $0.walkedDistanceMeters = walkedDistanceMeters.toDouble()
            $0.traveledDistanceMeters = traveledDistanceMeters.toDouble()
            $0.traveledDistanceGranularData = traveledDistanceGranularDataMeters?.map { $0.toGranularProto() } ?? []
            $0.floorsClimbed = floorsClimbedNumber.toDouble()
            $0.floorsClimbedGranularData = floorsClimbedGranularDataFloorsNumber?.map { $0.toGranularProto() } ?? []
            $0.elevationAvgAltitudeMeters = elevationAvgAltitudeMeters.toDouble()
            $0.elevationMinimumAltitudeMeters = elevationMinimumAltitudeMeters.toDouble()
            $0.elevationMaximumAltitudeMeters = elevationMaxAltitudeMeters.toDouble()
            $0.elevationLossActualAltitudeMeters = elevationLossActualAltitudeMeters.toDouble()
            $0.elevationGainActualAltitudeMeters = elevationGainActualAltitudeMeters.toDouble()
            $0.elevationPlannedGainMeters = elevationPlannedGainMeters.toDouble()
            $0.elevationGranularData = elevationGranularDataMeters?.map { $0.toGranularProto() } ?? []
            $0.swimmingNumStrokes = swimmingNumStrokesNumber.toInt32()
            $0.swimmingNumLaps = swimmingNumLapsNumber.toInt32()
            $0.swimmingPoolLengthMeters = swimmingPoolLengthMeters.toDouble()
            $0.swimmingTotalDistanceMeters = swimmingTotalDistanceMeters.toDouble()
            $0.swimmingDistanceGranularData = swimmingDistanceGranularDataMeters?.map { $0.toGranularProto() } ?? []
            $0.hrMaximumBpm = hrMaxBPM.toInt32()
            $0.hrMinimumBpm = hrMinimumBPM.toInt32()
            $0.hrAvgBpm = hrAvgBPM.toInt32()
            $0.hrRestingBpm = hrRestingBPM.toInt32()
            $0.hrGranularData = hrGranularDataBPM?.map { $0.toGranularProto() } ?? []
            $0.hrvAvgRmssd = hrvAvgRmssdNumber ?? DEFAULT_DOUBLE
            $0.hrvAvgSdnn = hrvAvgSdnnNumber ?? DEFAULT_DOUBLE
            $0.hrvSdnnGranularData = hrvSdnnGranularDataNumber?.map { $0.toGranularProto() } ?? []
            $0.hrvRmssdGranularData = hrvRmssdGranularDataNumber?.map { $0.toGranularProto() } ?? []
            $0.speedNormalizedMetersPerSecond = speedNormalizedMetersPerSecond.toDouble()
            $0.speedAvgMetersPerSecond = speedAvgMetersPerSecond.toDouble()
            $0.speedMaximumMetersPerSecond = speedMaxMetersPerSecond.toDouble()
            $0.speedGranularData = speedGranularDataMetersPerSecond?.map { $0.toGranularProto() } ?? []
            $0.velocityAvg = velocityVectorAvgSpeedAndDirection?.map { $0.toObjectProto() } ?? []
            $0.velocityMaximum = velocityVectorMaxSpeedAndDirection?.map { $0.toObjectProto() } ?? []
            $0.paceAvgMinPerKm = paceAvgMinutesPerKilometer.toDouble()
            $0.paceMaximumMinPerKm = paceMaxMinutesPerKilometer.toDouble()
            $0.cadenceAvgRpm = cadenceAvgRPM.toDouble()
            $0.cadenceMaximumRpm = cadenceMaxRPM.toDouble()
            $0.cadenceGranularData = cadenceGranularDataRPM?.map { $0.toGranularProto() } ?? []
            $0.torqueAvgNewtonMeters = torqueAvgNewtonMeters.toDouble()
            $0.torqueMaximumNewtonMeters = torqueMaxNewtonMeters.toDouble()
            $0.torqueGranularData = torqueGranularDataNewtonMeters?.map { $0.toGranularProto() } ?? []
            $0.lapGranularData = lapGranularDataLapsNumber?.map { $0.toGranularProto() } ?? []
            $0.saturationAvgPercentage = saturationAvgPercentage.toDouble()
            $0.saturationGranularData = saturationGranularDataPercentage?.map { $0.toGranularProto() } ?? []
            $0.vo2MaxMlPerMinPerKg = vo2MaxMlPerMinPerKg ?? DEFAULT_DOUBLE
            $0.vo2GranularData = vo2GranularDataMlPerMin?.map { $0.toGranularProto() } ?? []
            $0.positionStart = positionStartLatLngDeg?.map { $0.toObjectProto() } ?? []
            $0.positionCentroid = positionCentroidLatLngDeg?.map { $0.toObjectProto() } ?? []
            $0.positionEnd = positionEndLatLngDeg?.map { $0.toObjectProto() } ?? []
            $0.positionGranularData = positionGranularDataLatLngDeg?.map { $0.toGranularProto() } ?? []
            $0.positionPolylineMapDataSummary = positionPolylineMapDataSummaryString ?? DEFAULT_STRING
            $0.powerAvgWatts = powerAvgWattsNumber.toDouble()
            $0.powerMaximumWatts = powerMaxWattsNumber.toDouble()
            $0.powerGranularData = powerGranularDataWattsNumber?.map { $0.toGranularProto() } ?? []
            $0.stressAtRestDurationSeconds = stressAtRESTDurationSeconds.toInt32()
            $0.stressDurationSeconds = stressDurationSeconds.toInt32()
            $0.lowStressDurationSeconds = lowStressDurationSeconds.toInt32()
            $0.mediumStressDurationSeconds = mediumStressDurationSeconds.toInt32()
            $0.highStressDurationSeconds = highStressDurationSeconds.toInt32()
            $0.tssGranularData = tssGranularData1_500_ScoreNumber?.map { $0.toGranularProto() } ?? []
            $0.stressAvgLevel = stressAvgLevelNumber.toInt32()
            $0.stressMaximumLevel = stressMaxLevelNumber.toInt32()
        }
    }
}
