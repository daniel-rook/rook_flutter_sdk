package com.rookmotion.rook_sdk_health_connect.extension

import java.time.LocalDate

fun LocalDate.toProtoString(): String {
    return this.toString()
}
