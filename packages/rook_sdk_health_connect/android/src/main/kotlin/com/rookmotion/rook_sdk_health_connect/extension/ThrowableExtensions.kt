package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.exception.HCException

fun Throwable.getSDKExceptionMessage(): String {
    return if (this is HCException) {
        this.message
    } else {
        this.message ?: this.cause?.message ?: GENERIC_ERROR_MESSAGE
    }
}

fun Throwable.getSDKExceptionCode(): Int {
    return if (this is HCException) {
        this.code
    } else {
        UNKNOWN
    }
}

private const val GENERIC_ERROR_MESSAGE = "Unknown native error"

private const val UNKNOWN = -1
