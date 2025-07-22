package io.tryrook.rook_sdk_samsung_health.handler

import io.flutter.plugin.common.MethodCall
import io.tryrook.rook_sdk_samsung_health.MethodResult
import io.tryrook.rook_sdk_samsung_health.extension.booleanError
import io.tryrook.rook_sdk_samsung_health.extension.booleanSuccess
import io.tryrook.rook_sdk_samsung_health.extension.getIntArrayAt
import io.tryrook.rook_sdk_samsung_health.extension.int
import io.tryrook.rook_sdk_samsung_health.extension.requestPermissionsStatusError
import io.tryrook.rook_sdk_samsung_health.extension.requestPermissionsStatusSuccess
import io.tryrook.rook_sdk_samsung_health.extension.throwable
import io.tryrook.rook_sdk_samsung_health.mapper.toAvailabilityStatusProto
import io.tryrook.rook_sdk_samsung_health.mapper.toSHPermission
import io.tryrook.rook_sdk_samsung_health.proto.SamsungHealthPermissionProto
import io.tryrook.sdk.samsung.RookSamsung
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class PermissionsHandler(private val coroutineScope: CoroutineScope, private val rookSamsung: RookSamsung) {
    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "checkSamsungHealthAvailability" -> coroutineScope.launch {
                try {
                    val availability = rookSamsung.checkSamsungHealthAvailability().getOrThrow()
                    val proto = availability.toAvailabilityStatusProto()

                    methodResult.int(proto.number)
                } catch (exception: NullPointerException) {
                    methodResult.throwable(exception)
                }
            }

            "checkSamsungHealthPermissions" -> coroutineScope.launch {
                val intValues = methodCall.getIntArrayAt(0)
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
                val intValues = methodCall.getIntArrayAt(0)
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
                val intValues = methodCall.getIntArrayAt(0)
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
