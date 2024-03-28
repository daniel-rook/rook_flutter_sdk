import Flutter
import UIKit
import RookSDK
import RookAppleHealth
import RookConnectTransmission

public class RookSdkAppleHealthPlugin: NSObject, FlutterPlugin {
    private let rookConnectPermissionsManager = RookConnectPermissionsManager()
    private let rookSummaryManager = RookSummaryManger()
    private let rookEventsManager = RookEventsManager()
    private let rookVariableExtractionManager = RookVariableExtractionManager()
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "rook_sdk_apple_health", binaryMessenger: registrar.messenger())
        let instance = RookSdkAppleHealthPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        
        AnalyticsExtractionConfigurator.shared.setPlatform(.flutter)
        AnalyticsTransmissionConfigurator.shared.setPlatform(.flutter)
        
        RookBackGroundExtraction.shared.setBackGroundListeners()
        RookBackGroundSync.shared.setBackListeners()
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "setConfiguration":
            let bytes = call.getDataArgAt(0)
            
            runWithValue(
                flutterResult: result,
                builder: { try RookConfigurationProto(serializedData: bytes.data) },
                block: { it in
                    RookConnectConfigurationManager.shared.setConfiguration(
                        clientUUID: it.clientUuid,
                        secretKey: it.secretKey
                    )
                    
                    RookConnectConfigurationManager.shared.setEnvironment(it.environment.toDomain())
                    
                    resultBoolSuccess(flutterResult: result, true)
                }
            )
            break
        case "getUserID":
            RookConnectConfigurationManager.shared.getUserId { it in
                switch it {
                case Result.success(let userID):
                    result(userID)
                case Result.failure(let error):
                    result(nil)
                }
            }
            break
        case "initRook":
            RookConnectConfigurationManager.shared.initRook { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "updateUserID":
            let userID = call.getStringArgAt(0)
            
            RookConnectConfigurationManager.shared.updateUserId(userID) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "clearUserID":
            RookConnectConfigurationManager.shared.clearUser() { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "deleteUserFromRook":
            RookConnectConfigurationManager.shared.removeUserFromRook() { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncUserTimeZone":
            RookConnectConfigurationManager.shared.syncUserTimeZone() { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "requestAllPermissions":
            rookConnectPermissionsManager.requestAllPermissions() { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "requestSleepPermissions":
            rookConnectPermissionsManager.requestSleepPermissions() { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "requestBodyPermissions":
            rookConnectPermissionsManager.requestBodyPermissions() { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "requestPhysicalPermissions":
            rookConnectPermissionsManager.requestPhysicalPermissions() { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncSleepSummary":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)
            
            rookSummaryManager.syncSleepSummary(from: date) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncBodySummary":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)
            
            rookSummaryManager.syncBodySummary(from: date) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncPhysicalSummary":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)
            
            rookSummaryManager.syncPhysicalSummary(from: date) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncPendingSummaries":
            rookSummaryManager.syncPendingSummaries() { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncYesterdaySummaries":
            rookSummaryManager.syncYesterdaySummaries() {
                resultBoolSuccess(flutterResult: result, true)
            }
            break
        case "syncPhysicalEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)
            
            rookEventsManager.syncTrainingEvent(date: date) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
            
        case "syncBloodGlucoseEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)
            
            rookEventsManager.syncBloodGlucoseEvents(date: date) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncBloodPressureEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)
            
            rookEventsManager.syncBloodPressureEvents(date: date) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncBodyMetricsEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)
            
            rookEventsManager.syncBodyMetricsEvents(date: date) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncBodyHeartRateEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)
            
            rookEventsManager.syncBodyHeartRateEvent(date: date) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncPhysicalHeartRateEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)
            
            rookEventsManager.syncPhysicalHeartRateEvent(date: date) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncBodyOxygenationEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)
            
            rookEventsManager.syncBodyOxygenationEvent(date: date) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncPhysicalOxygenationEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)
            
            rookEventsManager.syncPhysicalOxygenationEvent(date: date) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncTemperatureEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)
            
            rookEventsManager.syncTemperatureEvents(date: date) { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncPendingEvents":
            rookEventsManager.syncPendingEvents() { it in
                switch it {
                case Result.success(let bool):
                    resultBoolSuccess(flutterResult: result, bool)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "syncYesterdayEvents":
            rookEventsManager.syncYesterdayEvents() {
                resultBoolSuccess(flutterResult: result, true)
            }
            break
        case "isStepsTrackerActive":
            RookBackGroundExtraction.shared.isStepsBackgroundEnable(completion: { it in
                resultBoolSuccess(flutterResult: result, it)
            })
            break
        case "startStepsTracker":
            RookBackGroundExtraction.shared.enableBackGroundForSteps()
            
            resultBoolSuccess(flutterResult: result, true)
            break
        case "stopStepsTracker":
            RookBackGroundExtraction.shared.disableBackGroundForSteps() { it in
                switch it {
                case Result.success(let success):
                    resultBoolSuccess(flutterResult: result, success)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "getTodaySteps":
            rookVariableExtractionManager.getTodaySteps() { it in
                switch it {
                case Result.success(let steps):
                    resultInt64Success(flutterResult: result, steps)
                case Result.failure(let error):
                    let errorString = "\(error)"
                    
                    if errorString == "sumQuantityNull" {
                        resultInt64Success(flutterResult: result, 0)
                    } else {
                        resultInt64Error(flutterResult: result, error)
                    }
                }
            }
            break
        case "isCaloriesTrackerActive":
            RookBackGroundExtraction.shared.isCaloriesBackgroundEnable(completion: { it in
                resultBoolSuccess(flutterResult: result, it)
            })
            break
        case "startCaloriesTracker":
            RookBackGroundExtraction.shared.enableBackGroundForCalories()
            
            resultBoolSuccess(flutterResult: result, true)
            break
        case "stopCaloriesTracker":
            RookBackGroundExtraction.shared.disableBackGroundForCalories() { it in
                switch it {
                case Result.success(let success):
                    resultBoolSuccess(flutterResult: result, success)
                case Result.failure(let error):
                    resultBoolError(flutterResult: result, error)
                }
            }
            break
        case "getTodayCalories":
            rookVariableExtractionManager.getTodayActiveCaloriesBurned() { it in
                switch it {
                case Result.success(let calories):
                    resultInt64Success(flutterResult: result, calories)
                case Result.failure(let error):
                    let errorString = "\(error)"
                    
                    if errorString == "sumQuantityNull" {
                        resultInt64Success(flutterResult: result, 0)
                    } else {
                        resultInt64Error(flutterResult: result, error)
                    }
                }
            }
            break
        case "isContinuousUploadEnabled":
            let enabled = RookConnectConfigurationManager.shared.isSyncEnable()
            
            resultBoolSuccess(flutterResult: result, enabled)
            break
        case "enableContinuousUpload":
            let bytes = call.getDataArgAt(0)
            
            runWithValue(
                flutterResult: result,
                builder: { try RookConfigurationProto(serializedData: bytes.data) },
                block: { it in
                    RookConnectConfigurationManager.shared.setConfiguration(
                        clientUUID: it.clientUuid,
                        secretKey: it.secretKey
                    )
                    
                    RookConnectConfigurationManager.shared.setEnvironment(it.environment.toDomain())
                    
                    RookConnectConfigurationManager.shared.initRook { it in
                        switch it {
                        case Result.success(let bool):
                            RookConnectConfigurationManager.shared.enableSync()
                            
                            resultBoolSuccess(flutterResult: result, true)
                        case Result.failure(let error):
                            resultBoolError(flutterResult: result, error)
                        }
                    }
                }
            )
            break
        case "disableContinuousUpload":
            RookConnectConfigurationManager.shared.disableSync()
            
            resultBoolSuccess(flutterResult: result, true)
            break
        case "enableBackGround":
            let bytes = call.getDataArgAt(0)
            
            runWithValue(
                flutterResult: result,
                builder: { try RookConfigurationProto(serializedData: bytes.data) },
                block: { it in
                    RookConnectConfigurationManager.shared.setConfiguration(
                        clientUUID: it.clientUuid,
                        secretKey: it.secretKey
                    )
                    
                    RookConnectConfigurationManager.shared.setEnvironment(it.environment.toDomain())
                    
                    RookConnectConfigurationManager.shared.initRook { it in
                        switch it {
                        case Result.success(let bool):
                            RookBackGroundSync.shared.enableBackGroundForSummaries()
                            RookBackGroundSync.shared.enableBackGroundForEvents()
                            
                            resultBoolSuccess(flutterResult: result, true)
                        case Result.failure(let error):
                            resultBoolError(flutterResult: result, error)
                        }
                    }
                }
            )
            break
        case "disableBackGround":
            RookBackGroundSync.shared.disableBackGroundForSummaries()
            RookBackGroundSync.shared.disableBackGroundForEvents()
            
            resultBoolSuccess(flutterResult: result, true)
            break
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}
