package com.rookmotion.rook_sdk_health_connect.extension

fun Throwable.getErrorMessage(): String {
    return message ?: GENERIC_ERROR_MESSAGE
}

private const val GENERIC_ERROR_MESSAGE = "Unknown native error"
