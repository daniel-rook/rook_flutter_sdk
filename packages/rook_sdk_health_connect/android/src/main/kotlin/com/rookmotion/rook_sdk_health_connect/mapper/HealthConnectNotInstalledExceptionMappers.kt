package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.exception.HealthConnectNotInstalledException
import com.rookmotion.rook_sdk_health_connect.data.proto.HealthConnectNotInstalledExceptionProto

fun HealthConnectNotInstalledException.toProto(): HealthConnectNotInstalledExceptionProto {
    return HealthConnectNotInstalledExceptionProto.newBuilder()
        .setMessage(message)
        .build()
}
