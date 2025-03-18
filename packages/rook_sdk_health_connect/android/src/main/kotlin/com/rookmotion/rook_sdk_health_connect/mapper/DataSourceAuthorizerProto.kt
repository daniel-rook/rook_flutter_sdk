package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.model.DataSourceAuthorizer
import com.rookmotion.rook_sdk_health_connect.proto.DataSourceAuthorizerProto

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
