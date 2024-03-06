package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.enums.AvailabilityStatus
import com.rookmotion.rook_sdk_health_connect.data.proto.AvailabilityStatusProto

fun AvailabilityStatus.toProto(): AvailabilityStatusProto {
    return when (this) {
        AvailabilityStatus.INSTALLED -> AvailabilityStatusProto.INSTALLED
        AvailabilityStatus.NOT_INSTALLED -> AvailabilityStatusProto.NOT_INSTALLED
        AvailabilityStatus.NOT_SUPPORTED -> AvailabilityStatusProto.NOT_SUPPORTED
    }
}
