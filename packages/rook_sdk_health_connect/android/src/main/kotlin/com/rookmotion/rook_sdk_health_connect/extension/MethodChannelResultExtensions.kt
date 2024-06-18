package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.enums.SyncStatus
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
import com.rookmotion.rook.sdk.domain.model.DataSource
import com.rookmotion.rook.sdk.domain.model.SyncStatusWithData
import com.rookmotion.rook_sdk_health_connect.DEFAULT_INT
import com.rookmotion.rook_sdk_health_connect.data.proto.DataSourceProtoListWrapper
import com.rookmotion.rook_sdk_health_connect.data.proto.GenericExceptionProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultBooleanProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultDataSourceProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultInt64Proto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultSyncStatusProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultSyncStatusWithIntProto
import com.rookmotion.rook_sdk_health_connect.data.proto.SyncStatusProto
import com.rookmotion.rook_sdk_health_connect.data.proto.SyncStatusWithIntProto
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.intSuccess(int: Int) {
    success(int)
}

fun MethodChannel.Result.throwable(throwable: Throwable) {
    error(GENERIC_ERROR_CODE, throwable.message, null)
}

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
                .setMessage(throwable.message ?: GENERIC_ERROR_MESSAGE)

            resultBooleanProtoBuilder.setGenericExceptionProto(proto)
        }
    }

    val bytes = resultBooleanProtoBuilder.build().toByteArray()

    success(bytes)
}

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
                .setMessage(throwable.message ?: GENERIC_ERROR_MESSAGE)

            resultInt64ProtoBuilder.setGenericExceptionProto(proto)
        }
    }

    val bytes = resultInt64ProtoBuilder.build().toByteArray()

    success(bytes)
}

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
                .setMessage(throwable.message ?: GENERIC_ERROR_MESSAGE)

            resultSyncStatusProtoBuilder.setGenericExceptionProto(proto)
        }
    }

    val bytes = resultSyncStatusProtoBuilder.build().toByteArray()

    success(bytes)
}

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

        is MissingPermissionsException -> {
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
                .setMessage(throwable.message ?: GENERIC_ERROR_MESSAGE)

            resultSyncStatusWithIntProtoBuilder.setGenericExceptionProto(proto)
        }
    }

    val bytes = resultSyncStatusWithIntProtoBuilder.build().toByteArray()

    success(bytes)
}

fun MethodChannel.Result.resultDataSourcesSuccess(dataSources: List<DataSource>) {
    val dataSourceProtoListWrapper = DataSourceProtoListWrapper.newBuilder()
        .addAllDataSources(dataSources.map { it.toProto() })
        .build()

    val bytes = ResultDataSourceProto.newBuilder()
        .setDataSourceProtoListWrapper(dataSourceProtoListWrapper)
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.resultDataSourcesError(throwable: Throwable) {
    val resultDataSourceProtoBuilder = ResultDataSourceProto.newBuilder()

    when (throwable) {
        is SDKNotInitializedException -> {
            resultDataSourceProtoBuilder.setSdkNotInitializedExceptionProto(throwable.toProto())
        }

        is UserNotInitializedException -> {
            resultDataSourceProtoBuilder.setUserNotInitializedExceptionProto(throwable.toProto())
        }

        is SDKNotAuthorizedException -> {
            resultDataSourceProtoBuilder.setSdkNotAuthorizedExceptionProto(throwable.toProto())
        }

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.message ?: GENERIC_ERROR_MESSAGE)

            resultDataSourceProtoBuilder.setGenericExceptionProto(proto)
        }
    }

    val bytes = resultDataSourceProtoBuilder.build().toByteArray()

    success(bytes)
}

private const val GENERIC_ERROR_CODE = "-1"
private const val GENERIC_ERROR_MESSAGE = "Unknown error"
