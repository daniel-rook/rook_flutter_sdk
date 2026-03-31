package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.HCCalories
import com.rookmotion.rook_sdk_health_connect.DEFAULT_DOUBLE
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionMessage
import com.rookmotion.rook_sdk_health_connect.proto.CaloriesProto
import com.rookmotion.rook_sdk_health_connect.proto.CaloriesResultProto
import com.rookmotion.rook_sdk_health_connect.proto.SDKExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.caloriesSuccess(calories: HCCalories) {
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

fun HCCalories.toProto(): CaloriesProto {
    return CaloriesProto.newBuilder()
        .setBasal(basal ?: DEFAULT_DOUBLE)
        .setActive(active ?: DEFAULT_DOUBLE)
        .build()
}
