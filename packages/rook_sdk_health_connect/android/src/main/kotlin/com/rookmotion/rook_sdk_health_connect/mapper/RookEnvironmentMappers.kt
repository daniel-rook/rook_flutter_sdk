package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.environment.RookEnvironment
import com.rookmotion.rook_sdk_health_connect.data.proto.RookEnvironmentProto

fun RookEnvironmentProto.toRookEnvironment(): RookEnvironment {
    return if (this == RookEnvironmentProto.SANDBOX) {
        RookEnvironment.SANDBOX
    } else {
        RookEnvironment.PRODUCTION
    }
}
