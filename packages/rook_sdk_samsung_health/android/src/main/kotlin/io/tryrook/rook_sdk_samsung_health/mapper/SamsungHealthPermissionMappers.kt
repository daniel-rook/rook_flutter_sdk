package io.tryrook.rook_sdk_samsung_health.mapper

import io.tryrook.rook_sdk_samsung_health.exception.UnknownPermissionException
import io.tryrook.rook_sdk_samsung_health.proto.SamsungHealthPermissionProto
import io.tryrook.sdk.samsung.domain.enums.SamsungHealthPermission

fun SamsungHealthPermissionProto.toSHPermission(): SamsungHealthPermission {
    return when (this) {
        SamsungHealthPermissionProto.ACTIVITY_SUMMARY_PERMISSION -> SamsungHealthPermission.ACTIVITY_SUMMARY
        SamsungHealthPermissionProto.BLOOD_GLUCOSE_PERMISSION -> SamsungHealthPermission.BLOOD_GLUCOSE
        SamsungHealthPermissionProto.BLOOD_OXYGEN_PERMISSION -> SamsungHealthPermission.BLOOD_OXYGEN
        SamsungHealthPermissionProto.BLOOD_PRESSURE_PERMISSION -> SamsungHealthPermission.BLOOD_PRESSURE
        SamsungHealthPermissionProto.BODY_COMPOSITION_PERMISSION -> SamsungHealthPermission.BODY_COMPOSITION
        SamsungHealthPermissionProto.EXERCISE_PERMISSION -> SamsungHealthPermission.EXERCISE
        SamsungHealthPermissionProto.EXERCISE_LOCATION_PERMISSION -> SamsungHealthPermission.EXERCISE_LOCATION
        SamsungHealthPermissionProto.FLOORS_CLIMBED_PERMISSION -> SamsungHealthPermission.FLOORS_CLIMBED
        SamsungHealthPermissionProto.HEART_RATE_PERMISSION -> SamsungHealthPermission.HEART_RATE
        SamsungHealthPermissionProto.NUTRITION_PERMISSION -> SamsungHealthPermission.NUTRITION
        SamsungHealthPermissionProto.SLEEP_PERMISSION -> SamsungHealthPermission.SLEEP
        SamsungHealthPermissionProto.STEPS_PERMISSION -> SamsungHealthPermission.STEPS
        SamsungHealthPermissionProto.WATER_INTAKE_PERMISSION -> SamsungHealthPermission.WATER_INTAKE
        SamsungHealthPermissionProto.UNRECOGNIZED -> throw UnknownPermissionException()
    }
}
