package io.tryrook.rook_sdk_samsung_health.mapper

import io.tryrook.rook_sdk_samsung_health.proto.DailyCaloriesProto
import io.tryrook.sdk.samsung.domain.model.SHCalories

fun SHCalories.toProto(): DailyCaloriesProto {
    return DailyCaloriesProto.newBuilder()
        .setBasal(basal)
        .setActive(active)
        .build()
}
