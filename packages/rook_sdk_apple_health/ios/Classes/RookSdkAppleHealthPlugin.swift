import Flutter
import RookSDK
import UIKit

public class RookSdkAppleHealthPlugin: NSObject, FlutterPlugin {
    private let rookConnectPermissionsManager = RookConnectPermissionsManager()
    private let rookSummaryManager = RookSummaryManager()
    private let rookEventsManager = RookEventsManager()
    private let dataSourcesManager = DataSourcesManager()
    private let userManager = UserManager()

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "rook_sdk_apple_health", binaryMessenger: registrar.messenger())
        let backgroundErrorsEventChannel = FlutterEventChannel(
            name: BackgroundErrorsObserver.EVENT_CHANNEL_NAME,
            binaryMessenger: registrar.messenger()
        )

        let instance = RookSdkAppleHealthPlugin()

        registrar.addMethodCallDelegate(instance, channel: channel)

        AnalyticsExtractionConfigurator.shared.setPlatform(.flutter)
        AnalyticsTransmissionConfigurator.shared.setPlatform(.flutter)
        RookBackGroundSync.shared.setBackListeners()

        backgroundErrorsEventChannel.setStreamHandler(BackgroundErrorsObserver())
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "enableNativeLogs":
            RookConnectConfigurationManager.shared.setConsoleLogAvailable(true)
            break
        case "setConfiguration":
            let bytes = call.getDataArgAt(0)

            runWithValue(
                flutterResult: result,
                builder: { try ConfigurationProto(serializedBytes: bytes.data) },
                block: { it in
                    RookConnectConfigurationManager.shared.setEnvironment(it.environment.toDomain())
                    RookConnectConfigurationManager.shared.setConfiguration(
                        clientUUID: it.clientUuid,
                        secretKey: it.secretKey,
                        enableBackgroundSync: it.enableBackgroundSync,
                        enableEventsBackgroundSync: it.enableBackgroundSync
                    )

                    boolSuccess(flutterResult: result, success: true)
                }
            )
            break
        case "getUserID":
            userManager.getUserId { it in
                switch it {
                case let Result.success(userID):
                    result(userID)
                case Result.failure:
                    result(nil)
                }
            }
            break
        case "initRook":
            RookConnectConfigurationManager.shared.initRook { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "updateUserID":
            let userID = call.getStringArgAt(0)

            userManager.updateUserId(userID) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "deleteUserFromRook":
            userManager.removeUserFromRook { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncUserTimeZone":
            userManager.syncUserTimeZone { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "requestPermissions":
            let args = call.arguments as? [Any]
            let permissionsProtoValues = (args?[0] as? [Int]) ?? []
            var permissions: [HealthDataType] = []

            for protoValue in permissionsProtoValues {
                if let permission = AppleHealthPermissionProto(rawValue: protoValue)?.toHealthDataType() {
                    permissions.append(permission)
                }
            }

            rookConnectPermissionsManager.requestPermissions(permissions) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncHistoricSummaries":
            let enableLogs = call.getBoolArgAt(0)

            RookConnectConfigurationManager.shared.setConsoleLogAvailable(enableLogs)

            rookSummaryManager.sync { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncSummariesByDate":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookSummaryManager.sync(date: date) { success, error in
                if let error = error {
                    boolError(flutterResult: result, error: error)
                } else {
                    boolSuccess(flutterResult: result, success: success)
                }
            }
            break
        case "syncByDateAndSummary":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            let summary = {
                let value = call.getIntArgAt(1)
                let proto = SummarySyncTypeProto(rawValue: value)!

                return [proto.toSyncType()]
            }()

            rookSummaryManager.sync(date: date, summaryType: summary) { success, error in
                if let error = error {
                    boolError(flutterResult: result, error: error)
                } else {
                    boolSuccess(flutterResult: result, success: success)
                }
            }
            break
        case "syncByDateAndEvent":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            let event = {
                let value = call.getIntArgAt(1)
                let proto = EventSyncTypeProto(rawValue: value)!

                return proto.toSyncType()
            }()

            rookEventsManager.syncEvents(date: date, eventType: event) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "getSleepSummary":
            Task(priority: .background) {
                do {
                    let millis = call.getInt64ArgAt(0)
                    let date = buildDateFromMillis(millis)

                    let sleepSummaries = try await rookSummaryManager.getSleepSummary(date: date)

                    sleepSummarySuccess(flutterResult: result, sleepSummary: sleepSummaries)
                } catch {
                    sleepSummaryError(flutterResult: result, error: error)
                }
            }
        case "getPhysicalSummary":
            Task(priority: .background) {
                do {
                    let millis = call.getInt64ArgAt(0)
                    let date = buildDateFromMillis(millis)
                    
                    let physicalSummary = try await rookSummaryManager.getPhysicalSummary(date: date)
                    
                    physicalSummarySuccess(flutterResult: result, physicalSummary: physicalSummary)
                } catch {
                    physicalSummaryError(flutterResult: result, error: error)
                }
            }
        case "getBodySummary":
            Task(priority: .background) {
                do {
                    let millis = call.getInt64ArgAt(0)
                    let date = buildDateFromMillis(millis)
                    
                    let bodySummary = try await rookSummaryManager.getBodySummary(date: date)
                    
                    bodySummarySuccess(flutterResult: result, bodySummary: bodySummary)
                } catch {
                    bodySummaryError(flutterResult: result, error: error)
                }
            }
        case "getActivityEvents":
            Task(priority: .background) {
                do {
                    let millis = call.getInt64ArgAt(0)
                    let date = buildDateFromMillis(millis)
                    
                    let activityEvents = try await rookEventsManager.getActivityEvents(date: date)
                    
                    activityEventSuccess(flutterResult: result, activityEvent: activityEvents)
                } catch {
                    activityEventError(flutterResult: result, error: error)
                }
            }
        case "getTodayStepsCount":
            rookEventsManager.getTodayStepCount { it in
                switch it {
                case let Result.success(steps):
                    int64Success(flutterResult: result, int: steps)
                case let Result.failure(error):
                    int64Error(flutterResult: result, error: error)
                }
            }
            break
        case "getTodayCaloriesCount":
            rookEventsManager.getTodayCalories { it in
                switch it {
                case let Result.success(calories):
                    dailyCaloriesSuccess(flutterResult: result, rookCalories: calories)
                case let Result.failure(error):
                    dailyCaloriesError(flutterResult: result, error: error)
                }
            }
            break
        case "isContinuousUploadEnabled":
            let enabled = RookConnectConfigurationManager.shared.isSyncEnable()

            boolSuccess(flutterResult: result, success: enabled)
            break
        case "enableContinuousUpload":
            let enableNativeLogs = call.getBoolArgAt(0)

            RookConnectConfigurationManager.shared.setConsoleLogAvailable(enableNativeLogs)
            
            RookConnectConfigurationManager.shared.enableSync()
            break
        case "disableContinuousUpload":
            RookConnectConfigurationManager.shared.disableSync()

            boolSuccess(flutterResult: result, success: true)
            break
        case "isScheduled":
            let summariesEnabled = RookBackGroundSync.shared.isBackGroundForSummariesEnable()
            let eventsEnabled = RookBackGroundSync.shared.isBackGroundForEventsEnable()

            boolSuccess(flutterResult: result, success: summariesEnabled && eventsEnabled)
            break
        case "schedule":
            let enableNativeLogs = call.getBoolArgAt(0)

            RookConnectConfigurationManager.shared.setConsoleLogAvailable(enableNativeLogs)
            
            RookBackGroundSync.shared.enableBackGroundForSummaries()
            RookBackGroundSync.shared.enableBackGroundForEvents()
            
            boolSuccess(flutterResult: result, success: true)
            break
        case "cancel":
            RookBackGroundSync.shared.disableBackGroundForSummaries()
            RookBackGroundSync.shared.disableBackGroundForEvents()

            boolSuccess(flutterResult: result, success: true)
            break
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}
