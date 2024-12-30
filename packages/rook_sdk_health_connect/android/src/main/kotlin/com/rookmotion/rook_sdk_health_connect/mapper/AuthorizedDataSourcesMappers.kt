package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.model.AuthorizedDataSources
import com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto

fun AuthorizedDataSources.toProto(): AuthorizedDataSourcesProto {
    return AuthorizedDataSourcesProto.newBuilder()
        .setOura(oura)
        .setPolar(polar)
        .setWhoop(whoop)
        .setFitbit(fitbit)
        .setGarmin(garmin)
        .setWithings(withings)
        .setAppleHealth(appleHealth)
        .setHealthConnect(healthConnect)
        .setAndroid(android)
        .build()
}
