//
//  FlutterSuccessResult.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 04/09/23.
//

import Flutter
import Foundation
import RookSDK

func boolSuccess(flutterResult: FlutterResult, success: Bool) {
    do {
        let bytes = try BooleanResultProto.with {
            $0.success = success
        }.serializedData()

        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func boolError(flutterResult: FlutterResult, error: Error) {
    do {
        let exception = SDKExceptionProto.with {
            $0.code = error.getSDKExceptionCode()
            $0.message = error.getSDKExceptionMessage()
        }

        let bytes = try BooleanResultProto.with {
            $0.failure = exception
        }.serializedData()

        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func int64Success(flutterResult: FlutterResult, int: Int) {
    do {
        let bytes = try Int64ResultProto.with {
            $0.success = Int64(int)
        }.serializedData()

        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func int64Error(flutterResult: FlutterResult, error: Error) {
    do {
        let exception = SDKExceptionProto.with {
            $0.code = error.getSDKExceptionCode()
            $0.message = error.getSDKExceptionMessage()
        }

        let bytes = try Int64ResultProto.with {
            $0.failure = exception
        }.serializedData()

        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func dailyCaloriesSuccess(flutterResult: FlutterResult, rookCalories: RookCalories) {
    do {
        let bytes = try CaloriesResultProto.with {
            $0.success = CaloriesProto.with {
                $0.basal = Double(rookCalories.basalCalories ?? .zero)
                $0.active = Double(rookCalories.activeCalories ?? .zero)
            }
        }.serializedData()

        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func dailyCaloriesError(flutterResult: FlutterResult, error: Error) {
    do {
        let exception = SDKExceptionProto.with {
            $0.code = error.getSDKExceptionCode()
            $0.message = error.getSDKExceptionMessage()
        }

        let bytes = try CaloriesResultProto.with {
            $0.failure = exception
        }.serializedData()

        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func sleepSummarySuccess(flutterResult: FlutterResult, sleepSummary: [RookSleepSummary]) {
    do {
        let sleepSummaries = SleepSummariesProto.with {
            $0.elements = sleepSummary.map { it in it.toProto() }
        }
        
        let bytes = try SleepSummaryResultProto.with {
            $0.success = sleepSummaries
        }.serializedData()
        
        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func sleepSummaryError(flutterResult: FlutterResult, error: Error) {
    do {
        let exception = SDKExceptionProto.with {
            $0.code = error.getSDKExceptionCode()
            $0.message = error.getSDKExceptionMessage()
        }

        let bytes = try SleepSummaryResultProto.with {
            $0.failure = exception
        }.serializedData()

        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func physicalSummarySuccess(flutterResult: FlutterResult, physicalSummary: RookPhysicalSummary) {
    do {
        let bytes = try PhysicalSummaryResultProto.with {
            $0.success = physicalSummary.toProto()
        }.serializedData()
        
        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func physicalSummaryError(flutterResult: FlutterResult, error: Error) {
    do {
        let exception = SDKExceptionProto.with {
            $0.code = error.getSDKExceptionCode()
            $0.message = error.getSDKExceptionMessage()
        }

        let bytes = try PhysicalSummaryResultProto.with {
            $0.failure = exception
        }.serializedData()

        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func bodySummarySuccess(flutterResult: FlutterResult, bodySummary: RookBodySummary) {
    do {
        let bytes = try BodySummaryResultProto.with {
            $0.success = bodySummary.toProto()
        }.serializedData()
        
        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func bodySummaryError(flutterResult: FlutterResult, error: Error) {
    do {
        let exception = SDKExceptionProto.with {
            $0.code = error.getSDKExceptionCode()
            $0.message = error.getSDKExceptionMessage()
        }

        let bytes = try BodySummaryResultProto.with {
            $0.failure = exception
        }.serializedData()

        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func activityEventSuccess(flutterResult: FlutterResult, activityEvent: [RookActivityEvent]) {
    do {
        let activityEvents = ActivityEventsProto.with {
            $0.elements = activityEvent.map { it in it.toProto() }
        }
        
        let bytes = try ActivityEventResultProto.with {
            $0.success = activityEvents
        }.serializedData()
        
        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func activityEventError(flutterResult: FlutterResult, error: Error) {
    do {
        let exception = SDKExceptionProto.with {
            $0.code = error.getSDKExceptionCode()
            $0.message = error.getSDKExceptionMessage()
        }

        let bytes = try ActivityEventResultProto.with {
            $0.failure = exception
        }.serializedData()

        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}
