package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.model.DataSourceAuthorizer
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.ResultDataSourceAuthorizerProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.dataSourceAuthorizerSuccess(dataSourceAuthorizer: DataSourceAuthorizer) {
    val bytes = ResultDataSourceAuthorizerProto.newBuilder()
        .setDataSourceAuthorizerProto(dataSourceAuthorizer.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.dataSourceAuthorizerError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = ResultDataSourceAuthorizerProto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
