package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.AuthorizedDataSourceV2
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionId
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionMessage
import com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourceV2ListProto
import com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourceV2Proto
import com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourceV2ResultProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.authorizedDataSourceV2Success(dataSources: List<AuthorizedDataSourceV2>) {
    val list = AuthorizedDataSourceV2ListProto.newBuilder()
        .addAllList(dataSources.map { it.toProto() })
        .build()

    val bytes = AuthorizedDataSourceV2ResultProto.newBuilder()
        .setSuccess(list)
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.authorizedDataSourceV2Error(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = AuthorizedDataSourceV2ResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}

fun AuthorizedDataSourceV2.toProto(): AuthorizedDataSourceV2Proto {
    return AuthorizedDataSourceV2Proto.newBuilder()
        .setName(name)
        .setAuthorized(authorized)
        .setImageUrl(imageUrl)
        .build()
}
