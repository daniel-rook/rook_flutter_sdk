package io.tryrook.rook_sdk_samsung_health.handler

import io.flutter.plugin.common.MethodCall
import io.tryrook.rook_sdk_samsung_health.MethodResult
import io.tryrook.rook_sdk_samsung_health.extension.getIntArrayListAt
import io.tryrook.rook_sdk_samsung_health.extension.int
import io.tryrook.rook_sdk_samsung_health.extension.throwable
import io.tryrook.rook_sdk_samsung_health.mapper.toProto
import io.tryrook.rook_sdk_samsung_health.mapper.toSHPermission
import io.tryrook.rook_sdk_samsung_health.proto.SamsungHealthPermissionProto
import io.tryrook.rook_sdk_samsung_health.result.booleanError
import io.tryrook.rook_sdk_samsung_health.result.booleanSuccess
import io.tryrook.rook_sdk_samsung_health.result.requestPermissionsStatusError
import io.tryrook.rook_sdk_samsung_health.result.requestPermissionsStatusSuccess
import io.tryrook.sdk.samsung.RookSamsung
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class PermissionsHandler(private val coroutineScope: CoroutineScope, private val rookSamsung: RookSamsung) {
    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "checkSamsungHealthAvailability" -> coroutineScope.launch {
                rookSamsung.checkSamsungHealthAvailability().fold(
                    { availability ->
                        val proto = availability.toProto()

                        methodResult.int(proto.number)
                    },
                    {
                        methodResult.throwable(it)
                    }
                )
            }

            "checkSamsungHealthPermissions" -> coroutineScope.launch {
                val intValues = methodCall.getIntArrayListAt(0)
                val permissions = intValues.map {
                    SamsungHealthPermissionProto.forNumber(it).toSHPermission()
                }.toSet()

                rookSamsung.checkSamsungHealthPermissions(permissions).fold(
                    {
                        methodResult.booleanSuccess(it)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "checkSamsungHealthPermissionsPartially" -> coroutineScope.launch {
                val intValues = methodCall.getIntArrayListAt(0)
                val permissions = intValues.map {
                    SamsungHealthPermissionProto.forNumber(it).toSHPermission()
                }.toSet()

                rookSamsung.checkSamsungHealthPermissionsPartially(permissions).fold(
                    {
                        methodResult.booleanSuccess(it)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "requestSamsungHealthPermissions" -> coroutineScope.launch {
                val intValues = methodCall.getIntArrayListAt(0)
                val permissions = intValues.map {
                    SamsungHealthPermissionProto.forNumber(it).toSHPermission()
                }.toSet()

                rookSamsung.requestSamsungHealthPermissions(permissions).fold(
                    {
                        methodResult.requestPermissionsStatusSuccess(it)
                    },
                    {
                        methodResult.requestPermissionsStatusError(it)
                    }
                )
            }

            else -> Unit
        }
    }
}
