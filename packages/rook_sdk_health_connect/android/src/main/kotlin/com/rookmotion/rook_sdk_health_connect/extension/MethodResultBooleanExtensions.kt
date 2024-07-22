package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.exception.DeviceNotSupportedException
import com.rookmotion.rook.sdk.domain.exception.HealthConnectNotInstalledException
import com.rookmotion.rook.sdk.domain.exception.HttpRequestException
import com.rookmotion.rook.sdk.domain.exception.MissingAndroidPermissionsException
import com.rookmotion.rook.sdk.domain.exception.MissingConfigurationException
import com.rookmotion.rook.sdk.domain.exception.MissingPermissionsException
import com.rookmotion.rook.sdk.domain.exception.RequestQuotaExceededException
import com.rookmotion.rook.sdk.domain.exception.SDKNotAuthorizedException
import com.rookmotion.rook.sdk.domain.exception.SDKNotInitializedException
import com.rookmotion.rook.sdk.domain.exception.TimeoutException
import com.rookmotion.rook.sdk.domain.exception.UserNotInitializedException
import com.rookmotion.rook_sdk_health_connect.data.proto.GenericExceptionProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultBooleanProto
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.resultBooleanSuccess(boolean: Boolean) {
    val bytes = ResultBooleanProto.newBuilder()
        .setSuccess(boolean)
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.resultBooleanError(throwable: Throwable) {
    val resultBooleanProtoBuilder = ResultBooleanProto.newBuilder()

    when (throwable) {
        is DeviceNotSupportedException -> {
            resultBooleanProtoBuilder.setDeviceNotSupportedExceptionProto(throwable.toProto())
        }

        is HealthConnectNotInstalledException -> {
            resultBooleanProtoBuilder.setHealthConnectNotInstalledExceptionProto(throwable.toProto())
        }

        is HttpRequestException -> {
            resultBooleanProtoBuilder.setHttpRequestExceptionProto(throwable.toProto())
        }

        is MissingConfigurationException -> {
            resultBooleanProtoBuilder.setMissingConfigurationExceptionProto(throwable.toProto())
        }

        is MissingPermissionsException -> {
            resultBooleanProtoBuilder.setMissingPermissionsExceptionProto(throwable.toProto())
        }

        is RequestQuotaExceededException -> {
            resultBooleanProtoBuilder.setRequestQuotaExceededExceptionProto(throwable.toProto())
        }

        is SDKNotInitializedException -> {
            resultBooleanProtoBuilder.setSdkNotInitializedExceptionProto(throwable.toProto())
        }

        is TimeoutException -> {
            resultBooleanProtoBuilder.setTimeoutExceptionProto(throwable.toProto())
        }

        is UserNotInitializedException -> {
            resultBooleanProtoBuilder.setUserNotInitializedExceptionProto(throwable.toProto())
        }

        is MissingAndroidPermissionsException -> {
            resultBooleanProtoBuilder.setMissingAndroidPermissionsExceptionProto(throwable.toProto())
        }

        is SDKNotAuthorizedException -> {
            resultBooleanProtoBuilder.setSdkNotAuthorizedExceptionProto(throwable.toProto())
        }

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.getErrorMessage())

            resultBooleanProtoBuilder.setGenericExceptionProto(proto)
        }
    }

    val bytes = resultBooleanProtoBuilder.build().toByteArray()

    success(bytes)
}