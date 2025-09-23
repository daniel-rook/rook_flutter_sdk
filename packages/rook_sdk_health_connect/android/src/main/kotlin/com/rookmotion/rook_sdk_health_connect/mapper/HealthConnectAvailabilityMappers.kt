package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.enums.HealthConnectAvailability
import com.rookmotion.rook_sdk_health_connect.proto.HealthConnectAvailabilityProto

fun HealthConnectAvailability.toProto(): HealthConnectAvailabilityProto {
    return when (this) {
        HealthConnectAvailability.INSTALLED -> HealthConnectAvailabilityProto.INSTALLED
        HealthConnectAvailability.NOT_INSTALLED -> HealthConnectAvailabilityProto.NOT_INSTALLED
        HealthConnectAvailability.NOT_SUPPORTED -> HealthConnectAvailabilityProto.NOT_SUPPORTED
    }
}
