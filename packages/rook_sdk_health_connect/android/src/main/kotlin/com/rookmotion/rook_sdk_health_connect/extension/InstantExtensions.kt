package com.rookmotion.rook_sdk_health_connect.extension

import java.time.Instant
import java.time.LocalDate
import java.time.ZoneId
import java.time.ZonedDateTime
import java.time.format.DateTimeFormatter

fun Instant.toLocalDate(): LocalDate {
    return atZone(ZoneId.systemDefault()).toLocalDate()
}

fun Instant.toProtoString(): String {
    val zonedDateTime = ZonedDateTime.ofInstant(this, ZoneId.of("UTC"))

    return DateTimeFormatter.ISO_OFFSET_DATE_TIME.format(zonedDateTime)
}
