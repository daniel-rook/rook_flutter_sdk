package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.enums.HealthDataType
import com.rookmotion.rook_sdk_health_connect.exception.UnknownDataTypeException
import com.rookmotion.rook_sdk_health_connect.data.proto.HealthDataTypeProto

fun HealthDataTypeProto.toDomain(): HealthDataType {
    return when (this) {
        HealthDataTypeProto.SLEEP_SUMMARY -> HealthDataType.SLEEP_SUMMARY
        HealthDataTypeProto.PHYSICAL_SUMMARY -> HealthDataType.PHYSICAL_SUMMARY
        HealthDataTypeProto.BODY_SUMMARY -> HealthDataType.BODY_SUMMARY
        HealthDataTypeProto.PHYSICAL_EVENT -> HealthDataType.PHYSICAL_EVENT
        HealthDataTypeProto.BLOOD_GLUCOSE_BODY_EVENT -> HealthDataType.BLOOD_GLUCOSE_BODY_EVENT
        HealthDataTypeProto.BLOOD_PRESSURE_BODY_EVENT -> HealthDataType.BLOOD_PRESSURE_BODY_EVENT
        HealthDataTypeProto.BODY_METRICS_EVENT -> HealthDataType.BODY_METRICS_EVENT
        HealthDataTypeProto.HEART_RATE_BODY_EVENT -> HealthDataType.HEART_RATE_BODY_EVENT
        HealthDataTypeProto.HEART_RATE_PHYSICAL_EVENT -> HealthDataType.HEART_RATE_PHYSICAL_EVENT
        HealthDataTypeProto.HYDRATION_BODY_EVENT -> HealthDataType.HYDRATION_BODY_EVENT
        HealthDataTypeProto.NUTRITION_BODY_EVENT -> HealthDataType.NUTRITION_BODY_EVENT
        HealthDataTypeProto.OXYGENATION_BODY_EVENT -> HealthDataType.OXYGENATION_BODY_EVENT
        HealthDataTypeProto.OXYGENATION_PHYSICAL_EVENT -> HealthDataType.OXYGENATION_PHYSICAL_EVENT
        HealthDataTypeProto.TEMPERATURE_BODY_EVENT -> HealthDataType.TEMPERATURE_BODY_EVENT
        else -> throw UnknownDataTypeException()
    }
}
