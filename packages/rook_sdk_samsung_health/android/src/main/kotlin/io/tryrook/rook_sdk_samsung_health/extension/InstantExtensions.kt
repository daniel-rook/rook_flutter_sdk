package io.tryrook.rook_sdk_samsung_health.extension

import java.time.Instant
import java.time.LocalDate
import java.time.ZoneId

fun Instant.toLocalDate(): LocalDate {
    return atZone(ZoneId.systemDefault()).toLocalDate()
}
