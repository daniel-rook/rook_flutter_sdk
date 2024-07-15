package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.exception.SDKNotAuthorizedException
import com.rookmotion.rook.sdk.domain.exception.SDKNotInitializedException
import com.rookmotion.rook.sdk.domain.exception.UserNotInitializedException
import com.rookmotion.rook.sdk.domain.model.DataSource
import com.rookmotion.rook_sdk_health_connect.data.proto.DataSourceProtoListWrapper
import com.rookmotion.rook_sdk_health_connect.data.proto.GenericExceptionProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultDataSourceProto
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import io.flutter.plugin.common.MethodChannel

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
                .setMessage(throwable.getErrorMessage())

            resultDataSourceProtoBuilder.setGenericExceptionProto(proto)
        }
    }

    val bytes = resultDataSourceProtoBuilder.build().toByteArray()

    success(bytes)
}
