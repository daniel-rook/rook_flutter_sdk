//
//  PhysicalSummaryMappers.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 29/10/25.
//

import Foundation
import RookSDK

extension RookPhysicalSummary {
    func toProto() -> PhysicalSummaryProto {
        return PhysicalSummaryProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.sourceOfData = "Apple Health"
            $0.wasTheUserUnderPhysicalActivity = true
            $0.activeSeconds = activeSeconds.toInt32()
            $0.restSeconds = restSeconds.toInt32()
            $0.lowIntensitySeconds = lowIntensitySeconds.toInt32()
            $0.moderateIntensitySeconds = moderateIntensitySeconds.toInt32()
            $0.vigorousIntensitySeconds = vigorousIntensitySeconds.toInt32()
            $0.inactivitySeconds = inactivitySeconds.toInt32()
            $0.activityLevelGranularData = activityLevelGranularDataNumber?.map { $0.toGranularProto() } ?? []
            $0.continuousInactivePeriods = continuousInactivePeriodsNumber.toInt32()
            $0.caloriesNetIntakeKcal = caloriesExpenditureKilocalories.toDouble()
            $0.caloriesExpenditureKcal = caloriesExpenditureKilocalories.toDouble()
            $0.caloriesNetActiveKcal = caloriesNetActiveKilocalories.toDouble()
            $0.caloriesBasalMetabolicRateKcal = caloriesBasalMetabolicRateKilocalories.toDouble()
            $0.steps = stepsPerDayNumber.toInt32()
            $0.stepsGranularData = stepsGranularDataStepsPerHr?.map { $0.toStepsGranularProto() } ?? []
            $0.activeSteps = activeStepsPerDayNumber.toInt32()
            $0.activeStepsGranularData = activeStepsGranularDataStepsPerHr?
                .map { $0.toActiveStepsGranularProto() } ?? []
            $0.walkedDistanceMeters = walkedDistanceMeters.toDouble()
            $0.traveledDistanceMeters = traveledDistanceMeters.toDouble()
            $0.traveledDistanceGranularData = traveledDistanceGranularDataMeters?.map { $0.toGranularProto() } ?? []
            $0.floorsClimbed = floorsClimbedNumber.toDouble()
            $0.floorsClimbedGranularData = floorsClimbedGranularDataFloors?.map { $0.toGranularProto() } ?? []
            $0.elevationAvgAltitudeMeters = elevationAvgAltitudeMeters.toDouble()
            $0.elevationMinimumAltitudeMeters = elevationMinimumAltitudeMeters.toDouble()
            $0.elevationMaximumAltitudeMeters = elevationMaxAltitudeMeters.toDouble()
            $0.elevationLossActualAltitudeMeters = elevationLossActualAltitudeMeters.toDouble()
            $0.elevationGainActualAltitudeMeters = elevationGainActualAltitudeMeters.toDouble()
            $0.elevationPlannedGainMeters = elevationPlannedGainMeters.toDouble()
            $0.elevationGranularData = elevationGranularDataMeters?.map { $0.toGranularProto() } ?? []
            $0.swimmingNumStrokes = swimmingStrokesNumber.toInt32()
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
            $0.saturationAvgPercentage = saturationAvgPercentage.toDouble()
            $0.saturationGranularData = saturationGranularDataPercentage?.map { $0.toGranularProto() } ?? []
            $0.vo2MaxMlPerMinPerKg = vo2MaxMlPerMinPerKg ?? DEFAULT_DOUBLE
            $0.vo2GranularData = vo2GranularDataLiterPerMin?.map { $0.toGranularProto() } ?? []
            $0.stressAtRestDurationSeconds = stressAtRESTDurationSeconds.toInt32()
            $0.stressDurationSeconds = stressDurationSeconds.toInt32()
            $0.lowStressDurationSeconds = lowStressDurationSeconds.toInt32()
            $0.mediumStressDurationSeconds = mediumStressDurationSeconds.toInt32()
            $0.highStressDurationSeconds = highStressDurationSeconds.toInt32()
            $0.stressGranularData = stressGranularDataScoreNumber?.map { $0.toGranularProto() } ?? []
            $0.stressAvgLevel = stressAvgLevelNumber.toInt32()
            $0.stressMaximumLevel = stressMaxLevelNumber.toInt32()
        }
    }
}
