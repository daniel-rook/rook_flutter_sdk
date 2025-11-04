package io.tryrook.rook_sdk_samsung_health.mapper

import io.tryrook.rook_sdk_samsung_health.DEFAULT_DOUBLE
import io.tryrook.rook_sdk_samsung_health.DEFAULT_INT
import io.tryrook.rook_sdk_samsung_health.extension.toProtoString
import io.tryrook.rook_sdk_samsung_health.proto.PhysicalSummaryProto
import io.tryrook.sdk.samsung.domain.model.SHPhysicalSummary

fun SHPhysicalSummary.toProto(): PhysicalSummaryProto {
    return PhysicalSummaryProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setSourceOfData(sourceOfData)
        .setWasTheUserUnderPhysicalActivity(wasTheUserUnderPhysicalActivity)
        .setActiveSeconds(activeSeconds ?: DEFAULT_INT)
        .setRestSeconds(restSeconds ?: DEFAULT_INT)
        .setLowIntensitySeconds(lowIntensitySeconds ?: DEFAULT_INT)
        .setModerateIntensitySeconds(moderateIntensitySeconds ?: DEFAULT_INT)
        .setVigorousIntensitySeconds(vigorousIntensitySeconds ?: DEFAULT_INT)
        .setInactivitySeconds(inactivitySeconds ?: DEFAULT_INT)
        .addAllActivityLevelGranularData(activityLevelGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setContinuousInactivePeriods(continuousInactivePeriods ?: DEFAULT_INT)
        .setCaloriesNetIntakeKcal(caloriesNetIntakeKcal ?: DEFAULT_DOUBLE)
        .setCaloriesExpenditureKcal(caloriesExpenditureKcal ?: DEFAULT_DOUBLE)
        .setCaloriesNetActiveKcal(caloriesNetActiveKcal ?: DEFAULT_DOUBLE)
        .setCaloriesBasalMetabolicRateKcal(caloriesBasalMetabolicRateKcal ?: DEFAULT_DOUBLE)
        .setSteps(steps ?: DEFAULT_INT)
        .addAllStepsGranularData(stepsGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setActiveSteps(activeSteps ?: DEFAULT_INT)
        .addAllActiveStepsGranularData(activeStepsGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setWalkedDistanceMeters(walkedDistanceMeters ?: DEFAULT_DOUBLE)
        .setTraveledDistanceMeters(traveledDistanceMeters ?: DEFAULT_DOUBLE)
        .addAllTraveledDistanceGranularData(
            traveledDistanceGranularData?.map { it.toGranularDataProto() } ?: emptyList(),
        )
        .setFloorsClimbed(floorsClimbed ?: DEFAULT_DOUBLE)
        .addAllFloorsClimbedGranularData(floorsClimbedGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setElevationAvgAltitudeMeters(elevationAvgAltitudeMeters ?: DEFAULT_DOUBLE)
        .setElevationMinimumAltitudeMeters(elevationMinimumAltitudeMeters ?: DEFAULT_DOUBLE)
        .setElevationMaximumAltitudeMeters(elevationMaximumAltitudeMeters ?: DEFAULT_DOUBLE)
        .setElevationLossActualAltitudeMeters(elevationLossActualAltitudeMeters ?: DEFAULT_DOUBLE)
        .setElevationGainActualAltitudeMeters(elevationGainActualAltitudeMeters ?: DEFAULT_DOUBLE)
        .setElevationPlannedGainMeters(elevationPlannedGainMeters ?: DEFAULT_DOUBLE)
        .addAllElevationGranularData(elevationGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setSwimmingNumStrokes(swimmingNumStrokes ?: DEFAULT_INT)
        .setSwimmingNumLaps(swimmingNumLaps ?: DEFAULT_INT)
        .setSwimmingPoolLengthMeters(swimmingPoolLengthMeters ?: DEFAULT_DOUBLE)
        .setSwimmingTotalDistanceMeters(swimmingTotalDistanceMeters ?: DEFAULT_DOUBLE)
        .addAllSwimmingDistanceGranularData(
            swimmingDistanceGranularData?.map { it.toGranularDataProto() } ?: emptyList(),
        )
        .setHrMaximumBpm(hrMaximumBpm ?: DEFAULT_INT)
        .setHrMinimumBpm(hrMinimumBpm ?: DEFAULT_INT)
        .setHrAvgBpm(hrAvgBpm ?: DEFAULT_INT)
        .setHrRestingBpm(hrRestingBpm ?: DEFAULT_INT)
        .addAllHrGranularData(hrGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setHrvAvgRmssd(hrvAvgRmssd ?: DEFAULT_DOUBLE)
        .setHrvAvgSdnn(hrvAvgSdnn ?: DEFAULT_DOUBLE)
        .addAllHrvSdnnGranularData(hrvSdnnGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .addAllHrvRmssdGranularData(hrvRmssdGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setSaturationAvgPercentage(saturationAvgPercentage ?: DEFAULT_DOUBLE)
        .addAllSaturationGranularData(saturationGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setVo2MaxMlPerMinPerKg(vo2MaxMlPerMinPerKg ?: DEFAULT_DOUBLE)
        .addAllVo2GranularData(vo2GranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setStressAtRestDurationSeconds(stressAtRestDurationSeconds ?: DEFAULT_INT)
        .setStressDurationSeconds(stressDurationSeconds ?: DEFAULT_INT)
        .setLowStressDurationSeconds(lowStressDurationSeconds ?: DEFAULT_INT)
        .setMediumStressDurationSeconds(mediumStressDurationSeconds ?: DEFAULT_INT)
        .setHighStressDurationSeconds(highStressDurationSeconds ?: DEFAULT_INT)
        .addAllStressGranularData(stressGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setStressAvgLevel(stressAvgLevel ?: DEFAULT_INT)
        .setStressMaximumLevel(stressMaximumLevel ?: DEFAULT_INT)
        .build()
}
