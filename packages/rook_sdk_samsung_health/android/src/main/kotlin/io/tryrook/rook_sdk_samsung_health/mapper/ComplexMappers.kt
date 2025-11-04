package io.tryrook.rook_sdk_samsung_health.mapper

import io.tryrook.rook_sdk_samsung_health.proto.BloodPressureObjectProto
import io.tryrook.rook_sdk_samsung_health.proto.PositionObjectProto
import io.tryrook.rook_sdk_samsung_health.proto.TemperatureObjectProto
import io.tryrook.rook_sdk_samsung_health.proto.VelocityObjectProto
import io.tryrook.sdk.samsung.domain.model.complex.BloodPressureObject
import io.tryrook.sdk.samsung.domain.model.complex.PositionObject
import io.tryrook.sdk.samsung.domain.model.complex.TemperatureObject
import io.tryrook.sdk.samsung.domain.model.complex.VelocityObject

fun BloodPressureObject.toObjectProto(): BloodPressureObjectProto {
    return BloodPressureObjectProto.newBuilder()
        .setSystolicMmHg(systolicMmHg)
        .setDiastolicMmHg(diastolicMmHg)
        .build()
}

fun PositionObject.toObjectProto(): PositionObjectProto {
    return PositionObjectProto.newBuilder()
        .setLatDeg(latDeg)
        .setLngDeg(lngDeg)
        .build()
}

fun TemperatureObject.toObjectProto(): TemperatureObjectProto {
    return TemperatureObjectProto.newBuilder()
        .setTemperatureCelsius(temperatureCelsius)
        .setMeasurementType(measurementType)
        .build()
}

fun VelocityObject.toObjectProto(): VelocityObjectProto {
    return VelocityObjectProto.newBuilder()
        .setSpeedMetersPerSecond(speedMetersPerSecond)
        .setDirection(direction)
        .build()
}
