package com.rookmotion.rook_sdk_health_connect.extension

import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.intSuccess(int: Int) {
    success(int)
}

fun MethodChannel.Result.throwable(throwable: Throwable) {
    error(GENERIC_ERROR_CODE, throwable.getErrorMessage(), null)
}

private const val GENERIC_ERROR_CODE = "-1"
