package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.model.DataSource
import com.rookmotion.rook_sdk_health_connect.proto.DataSourceProto

fun DataSource.toDataSourceProto(): DataSourceProto {
    val dataSourceProtoBuilder = DataSourceProto.newBuilder()
        .setName(name)
        .setDescription(description)
        .setImage(image)
        .setConnected(connected)

    if (authorizationUrl != null) {
        dataSourceProtoBuilder.setAuthorizationUrl(authorizationUrl)
        dataSourceProtoBuilder.setAuthorizationUrlIsNull(false)
    } else {
        dataSourceProtoBuilder.setAuthorizationUrlIsNull(true)
    }

    return dataSourceProtoBuilder.build()
}
