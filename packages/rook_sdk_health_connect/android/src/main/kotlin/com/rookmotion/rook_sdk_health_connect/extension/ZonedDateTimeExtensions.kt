package com.rookmotion.rook_sdk_health_connect.extension

import java.time.ZonedDateTime
import java.time.format.DateTimeFormatter

fun ZonedDateTime.toProtoString(): String {
    return DateTimeFormatter.ISO_OFFSET_DATE_TIME.format(this)
}
