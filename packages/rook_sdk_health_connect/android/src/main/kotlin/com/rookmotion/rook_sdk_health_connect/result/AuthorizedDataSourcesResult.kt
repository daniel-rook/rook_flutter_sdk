package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.AuthorizedDataSources
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionId
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionMessage
import com.rookmotion.rook_sdk_health_connect.mapper.toInt
import com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto
import com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesResultProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.authorizedDataSourcesSuccess(authorizedDataSources: AuthorizedDataSources) {
    val bytes = AuthorizedDataSourcesResultProto.newBuilder()
        .setSuccess(authorizedDataSources.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.authorizedDataSourcesError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = AuthorizedDataSourcesResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}

fun AuthorizedDataSources.toProto(): AuthorizedDataSourcesProto {
    return AuthorizedDataSourcesProto.newBuilder()
        .setOura(oura.toInt())
        .setPolar(polar.toInt())
        .setWhoop(whoop.toInt())
        .setFitbit(fitbit.toInt())
        .setGarmin(garmin.toInt())
        .setWithings(withings.toInt())
        .setDexcom(dexcom.toInt())
        .setAppleHealth(appleHealth.toInt())
        .setHealthConnect(healthConnect.toInt())
        .setAndroid(android.toInt())
        .build()
}
