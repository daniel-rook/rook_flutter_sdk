package io.tryrook.rook_sdk_samsung_health.extension

import io.tryrook.rook_sdk_samsung_health.DEFAULT_STRING

fun String.checkNonDefault(): String? {
    return if (this == DEFAULT_STRING) {
        null
    } else {
        this
    }
}
