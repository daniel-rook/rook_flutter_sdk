package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.enums.BackgroundReadStatus
import com.rookmotion.rook_sdk_health_connect.proto.BackgroundReadStatusProto

fun BackgroundReadStatus.toProto(): BackgroundReadStatusProto {
    return when (this) {
        BackgroundReadStatus.UNAVAILABLE -> BackgroundReadStatusProto.UNAVAILABLE
        BackgroundReadStatus.PERMISSION_NOT_GRANTED -> BackgroundReadStatusProto.PERMISSION_NOT_GRANTED
        BackgroundReadStatus.PERMISSION_GRANTED -> BackgroundReadStatusProto.PERMISSION_GRANTED
    }
}
