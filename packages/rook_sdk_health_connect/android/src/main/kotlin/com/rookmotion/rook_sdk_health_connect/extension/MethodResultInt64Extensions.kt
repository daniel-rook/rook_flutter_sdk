package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.exception.SDKNotAuthorizedException
import com.rookmotion.rook.sdk.domain.exception.SDKNotInitializedException
import com.rookmotion.rook_sdk_health_connect.data.proto.GenericExceptionProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultInt64Proto
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.resultInt64Success(long: Long) {
    val bytes = ResultInt64Proto.newBuilder()
        .setValue(long)
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.resultInt64Error(throwable: Throwable) {
    val resultInt64ProtoBuilder = ResultInt64Proto.newBuilder()

    when (throwable) {
        is SDKNotInitializedException -> {
            resultInt64ProtoBuilder.setSdkNotInitializedExceptionProto(throwable.toProto())
        }

        is SDKNotAuthorizedException -> {
            resultInt64ProtoBuilder.setSdkNotAuthorizedExceptionProto(throwable.toProto())
        }

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.getErrorMessage())

            resultInt64ProtoBuilder.setGenericExceptionProto(proto)
        }
    }

    val bytes = resultInt64ProtoBuilder.build().toByteArray()

    success(bytes)
}
