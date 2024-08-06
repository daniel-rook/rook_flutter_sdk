package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.enums.RequestPermissionsStatus
import com.rookmotion.rook_sdk_health_connect.proto.RequestPermissionsStatusProto

fun RequestPermissionsStatus.toRequestPermissionsStatusProto(): RequestPermissionsStatusProto {
    return when (this) {
        RequestPermissionsStatus.REQUEST_SENT -> RequestPermissionsStatusProto.REQUEST_SENT
        RequestPermissionsStatus.ALREADY_GRANTED -> RequestPermissionsStatusProto.ALREADY_GRANTED
    }
}
