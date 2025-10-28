package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.model.complex.BloodPressureObject
import com.rookmotion.rook.sdk.domain.model.complex.PositionObject
import com.rookmotion.rook.sdk.domain.model.complex.TemperatureObject
import com.rookmotion.rook.sdk.domain.model.complex.VelocityObject
import com.rookmotion.rook_sdk_health_connect.proto.BloodPressureObjectProto
import com.rookmotion.rook_sdk_health_connect.proto.PositionObjectProto
import com.rookmotion.rook_sdk_health_connect.proto.TemperatureObjectProto
import com.rookmotion.rook_sdk_health_connect.proto.VelocityObjectProto

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
