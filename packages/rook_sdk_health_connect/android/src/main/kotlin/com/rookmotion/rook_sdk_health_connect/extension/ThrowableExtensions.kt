package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.exception.BadUserTimeZoneException
import com.rookmotion.rook.sdk.domain.exception.DateNotValidForEventsException
import com.rookmotion.rook.sdk.domain.exception.DateNotValidForSummariesException
import com.rookmotion.rook.sdk.domain.exception.DeviceNotSupportedException
import com.rookmotion.rook.sdk.domain.exception.HealthConnectNotInstalledException
import com.rookmotion.rook.sdk.domain.exception.HttpRequestException
import com.rookmotion.rook.sdk.domain.exception.MissingAndroidPermissionsException
import com.rookmotion.rook.sdk.domain.exception.MissingConfigurationException
import com.rookmotion.rook.sdk.domain.exception.MissingHealthConnectPermissionsException
import com.rookmotion.rook.sdk.domain.exception.RequestQuotaExceededException
import com.rookmotion.rook.sdk.domain.exception.SDKNotAuthorizedException
import com.rookmotion.rook.sdk.domain.exception.SDKNotInitializedException
import com.rookmotion.rook.sdk.domain.exception.TimeoutException
import com.rookmotion.rook.sdk.domain.exception.UserNotDeletedException
import com.rookmotion.rook.sdk.domain.exception.UserNotInitializedException
import com.rookmotion.rook.sdk.domain.exception.UserNotRegisteredException

fun Throwable.getPluginExceptionMessage(): String {
    return message ?: cause?.message ?: GENERIC_ERROR_MESSAGE
}

fun Throwable.getPluginExceptionId(): Int {
    return when (this) {
        is BadUserTimeZoneException -> BAD_USER_TIME_ZONE
        is DateNotValidForEventsException -> DATE_NOT_VALID_FOR_EVENTS
        is DateNotValidForSummariesException -> DATE_NOT_VALID_FOR_SUMMARIES
        is DeviceNotSupportedException -> DEVICE_NOT_SUPPORTED
        is HealthConnectNotInstalledException -> HEALTH_CONNECT_NOT_INSTALLED
        is HttpRequestException -> HTTP_REQUEST
        is MissingAndroidPermissionsException -> MISSING_ANDROID_PERMISSIONS
        is MissingConfigurationException -> MISSING_CONFIGURATION
        is MissingHealthConnectPermissionsException -> MISSING_HEALTH_CONNECT_PERMISSIONS
        is RequestQuotaExceededException -> REQUEST_QUOTA_EXCEEDED
        is SDKNotAuthorizedException -> SDK_NOT_AUTHORIZED
        is SDKNotInitializedException -> SDK_NOT_INITIALIZED
        is TimeoutException -> TIMEOUT
        is UserNotDeletedException -> USER_NOT_DELETED
        is UserNotInitializedException -> USER_NOT_INITIALIZED
        is UserNotRegisteredException -> USER_NOT_REGISTERED
        else -> UNKNOWN
    }
}

fun Throwable.getPluginExceptionCode(): Int {
    return if (this is HttpRequestException) {
        this.code
    } else {
        GENERIC_ERROR_CODE
    }
}

private const val GENERIC_ERROR_MESSAGE = "Unknown native error"
private const val GENERIC_ERROR_CODE = -1

private const val UNKNOWN = -1
private const val BAD_USER_TIME_ZONE = 1
private const val DATE_NOT_VALID_FOR_EVENTS = 2
private const val DATE_NOT_VALID_FOR_SUMMARIES = 3
private const val DEVICE_NOT_SUPPORTED = 4
private const val HEALTH_CONNECT_NOT_INSTALLED = 5
private const val HTTP_REQUEST = 6
private const val MISSING_ANDROID_PERMISSIONS = 7
private const val MISSING_CONFIGURATION = 8
private const val MISSING_HEALTH_CONNECT_PERMISSIONS = 9
private const val REQUEST_QUOTA_EXCEEDED = 10
private const val SDK_NOT_AUTHORIZED = 11
private const val SDK_NOT_INITIALIZED = 12
private const val TIMEOUT = 13
private const val USER_NOT_DELETED = 14
private const val USER_NOT_INITIALIZED = 15
private const val USER_NOT_REGISTERED = 16
