//
//  BodySummaryMappers.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 29/10/25.
//

import Foundation
import RookSDK

extension RookBodySummary {
    func toProto() -> BodySummaryProto {
        return BodySummaryProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.sourceOfData = "Apple Health"
            $0.wasTheUserUnderPhysicalActivity = false
            $0.waistCircumferenceCm = waistCircumferenceCMNumber.toDouble()
            $0.hipCircumferenceCm = hipCircumferenceCMNumber.toDouble()
            $0.chestCircumferenceCm = chestCircumferenceCMNumber.toDouble()
            $0.boneCompositionPercentage = boneCompositionPercentageNumber.toDouble()
            $0.muscleCompositionPercentage = muscleCompositionPercentageNumber.toDouble()
            $0.waterCompositionPercentage = waterCompositionPercentageNumber.toDouble()
            $0.weightKg = weightKgNumber.toDouble()
            $0.heightCm = heightCMNumber.toDouble()
            $0.bmi = bmiNumber.toDouble()
            $0.bloodGlucoseAvgMgPerDl = bloodGlucoseDayAvgMgPerDLNumber ?? DEFAULT_DOUBLE
            $0.bloodGlucoseGranularData = bloodGlucoseGranularDataMgPerDL?.map { $0.toGranularProto() } ?? []
            $0.bloodPressureAvg = bloodPressureDayAvgSystolicDiastolicBpNumber?.map { $0.toObjectProto() } ?? []
            $0.bloodPressureGranularData = bloodPressureGranularDataSystolicDiastolicBpNumber?.map { $0.toGranularProto() } ?? []
            $0.waterTotalConsumptionMl = waterTotalConsumptionMlNumber.toDouble()
            $0.hydrationAmountGranularData = hydrationAmountGranularDataMlNumber?.map { $0.toGranularProto() } ?? []
            $0.hydrationLevelGranularData = hydrationLevelGranularDataPercentageNumber?.map { $0.toGranularProto() } ?? []
            $0.hrMaximumBpm = hrMaxBPM.toInt32()
            $0.hrMinimumBpm = hrMinimumBPM.toInt32()
            $0.hrAvgBpm = hrAvgBPM.toInt32()
            $0.hrRestingBpm = hrRestingBPM.toInt32()
            $0.hrGranularData = hrGranularDataBPM?.map { $0.toGranularProto() } ?? []
            $0.hrvAvgRmssd = hrvAvgRmssdNumber ?? DEFAULT_DOUBLE
            $0.hrvAvgSdnn = hrvAvgSdnnNumber ?? DEFAULT_DOUBLE
            $0.hrvSdnnGranularData = hrvSdnnGranularDataNumber?.map { $0.toGranularProto() } ?? []
            $0.hrvRmssdGranularData = hrvRmssdGranularDataNumber?.map { $0.toGranularProto() } ?? []
            $0.moodMinimumScale = moodMinimumScale.toDouble()
            $0.moodAvgScale = moodAvgScale.toDouble()
            $0.moodMaximumScale = moodMaxScale.toDouble()
            $0.moodGranularData = moodGranularDataScale?.map { $0.toGranularProto() } ?? []
            $0.moodDeltaScale = moodDeltaScale.toDouble()
            $0.foodIntake = foodIntakeNumber.toDouble()
            $0.caloriesIntakeKcal = caloriesIntakeNumber.toDouble()
            $0.proteinIntakeG = proteinIntakeGNumber.toDouble()
            $0.sugarIntakeG = sugarIntakeGNumber.toDouble()
            $0.fatIntakeG = fatIntakeGNumber.toDouble()
            $0.transFatIntakeG = transFatIntakeGNumber.toDouble()
            $0.carbohydratesIntakeG = carbohydratesIntakeGNumber.toDouble()
            $0.fiberIntakeG = fiberIntakeGNumber.toDouble()
            $0.alcoholIntakeG = alcoholIntakeGNumber.toDouble()
            $0.sodiumIntakeMg = sodiumIntakeMgNumber.toDouble()
            $0.cholesterolIntakeMg = cholesterolIntakeMgNumber.toDouble()
            $0.saturationAvgPercentage = saturationAvgPercentage.toDouble()
            $0.saturationGranularData = saturationGranularDataPercentage?.map { $0.toGranularProto() } ?? []
            $0.vo2MaxMlPerMinPerKg = vo2MaxMlPerMinPerKg ?? DEFAULT_DOUBLE
            $0.vo2GranularData = vo2GranularDataLiterPerMin?.map { $0.toGranularProto() } ?? []
            $0.temperatureMinimum = temperatureMinimumCelsius?.map { $0.toObjectProto() } ?? []
            $0.temperatureAvg = temperatureAvgCelsius?.map { $0.toObjectProto() } ?? []
            $0.temperatureMaximum = temperatureMaxCelsius?.map { $0.toObjectProto() } ?? []
            $0.temperatureGranularData = temperatureGranularDataCelsius?.map { $0.toGranularProto() } ?? []
            $0.temperatureDelta = temperatureDeltaCelsius?.map { $0.toObjectProto() } ?? []
            $0.lastUpdatedDatetime = DEFAULT_STRING
            $0.periodStartDate = DEFAULT_STRING
            $0.cycleDay = DEFAULT_INT_32
            $0.cycleLengthDays = DEFAULT_INT_32
            $0.predictedCycleLengthDays = DEFAULT_INT_32
            $0.currentPhase = DEFAULT_STRING
            $0.lengthOfCurrentPhaseDays = DEFAULT_INT_32
            $0.daysUntilNextPhase = DEFAULT_INT_32
            $0.isApredictedCycle = BodySummaryProto.OneOf_IsApredictedCycle.isApredictedCycleUnknown(true)
            $0.menstruationFlowGranularData = []
        }
    }
}
