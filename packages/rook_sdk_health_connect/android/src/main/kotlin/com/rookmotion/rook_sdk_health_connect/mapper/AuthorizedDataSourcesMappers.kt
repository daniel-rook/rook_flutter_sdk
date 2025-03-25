package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.model.AuthorizedDataSources
import com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto

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
