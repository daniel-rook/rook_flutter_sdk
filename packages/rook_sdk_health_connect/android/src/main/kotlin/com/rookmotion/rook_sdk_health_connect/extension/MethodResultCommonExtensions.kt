package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionMessage
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.int(int: Int) {
    success(int)
}

fun MethodChannel.Result.boolean(boolean: Boolean) {
    success(boolean)
}

fun MethodChannel.Result.throwable(throwable: Throwable) {
    error(GENERIC_ERROR_CODE, throwable.getSDKExceptionMessage(), null)
}

private const val GENERIC_ERROR_CODE = "-1"
