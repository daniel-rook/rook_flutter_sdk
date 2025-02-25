package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.model.DailyCalories
import com.rookmotion.rook_sdk_health_connect.proto.DailyCaloriesProto

fun DailyCalories.toProto(): DailyCaloriesProto {
    return DailyCaloriesProto.newBuilder()
        .setBasal(basal)
        .setActive(active)
        .build()
}
