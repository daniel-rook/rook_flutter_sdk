package io.tryrook.rook_sdk_samsung_health.extension

import io.tryrook.sdk.samsung.domain.exception.SHException

fun Throwable.getSDKExceptionMessage(): String {
    return if (this is SHException) {
        this.message
    } else {
        this.message ?: this.cause?.message ?: GENERIC_ERROR_MESSAGE
    }
}

fun Throwable.getSDKExceptionCode(): Int {
    return if (this is SHException) {
        this.code
    } else {
        UNKNOWN
    }
}

private const val GENERIC_ERROR_MESSAGE = "Unknown native error"

private const val UNKNOWN = -1
