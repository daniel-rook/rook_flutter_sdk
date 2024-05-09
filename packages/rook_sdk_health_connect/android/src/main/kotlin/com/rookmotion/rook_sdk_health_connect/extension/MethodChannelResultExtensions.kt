package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.enums.SyncStatus
import com.rookmotion.rook.sdk.domain.exception.DeviceNotSupportedException
import com.rookmotion.rook.sdk.domain.exception.HealthConnectNotInstalledException
import com.rookmotion.rook.sdk.domain.exception.HttpRequestException
import com.rookmotion.rook.sdk.domain.exception.MissingAndroidPermissionsException
import com.rookmotion.rook.sdk.domain.exception.MissingConfigurationException
import com.rookmotion.rook.sdk.domain.exception.MissingPermissionsException
import com.rookmotion.rook.sdk.domain.exception.RequestQuotaExceededException
import com.rookmotion.rook.sdk.domain.exception.SDKNotInitializedException
import com.rookmotion.rook.sdk.domain.exception.TimeoutException
import com.rookmotion.rook.sdk.domain.exception.UserNotInitializedException
import com.rookmotion.rook.sdk.domain.model.DataSource
import com.rookmotion.rook_sdk_health_connect.data.proto.DataSourceProtoListWrapper
import com.rookmotion.rook_sdk_health_connect.data.proto.GenericExceptionProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultBooleanProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultDataSourceProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultInt64Proto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultSyncStatusProto
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.intSuccess(int: Int) {
    success(int)
}

fun MethodChannel.Result.throwableError(throwable: Throwable) {
    error(GENERIC_ERROR_CODE, throwable.message, null)
}

fun MethodChannel.Result.resultBooleanSuccess(boolean: Boolean) {
    val result = ResultBooleanProto.newBuilder()
        .setSuccess(boolean)
        .build()

    success(result.toByteArray())
}

fun MethodChannel.Result.resultBooleanError(throwable: Throwable) {
    val bytes = when (throwable) {
        is DeviceNotSupportedException -> {
            val result = ResultBooleanProto.newBuilder()
                .setDeviceNotSupportedExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is HealthConnectNotInstalledException -> {
            val result = ResultBooleanProto.newBuilder()
                .setHealthConnectNotInstalledExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is HttpRequestException -> {
            val result = ResultBooleanProto.newBuilder()
                .setHttpRequestExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is MissingConfigurationException -> {
            val result = ResultBooleanProto.newBuilder()
                .setMissingConfigurationExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is MissingPermissionsException -> {
            val result = ResultBooleanProto.newBuilder()
                .setMissingPermissionsExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is RequestQuotaExceededException -> {
            val result = ResultBooleanProto.newBuilder()
                .setRequestQuotaExceededExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is SDKNotInitializedException -> {
            val result = ResultBooleanProto.newBuilder()
                .setSdkNotInitializedExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is TimeoutException -> {
            val result = ResultBooleanProto.newBuilder()
                .setTimeoutExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is UserNotInitializedException -> {
            val result = ResultBooleanProto.newBuilder()
                .setUserNotInitializedExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is MissingAndroidPermissionsException -> {
            val result = ResultBooleanProto.newBuilder()
                .setMissingAndroidPermissionsExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.localizedMessage)

            val result = ResultBooleanProto.newBuilder()
                .setGenericExceptionProto(proto)
                .build()

            result.toByteArray()
        }
    }

    success(bytes)
}

fun MethodChannel.Result.resultInt64Success(long: Long) {
    val result = ResultInt64Proto.newBuilder()
        .setValue(long)
        .build()

    success(result.toByteArray())
}

fun MethodChannel.Result.resultInt64Error(throwable: Throwable) {
    val bytes = when (throwable) {
        is SDKNotInitializedException -> {
            val result = ResultInt64Proto.newBuilder()
                .setSdkNotInitializedExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.localizedMessage)

            val result = ResultInt64Proto.newBuilder()
                .setGenericExceptionProto(proto)
                .build()

            result.toByteArray()
        }
    }

    success(bytes)
}

fun MethodChannel.Result.resultSyncStatusSuccess(syncStatus: SyncStatus) {
    val result = ResultSyncStatusProto.newBuilder()
        .setSyncStatusProto(syncStatus.toProto())
        .build()

    success(result.toByteArray())
}

fun MethodChannel.Result.resultSyncStatusError(throwable: Throwable) {
    val bytes = when (throwable) {
        is DeviceNotSupportedException -> {
            val result = ResultSyncStatusProto.newBuilder()
                .setDeviceNotSupportedExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is HealthConnectNotInstalledException -> {
            val result = ResultSyncStatusProto.newBuilder()
                .setHealthConnectNotInstalledExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is HttpRequestException -> {
            val result = ResultSyncStatusProto.newBuilder()
                .setHttpRequestExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is MissingPermissionsException -> {
            val result = ResultSyncStatusProto.newBuilder()
                .setMissingPermissionsExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is RequestQuotaExceededException -> {
            val result = ResultSyncStatusProto.newBuilder()
                .setRequestQuotaExceededExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is SDKNotInitializedException -> {
            val result = ResultSyncStatusProto.newBuilder()
                .setSdkNotInitializedExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is TimeoutException -> {
            val result = ResultSyncStatusProto.newBuilder()
                .setTimeoutExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is UserNotInitializedException -> {
            val result = ResultSyncStatusProto.newBuilder()
                .setUserNotInitializedExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.localizedMessage)

            val result = ResultSyncStatusProto.newBuilder()
                .setGenericExceptionProto(proto)
                .build()

            result.toByteArray()
        }
    }

    success(bytes)
}

fun MethodChannel.Result.resultDataSourcesSuccess(dataSources: List<DataSource>) {
    val dataSourceProtoListWrapper = DataSourceProtoListWrapper.newBuilder()
        .addAllDataSources(dataSources.map { it.toProto() })
        .build()

    val result = ResultDataSourceProto.newBuilder()
        .setDataSourceProtoListWrapper(dataSourceProtoListWrapper)
        .build()

    success(result.toByteArray())
}

fun MethodChannel.Result.resultDataSourcesError(throwable: Throwable) {
    val bytes = when (throwable) {
        is SDKNotInitializedException -> {
            val result = ResultDataSourceProto.newBuilder()
                .setSdkNotInitializedExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        is UserNotInitializedException -> {
            val result = ResultDataSourceProto.newBuilder()
                .setUserNotInitializedExceptionProto(throwable.toProto())
                .build()

            result.toByteArray()
        }

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.localizedMessage)

            val result = ResultDataSourceProto.newBuilder()
                .setGenericExceptionProto(proto)
                .build()

            result.toByteArray()
        }
    }

    success(bytes)
}

private const val GENERIC_ERROR_CODE = "-1"
