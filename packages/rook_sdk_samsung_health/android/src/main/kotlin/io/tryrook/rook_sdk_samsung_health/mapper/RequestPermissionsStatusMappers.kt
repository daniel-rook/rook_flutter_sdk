package io.tryrook.rook_sdk_samsung_health.mapper

import io.tryrook.rook_sdk_samsung_health.proto.RequestPermissionsStatusProto
import io.tryrook.sdk.samsung.domain.enums.SHRequestPermissionsStatus

fun SHRequestPermissionsStatus.toRequestPermissionsStatusProto(): RequestPermissionsStatusProto {
    return when (this) {
        SHRequestPermissionsStatus.REQUEST_SENT -> RequestPermissionsStatusProto.REQUEST_SENT
        SHRequestPermissionsStatus.ALREADY_GRANTED -> RequestPermissionsStatusProto.ALREADY_GRANTED
    }
}
