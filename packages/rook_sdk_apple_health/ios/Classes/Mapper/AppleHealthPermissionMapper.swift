//
//  AppleHealthPermissionMapper.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 26/05/25.
//

import Foundation
import RookSDK

extension AppleHealthPermissionProto {
    func toHealthDataType() -> HealthDataType? {
        switch self {
        case AppleHealthPermissionProto.appleExerciseTime:
               HealthDataType.appleExerciseTime
        case AppleHealthPermissionProto.appleMoveTime:
               HealthDataType.appleMoveTime
        case AppleHealthPermissionProto.appleStandTime:
               HealthDataType.appleStandTime
        case AppleHealthPermissionProto.basalEnergyBurned:
               HealthDataType.basalEnergyBurned
        case AppleHealthPermissionProto.activeEnergyBurned:
               HealthDataType.activeEnergyBurned
        case AppleHealthPermissionProto.stepCount:
               HealthDataType.stepCount
        case AppleHealthPermissionProto.distanceCycling:
               HealthDataType.distanceCycling
        case AppleHealthPermissionProto.distanceWalkingRunning:
               HealthDataType.distanceWalkingRunning
        case AppleHealthPermissionProto.distanceSwimming:
               HealthDataType.distanceSwimming
        case AppleHealthPermissionProto.swimmingStrokeCount:
               HealthDataType.swimmingStrokeCount
        case AppleHealthPermissionProto.flightsClimbed:
               HealthDataType.flightsClimbed
        case AppleHealthPermissionProto.walkingSpeed:
               HealthDataType.walkingSpeed
        case AppleHealthPermissionProto.walkingStepLength:
               HealthDataType.walkingStepLength
        case AppleHealthPermissionProto.runningPower:
               HealthDataType.runningPower
        case AppleHealthPermissionProto.runningSpeed:
               HealthDataType.runningSpeed
        case AppleHealthPermissionProto.height:
               HealthDataType.height
        case AppleHealthPermissionProto.bodyMass:
               HealthDataType.bodyMass
        case AppleHealthPermissionProto.bodyMassIndex:
               HealthDataType.bodyMassIndex
        case AppleHealthPermissionProto.waistCircumference:
               HealthDataType.waistCircumference
        case AppleHealthPermissionProto.bodyFatPercentage:
               HealthDataType.bodyFatPercentage
        case AppleHealthPermissionProto.bodyTemperature:
               HealthDataType.bodyTemperature
        case AppleHealthPermissionProto.basalBodyTemperature:
               HealthDataType.basalBodyTemperature
        case AppleHealthPermissionProto.appleSleepingWristTemperature:
               HealthDataType.appleSleepingWristTemperature
        case AppleHealthPermissionProto.heartRateApple:
               HealthDataType.heartRate
        case AppleHealthPermissionProto.restingHeartRate:
               HealthDataType.restingHeartRate
        case AppleHealthPermissionProto.walkingHeartRateAverage:
               HealthDataType.walkingHeartRateAverage
        case AppleHealthPermissionProto.heartRateVariabilitySdnn:
            HealthDataType.heartRateVariabilitySDNN
        case AppleHealthPermissionProto.electrocardiogram:
               HealthDataType.electrocardiogram
        case AppleHealthPermissionProto.workout:
               HealthDataType.workout
        case AppleHealthPermissionProto.sleepAnalysis:
               HealthDataType.sleepAnalysis
        case AppleHealthPermissionProto.sleepApneaEvent:
               HealthDataType.sleepApneaEvent
        case AppleHealthPermissionProto.vo2Max:
               HealthDataType.vo2Max
        case AppleHealthPermissionProto.oxygenSaturation:
               HealthDataType.oxygenSaturation
        case AppleHealthPermissionProto.respiratoryRate:
               HealthDataType.respiratoryRate
        case AppleHealthPermissionProto.uvExposure:
               HealthDataType.uvExposure
        case AppleHealthPermissionProto.biologicalSex:
               HealthDataType.biologicalSex
        case AppleHealthPermissionProto.dateOfBirth:
               HealthDataType.dateOfBirth
        case AppleHealthPermissionProto.bloodPressureSystolic:
               HealthDataType.bloodPressureSystolic
        case AppleHealthPermissionProto.bloodPressureDiastolic:
               HealthDataType.bloodPressureDiastolic
        case AppleHealthPermissionProto.bloodGlucoseApple:
               HealthDataType.bloodGlucose
        case AppleHealthPermissionProto.dietaryEnergyConsumed:
               HealthDataType.dietaryEnergyConsumed
        case AppleHealthPermissionProto.dietaryProtein:
               HealthDataType.dietaryProtein
        case AppleHealthPermissionProto.dietarySugar:
               HealthDataType.dietarySugar
        case AppleHealthPermissionProto.dietaryFatTotal:
               HealthDataType.dietaryFatTotal
        case AppleHealthPermissionProto.dietaryCarbohydrates:
               HealthDataType.dietaryCarbohydrates
        case AppleHealthPermissionProto.dietaryFiber:
               HealthDataType.dietaryFiber
        case AppleHealthPermissionProto.dietarySodium:
               HealthDataType.dietarySodium
        case AppleHealthPermissionProto.dietaryCholesterol:
               HealthDataType.dietaryCholesterol
        default:
            nil
        }
    }
}
