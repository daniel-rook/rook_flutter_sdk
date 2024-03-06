package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.enums.HealthPermission
import com.rookmotion.rook_sdk_health_connect.exception.HCUnknownPermissionException
import com.rookmotion.rook_sdk_health_connect.data.proto.HealthPermissionProto

fun HealthPermissionProto.toDomain(): HealthPermission {
    return when (this) {
        HealthPermissionProto.SLEEP -> HealthPermission.SLEEP
        HealthPermissionProto.PHYSICAL -> HealthPermission.PHYSICAL
        HealthPermissionProto.BODY -> HealthPermission.BODY
        HealthPermissionProto.ALL -> HealthPermission.ALL
        else -> throw HCUnknownPermissionException()
    }
}
