package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.enums.SyncStatus
import com.rookmotion.rook.sdk.domain.exception.DeviceNotSupportedException
import com.rookmotion.rook.sdk.domain.exception.HealthConnectNotInstalledException
import com.rookmotion.rook.sdk.domain.exception.HttpRequestException
import com.rookmotion.rook.sdk.domain.exception.MissingPermissionsException
import com.rookmotion.rook.sdk.domain.exception.RequestQuotaExceededException
import com.rookmotion.rook.sdk.domain.exception.SDKNotAuthorizedException
import com.rookmotion.rook.sdk.domain.exception.SDKNotInitializedException
import com.rookmotion.rook.sdk.domain.exception.TimeoutException
import com.rookmotion.rook.sdk.domain.exception.UserNotInitializedException
import com.rookmotion.rook_sdk_health_connect.data.proto.GenericExceptionProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultSyncStatusProto
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.resultSyncStatusSuccess(syncStatus: SyncStatus) {
    val bytes = ResultSyncStatusProto.newBuilder()
        .setSyncStatusProto(syncStatus.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.resultSyncStatusError(throwable: Throwable) {
    val resultSyncStatusProtoBuilder = ResultSyncStatusProto.newBuilder()

    when (throwable) {
        is DeviceNotSupportedException -> {
            resultSyncStatusProtoBuilder.setDeviceNotSupportedExceptionProto(throwable.toProto())
        }

        is HealthConnectNotInstalledException -> {
            resultSyncStatusProtoBuilder.setHealthConnectNotInstalledExceptionProto(throwable.toProto())
        }

        is HttpRequestException -> {
            resultSyncStatusProtoBuilder.setHttpRequestExceptionProto(throwable.toProto())
        }

        is MissingPermissionsException -> {
            resultSyncStatusProtoBuilder.setMissingPermissionsExceptionProto(throwable.toProto())
        }

        is RequestQuotaExceededException -> {
            resultSyncStatusProtoBuilder.setRequestQuotaExceededExceptionProto(throwable.toProto())
        }

        is SDKNotInitializedException -> {
            resultSyncStatusProtoBuilder.setSdkNotInitializedExceptionProto(throwable.toProto())
        }

        is TimeoutException -> {
            resultSyncStatusProtoBuilder.setTimeoutExceptionProto(throwable.toProto())
        }

        is UserNotInitializedException -> {
            resultSyncStatusProtoBuilder.setUserNotInitializedExceptionProto(throwable.toProto())
        }

        is SDKNotAuthorizedException -> {
            resultSyncStatusProtoBuilder.setSdkNotAuthorizedExceptionProto(throwable.toProto())
        }

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.getErrorMessage())

            resultSyncStatusProtoBuilder.setGenericExceptionProto(proto)
        }
    }

    val bytes = resultSyncStatusProtoBuilder.build().toByteArray()

    success(bytes)
}
