//
//  FlutterSuccessResult.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 04/09/23.
//

import Flutter
import Foundation
import RookSDK

func diagnosticStateSuccess(flutterResult: FlutterResult, state: SDKState) {
    do {
        let bytes = try DiagnosticStateResultProto.with {
            $0.success = state.toProto()
        }.serializedData()
        
        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func diagnosticStateError(flutterResult: FlutterResult, error: Error) {
    do {
        let exception = SDKExceptionProto.with {
            $0.code = error.getSDKExceptionCode()
            $0.message = error.getSDKExceptionMessage()
        }
        
        let bytes = try DiagnosticStateResultProto.with {
            $0.failure = exception
        }.serializedData()
        
        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

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
                $0.basal = rookCalories.basalCalories.toDouble()
                $0.active = rookCalories.activeCalories.toDouble()
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

func hearRateSuccess(flutterResult: FlutterResult, rookHeartRate: RookHeartRate) {
    do {
        let bytes = try HearRateResultProto.with {
            $0.success = HearRateProto.with {
                $0.hrMaximumBpm = rookHeartRate.hrMaximumBPM.toInt32()
                $0.hrMinimumBpm = rookHeartRate.hrMinimumBPM.toInt32()
                $0.hrAvgBpm = rookHeartRate.hrAverageBMP.toInt32()
                $0.hrRestingBpm = rookHeartRate.hrRestingBPM.toInt32()
                $0.hrGranularData = rookHeartRate.hrGranularData?.map { $0.toGranularProto() } ?? []
                $0.hrvAvgRmssd = rookHeartRate.hrvAverageRMSSD ?? DEFAULT_DOUBLE
                $0.hrvAvgSdnn = rookHeartRate.hrvAverageSDNN ?? DEFAULT_DOUBLE
                $0.hrvSdnnGranularData = rookHeartRate.hrvSDNNGranularData?.map { $0.toGranularSdnnProto() } ?? []
                $0.hrvRmssdGranularData = rookHeartRate.hrvRMSSDGranularData?.map { $0.toGranularRmssdProto() } ?? []
            }
        }.serializedData()

        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func hearRateError(flutterResult: FlutterResult, error: Error) {
    do {
        let exception = SDKExceptionProto.with {
            $0.code = error.getSDKExceptionCode()
            $0.message = error.getSDKExceptionMessage()
        }

        let bytes = try HearRateResultProto.with {
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
