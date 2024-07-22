package com.rookmotion.rook_sdk_health_connect.extension

import io.flutter.plugin.common.MethodCall

fun MethodCall.getBooleanArgAt(index: Int): Boolean {
    return ((arguments as ArrayList<*>)[index] as Boolean)
}

fun MethodCall.getByteArrayArgAt(index: Int): ByteArray {
    return ((arguments as ArrayList<*>)[index] as ByteArray)
}

fun MethodCall.getStringArgAt(index: Int): String {
    return ((arguments as ArrayList<*>)[index] as String)
}

fun MethodCall.getStringNullableArgAt(index: Int): String? {
    return ((arguments as ArrayList<*>)[index] as String?)
}

fun MethodCall.getIntArgAt(index: Int): Int {
    return ((arguments as ArrayList<*>)[index] as Int)
}

fun MethodCall.getLongArgAt(index: Int): Long {
    return ((arguments as ArrayList<*>)[index] as Long)
}
