package io.tryrook.rook_sdk_samsung_health.extension

import java.time.LocalDate

fun LocalDate.toProtoString(): String {
    return this.toString()
}
