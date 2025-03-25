package com.rookmotion.rook_sdk_health_connect.mapper

fun Boolean?.toInt(): Int {
    return when (this) {
        false -> 0
        true -> 1
        else -> 2
    }
}
