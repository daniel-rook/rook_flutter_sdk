package io.tryrook.rook_sdk_samsung_health.mapper

import io.tryrook.rook_sdk_samsung_health.DEFAULT_DOUBLE
import io.tryrook.rook_sdk_samsung_health.DEFAULT_INT
import io.tryrook.rook_sdk_samsung_health.DEFAULT_STRING
import io.tryrook.rook_sdk_samsung_health.extension.toProtoString
import io.tryrook.rook_sdk_samsung_health.proto.BodySummaryProto
import io.tryrook.sdk.samsung.domain.model.SHBodySummary

fun SHBodySummary.toProto(): BodySummaryProto {
    return BodySummaryProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setSourceOfData(sourceOfData)
        .setWasTheUserUnderPhysicalActivity(wasTheUserUnderPhysicalActivity)
        .setWaistCircumferenceCm(waistCircumferenceCm ?: DEFAULT_DOUBLE)
        .setHipCircumferenceCm(hipCircumferenceCm ?: DEFAULT_DOUBLE)
        .setChestCircumferenceCm(chestCircumferenceCm ?: DEFAULT_DOUBLE)
        .setBoneCompositionPercentage(boneCompositionPercentage ?: DEFAULT_DOUBLE)
        .setMuscleCompositionPercentage(muscleCompositionPercentage ?: DEFAULT_DOUBLE)
        .setWaterCompositionPercentage(waterCompositionPercentage ?: DEFAULT_DOUBLE)
        .setWeightKg(weightKg ?: DEFAULT_DOUBLE)
        .setHeightCm(heightCm ?: DEFAULT_DOUBLE)
        .setBmi(bmi ?: DEFAULT_DOUBLE)
        .setBloodGlucoseAvgMgPerDl(bloodGlucoseAvgMgPerDl ?: DEFAULT_DOUBLE)
        .addAllBloodGlucoseGranularData(bloodGlucoseGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .addAllBloodPressureAvg(bloodPressureAvg?.toObjectProto()?.let { listOf(it) } ?: emptyList())
        .addAllBloodPressureGranularData(bloodPressureGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setWaterTotalConsumptionMl(waterTotalConsumptionMl ?: DEFAULT_DOUBLE)
        .addAllHydrationAmountGranularData(hydrationAmountGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .addAllHydrationLevelGranularData(hydrationLevelGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setHrMaximumBpm(hrMaximumBpm ?: DEFAULT_INT)
        .setHrMinimumBpm(hrMinimumBpm ?: DEFAULT_INT)
        .setHrAvgBpm(hrAvgBpm ?: DEFAULT_INT)
        .setHrRestingBpm(hrRestingBpm ?: DEFAULT_INT)
        .addAllHrGranularData(hrGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setHrvAvgRmssd(hrvAvgRmssd ?: DEFAULT_DOUBLE)
        .setHrvAvgSdnn(hrvAvgSdnn ?: DEFAULT_DOUBLE)
        .addAllHrvSdnnGranularData(hrvSdnnGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .addAllHrvRmssdGranularData(hrvRmssdGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setMoodMinimumScale(moodMinimumScale ?: DEFAULT_DOUBLE)
        .setMoodAvgScale(moodAvgScale ?: DEFAULT_DOUBLE)
        .setMoodMaximumScale(moodMaximumScale ?: DEFAULT_DOUBLE)
        .addAllMoodGranularData(moodGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setMoodDeltaScale(moodDeltaScale ?: DEFAULT_DOUBLE)
        .setFoodIntake(foodIntake ?: DEFAULT_DOUBLE)
        .setCaloriesIntakeKcal(caloriesIntakeKcal ?: DEFAULT_DOUBLE)
        .setProteinIntakeG(proteinIntakeG ?: DEFAULT_DOUBLE)
        .setSugarIntakeG(sugarIntakeG ?: DEFAULT_DOUBLE)
        .setFatIntakeG(fatIntakeG ?: DEFAULT_DOUBLE)
        .setTransFatIntakeG(transFatIntakeG ?: DEFAULT_DOUBLE)
        .setCarbohydratesIntakeG(carbohydratesIntakeG ?: DEFAULT_DOUBLE)
        .setFiberIntakeG(fiberIntakeG ?: DEFAULT_DOUBLE)
        .setAlcoholIntakeG(alcoholIntakeG ?: DEFAULT_DOUBLE)
        .setSodiumIntakeMg(sodiumIntakeMg ?: DEFAULT_DOUBLE)
        .setCholesterolIntakeMg(cholesterolIntakeMg ?: DEFAULT_DOUBLE)
        .setSaturationAvgPercentage(saturationAvgPercentage ?: DEFAULT_DOUBLE)
        .addAllSaturationGranularData(saturationGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setVo2MaxMlPerMinPerKg(vo2MaxMlPerMinPerKg ?: DEFAULT_DOUBLE)
        .addAllVo2GranularData(vo2GranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .addAllTemperatureMinimum(temperatureMinimum?.toObjectProto()?.let { listOf(it) } ?: emptyList())
        .addAllTemperatureAvg(temperatureAvg?.toObjectProto()?.let { listOf(it) } ?: emptyList())
        .addAllTemperatureMaximum(temperatureMaximum?.toObjectProto()?.let { listOf(it) } ?: emptyList())
        .addAllTemperatureGranularData(temperatureGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .addAllTemperatureDelta(temperatureDelta?.toObjectProto()?.let { listOf(it) } ?: emptyList())
        .setLastUpdatedDatetime(lastUpdatedDatetime?.toProtoString() ?: DEFAULT_STRING)
        .setPeriodStartDate(periodStartDate?.toProtoString() ?: DEFAULT_STRING)
        .setCycleDay(cycleDay ?: DEFAULT_INT)
        .setCycleLengthDays(cycleLengthDays ?: DEFAULT_INT)
        .setPredictedCycleLengthDays(predictedCycleLengthDays ?: DEFAULT_INT)
        .setCurrentPhase(currentPhase ?: DEFAULT_STRING)
        .setLengthOfCurrentPhaseDays(lengthOfCurrentPhaseDays ?: DEFAULT_INT)
        .setDaysUntilNextPhase(daysUntilNextPhase ?: DEFAULT_INT)
        .addAllMenstruationFlowGranularData(
            menstruationFlowGranularData?.map { it.toGranularDataProto() } ?: emptyList(),
        )
        .apply {
            val isAPredictedCycleNullable: Boolean? = isAPredictedCycle

            if (isAPredictedCycleNullable != null) {
                setIsAPredictedCycleValue(isAPredictedCycleNullable)
            } else {
                setIsAPredictedCycleUnknown(true)
            }
        }
        .build()
}
