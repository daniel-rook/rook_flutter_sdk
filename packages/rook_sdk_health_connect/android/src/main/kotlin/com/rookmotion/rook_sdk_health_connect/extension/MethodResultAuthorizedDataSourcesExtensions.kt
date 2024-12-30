package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.model.AuthorizedDataSources
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.ResultAuthorizedDataSourcesProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.authorizedDataSourcesSuccess(authorizedDataSources: AuthorizedDataSources) {
    val bytes = ResultAuthorizedDataSourcesProto.newBuilder()
        .setAuthorizedDataSourcesProto(authorizedDataSources.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.authorizedDataSourcesError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = ResultAuthorizedDataSourcesProto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
