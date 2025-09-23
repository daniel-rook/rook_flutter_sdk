package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.DataSourceAuthorizer
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionId
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionMessage
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.DataSourceAuthorizerProto
import com.rookmotion.rook_sdk_health_connect.proto.DataSourceAuthorizerResultProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.result.toProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.dataSourceAuthorizerSuccess(dataSourceAuthorizer: DataSourceAuthorizer) {
    val bytes = DataSourceAuthorizerResultProto.newBuilder()
        .setSuccess(dataSourceAuthorizer.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.dataSourceAuthorizerError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = DataSourceAuthorizerResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}

fun DataSourceAuthorizer.toProto(): DataSourceAuthorizerProto {
    val dataSourceAuthorizerProtoBuilder = DataSourceAuthorizerProto.newBuilder()
        .setDataSource(dataSource)
        .setAuthorized(authorized)
        .setAuthorizationUrl(authorizationUrl)

    if (authorizationUrl != null) {
        dataSourceAuthorizerProtoBuilder.setAuthorizationUrl(authorizationUrl)
        dataSourceAuthorizerProtoBuilder.setAuthorizationUrlIsNull(false)
    } else {
        dataSourceAuthorizerProtoBuilder.setAuthorizationUrlIsNull(true)
    }

    return dataSourceAuthorizerProtoBuilder.build()
}
