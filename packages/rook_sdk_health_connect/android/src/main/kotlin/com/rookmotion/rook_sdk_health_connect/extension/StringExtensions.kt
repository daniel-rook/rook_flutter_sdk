package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook_sdk_health_connect.DEFAULT_STRING

fun String.checkNonDefault(): String? {
    return if (this == DEFAULT_STRING) {
        null
    } else {
        this
    }
}
