package io.tryrook.rook_sdk_samsung_health.extension

import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.int(int: Int) {
    success(int)
}

fun MethodChannel.Result.boolean(boolean: Boolean) {
    success(boolean)
}

fun MethodChannel.Result.throwable(throwable: Throwable) {
    error(GENERIC_ERROR_CODE, throwable.getPluginExceptionMessage(), null)
}

private const val GENERIC_ERROR_CODE = "-1"
