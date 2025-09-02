package io.tryrook.rook_sdk_samsung_health.extension

import io.tryrook.sdk.samsung.domain.exception.SHDateNotValidForEventsException
import io.tryrook.sdk.samsung.domain.exception.SHDateNotValidForSummariesException
import io.tryrook.sdk.samsung.domain.exception.SHHttpRequestException
import io.tryrook.sdk.samsung.domain.exception.SHNotAuthorizedException
import io.tryrook.sdk.samsung.domain.exception.SHNotInitializedException
import io.tryrook.sdk.samsung.domain.exception.SHTimeoutException
import io.tryrook.sdk.samsung.domain.exception.SHUserNotInitializedException
import io.tryrook.sdk.samsung.domain.exception.SamsungHealthDisabledException
import io.tryrook.sdk.samsung.domain.exception.SamsungHealthNotInstalledException
import io.tryrook.sdk.samsung.domain.exception.SamsungHealthNotReadyException
import io.tryrook.sdk.samsung.domain.exception.SamsungHealthOutdatedException

fun Throwable.getPluginExceptionMessage(): String {
    return message ?: cause?.message ?: GENERIC_ERROR_MESSAGE
}

fun Throwable.getPluginExceptionId(): Int {
    return when (this) {
        is SamsungHealthDisabledException -> SAMSUNG_HEALTH_DISABLED
        is SamsungHealthNotInstalledException -> SAMSUNG_HEALTH_NOT_INSTALLED
        is SamsungHealthNotReadyException -> SAMSUNG_HEALTH_NOT_READY
        is SamsungHealthOutdatedException -> SAMSUNG_HEALTH_OUTDATED
        is SHDateNotValidForEventsException -> DATE_NOT_VALID_FOR_EVENTS
        is SHDateNotValidForSummariesException -> DATE_NOT_VALID_FOR_SUMMARIES
        is SHHttpRequestException -> HTTP_REQUEST
        is SHNotAuthorizedException -> SDK_NOT_AUTHORIZED
        is SHNotInitializedException -> SDK_NOT_INITIALIZED
        is SHTimeoutException -> TIMEOUT
        is SHUserNotInitializedException -> USER_NOT_INITIALIZED
        else -> UNKNOWN
    }
}

fun Throwable.getPluginExceptionCode(): Int {
    return if (this is SHHttpRequestException) {
        this.code
    } else {
        GENERIC_ERROR_CODE
    }
}

private const val GENERIC_ERROR_MESSAGE = "Unknown native error"
private const val GENERIC_ERROR_CODE = -1

private const val UNKNOWN = -1
private const val SAMSUNG_HEALTH_DISABLED = 1
private const val SAMSUNG_HEALTH_NOT_INSTALLED = 2
private const val SAMSUNG_HEALTH_NOT_READY = 3
private const val SAMSUNG_HEALTH_OUTDATED = 4
private const val DATE_NOT_VALID_FOR_EVENTS = 5
private const val DATE_NOT_VALID_FOR_SUMMARIES = 6
private const val HTTP_REQUEST = 7
private const val SDK_NOT_AUTHORIZED = 8
private const val SDK_NOT_INITIALIZED = 9
private const val TIMEOUT = 10
private const val USER_NOT_INITIALIZED = 11
