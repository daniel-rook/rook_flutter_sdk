package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionMessage
import io.tryrook.rook_sdk_samsung_health.proto.CaloriesProto
import io.tryrook.rook_sdk_samsung_health.proto.CaloriesResultProto
import io.tryrook.rook_sdk_samsung_health.proto.SDKExceptionProto
import io.tryrook.sdk.samsung.domain.model.SHCalories

fun MethodChannel.Result.caloriesSuccess(calories: SHCalories) {
    val bytes = CaloriesResultProto.newBuilder()
        .setSuccess(calories.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.caloriesError(throwable: Throwable) {
    val exception = SDKExceptionProto.newBuilder()
        .setCode(throwable.getSDKExceptionCode())
        .setMessage(throwable.getSDKExceptionMessage())

    val bytes = CaloriesResultProto.newBuilder()
        .setFailure(exception)
        .build()
        .toByteArray()

    success(bytes)
}

fun SHCalories.toProto(): CaloriesProto {
    return CaloriesProto.newBuilder()
        .setBasal(basal)
        .setActive(active)
        .build()
}
