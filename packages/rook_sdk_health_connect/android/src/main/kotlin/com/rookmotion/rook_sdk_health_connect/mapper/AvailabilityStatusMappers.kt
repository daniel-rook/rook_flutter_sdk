package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.enums.HealthConnectAvailability
import com.rookmotion.rook_sdk_health_connect.data.proto.AvailabilityStatusProto

fun HealthConnectAvailability.toAvailabilityStatusProto(): AvailabilityStatusProto {
    return when (this) {
        HealthConnectAvailability.INSTALLED -> AvailabilityStatusProto.INSTALLED
        HealthConnectAvailability.NOT_INSTALLED -> AvailabilityStatusProto.NOT_INSTALLED
        HealthConnectAvailability.NOT_SUPPORTED -> AvailabilityStatusProto.NOT_SUPPORTED
    }
}
