package io.tryrook.rook_sdk_samsung_health.extension

import java.time.ZonedDateTime
import java.time.format.DateTimeFormatter

fun ZonedDateTime.toProtoString(): String {
    return DateTimeFormatter.ISO_OFFSET_DATE_TIME.format(this)
}
