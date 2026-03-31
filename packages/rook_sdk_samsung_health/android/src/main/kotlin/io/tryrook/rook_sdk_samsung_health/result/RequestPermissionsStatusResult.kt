package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionMessage
import io.tryrook.rook_sdk_samsung_health.proto.RequestPermissionsStatusProto
import io.tryrook.rook_sdk_samsung_health.proto.RequestPermissionsStatusResultProto
import io.tryrook.rook_sdk_samsung_health.proto.SDKExceptionProto
import io.tryrook.sdk.samsung.domain.enums.SHRequestPermissionsStatus

fun MethodChannel.Result.requestPermissionsStatusSuccess(requestPermissionsStatus: SHRequestPermissionsStatus) {
    val bytes = RequestPermissionsStatusResultProto.newBuilder()
        .setSuccess(requestPermissionsStatus.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.requestPermissionsStatusError(throwable: Throwable) {
    val exception = SDKExceptionProto.newBuilder()
        .setCode(throwable.getSDKExceptionCode())
        .setMessage(throwable.getSDKExceptionMessage())

    val bytes = RequestPermissionsStatusResultProto.newBuilder()
        .setFailure(exception)
        .build()
        .toByteArray()

    success(bytes)
}

fun SHRequestPermissionsStatus.toProto(): RequestPermissionsStatusProto {
    return when (this) {
        SHRequestPermissionsStatus.REQUEST_SENT -> RequestPermissionsStatusProto.REQUEST_SENT
        SHRequestPermissionsStatus.ALREADY_GRANTED -> RequestPermissionsStatusProto.ALREADY_GRANTED
    }
}
