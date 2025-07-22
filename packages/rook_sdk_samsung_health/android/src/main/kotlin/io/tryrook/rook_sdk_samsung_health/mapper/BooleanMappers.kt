package io.tryrook.rook_sdk_samsung_health.mapper

fun Boolean?.toInt(): Int {
    return when (this) {
        false -> 0
        true -> 1
        else -> 2
    }
}
