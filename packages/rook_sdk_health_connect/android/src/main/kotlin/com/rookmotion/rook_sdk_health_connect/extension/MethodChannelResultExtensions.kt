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

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.localizedMessage)

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

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.localizedMessage)

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

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.localizedMessage)

            resultSyncStatusProtoBuilder.setGenericExceptionProto(proto)
        }
    }

    val bytes = resultSyncStatusProtoBuilder.build().toByteArray()

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

        else -> {
            val proto = GenericExceptionProto.newBuilder()
                .setMessage(throwable.localizedMessage)

            resultDataSourceProtoBuilder.setGenericExceptionProto(proto)
        }
    }

    val bytes = resultDataSourceProtoBuilder.build().toByteArray()

    success(bytes)
}

private const val GENERIC_ERROR_CODE = "-1"
