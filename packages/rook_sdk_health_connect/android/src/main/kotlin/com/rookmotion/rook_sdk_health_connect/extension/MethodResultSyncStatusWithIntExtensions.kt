package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.exception.DeviceNotSupportedException
import com.rookmotion.rook.sdk.domain.exception.HealthConnectNotInstalledException
import com.rookmotion.rook.sdk.domain.exception.HttpRequestException
import com.rookmotion.rook.sdk.domain.exception.MissingHealthConnectPermissionsException
import com.rookmotion.rook.sdk.domain.exception.RequestQuotaExceededException
import com.rookmotion.rook.sdk.domain.exception.SDKNotAuthorizedException
import com.rookmotion.rook.sdk.domain.exception.SDKNotInitializedException
import com.rookmotion.rook.sdk.domain.exception.TimeoutException
import com.rookmotion.rook.sdk.domain.exception.UserNotInitializedException
import com.rookmotion.rook.sdk.domain.model.SyncStatusWithData
import com.rookmotion.rook_sdk_health_connect.DEFAULT_INT
import com.rookmotion.rook_sdk_health_connect.data.proto.GenericExceptionProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultSyncStatusWithIntProto
import com.rookmotion.rook_sdk_health_connect.data.proto.SyncStatusProto
import com.rookmotion.rook_sdk_health_connect.data.proto.SyncStatusWithIntProto
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.resultSyncStatusWithIntSuccess(syncStatusWithData: SyncStatusWithData<Int?>) {
    val bytes = when (syncStatusWithData) {
        SyncStatusWithData.RecordsNotFound -> {
            val syncStatusWithIntProto = SyncStatusWithIntProto.newBuilder()
                .setSyncStatus(SyncStatusProto.RECORDS_NOT_FOUND)
                .setSteps(DEFAULT_INT)
                .build()

            ResultSyncStatusWithIntProto.newBuilder()
                .setSyncStatusWithIntProto(syncStatusWithIntProto)
                .build()
                .toByteArray()
        }

        is SyncStatusWithData.Synced -> {
            val syncStatusWithIntProto = SyncStatusWithIntProto.newBuilder()
                .setSyncStatus(SyncStatusProto.SYNCED)
                .setSteps(syncStatusWithData.data ?: DEFAULT_INT)
                .build()

            ResultSyncStatusWithIntProto.newBuilder()
                .setSyncStatusWithIntProto(syncStatusWithIntProto)
                .build()
                .toByteArray()
        }
    }

    success(bytes)
}

fun MethodChannel.Result.resultSyncStatusWithIntError(throwable: Throwable) {
    val resultSyncStatusWithIntProtoBuilder = ResultSyncStatusWithIntProto.newBuilder()

    when (throwable) {
        is DeviceNotSupportedException -> {
            resultSyncStatusWithIntProtoBuilder.setDeviceNotSupportedExceptionProto(throwable.toProto())
        }

        is HealthConnectNotInstalledException -> {
            resultSyncStatusWithIntProtoBuilder.setHealthConnectNotInstalledExceptionProto(throwable.toProto())
        }

        is HttpRequestException -> {
            resultSyncStatusWithIntProtoBuilder.setHttpRequestExceptionProto(throwable.toProto())
        }

        is MissingHealthConnectPermissionsException -> {
            resultSyncStatusWithIntProtoBuilder.setMissingPermissionsExceptionProto(throwable.toProto())
        }

        is RequestQuotaExceededException -> {
            resultSyncStatusWithIntProtoBuilder.setRequestQuotaExceededExceptionProto(throwable.toProto())
        }

        is SDKNotInitializedException -> {
            resultSyncStatusWithIntProtoBuilder.setSdkNotInitializedExceptionProto(throwable.toProto())
        }

        is TimeoutException -> {
            resultSyncStatusWithIntProtoBuilder.setTimeoutExceptionProto(throwable.toProto())
        }

        is UserNotInitializedException -> {
            resultSyncStatusWithIntProtoBuilder.setUserNotInitializedExceptionProto(throwable.toProto())
        }

        is SDKNotAuthorizedException -> {
            resultSyncStatusWithIntProtoBuilder.setSdkNotAuthorizedExceptionProto(throwable.toProto())
        }

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.getErrorMessage())

            resultSyncStatusWithIntProtoBuilder.setGenericExceptionProto(proto)
        }
    }

    val bytes = resultSyncStatusWithIntProtoBuilder.build().toByteArray()

    success(bytes)
}
