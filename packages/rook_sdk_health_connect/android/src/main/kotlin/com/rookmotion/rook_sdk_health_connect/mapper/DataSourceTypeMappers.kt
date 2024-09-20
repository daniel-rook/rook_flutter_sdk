package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.enums.DataSourceType
import com.rookmotion.rook_sdk_health_connect.exception.UnknownDataSourceTypeException
import com.rookmotion.rook_sdk_health_connect.proto.DataSourceTypeProto

fun DataSourceTypeProto.toDataSourceType(): DataSourceType {
    return when (this) {
        DataSourceTypeProto.GARMIN -> DataSourceType.GARMIN
        DataSourceTypeProto.OURA -> DataSourceType.OURA
        DataSourceTypeProto.POLAR -> DataSourceType.POLAR
        DataSourceTypeProto.FITBIT -> DataSourceType.FITBIT
        DataSourceTypeProto.WITHINGS -> DataSourceType.WITHINGS
        DataSourceTypeProto.WHOOP -> DataSourceType.WHOOP
        else -> throw UnknownDataSourceTypeException()
    }
}
