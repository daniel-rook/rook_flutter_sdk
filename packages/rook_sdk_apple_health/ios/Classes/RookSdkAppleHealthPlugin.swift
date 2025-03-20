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
                builder: { try RookConfigurationProto(serializedBytes: bytes.data) },
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
        case "clearUserID":
            userManager.clearUser { it in
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
            rookConnectPermissionsManager.requestAllPermissions { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncSleepSummary":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookSummaryManager.syncSleepSummary(from: date) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncBodySummary":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookSummaryManager.syncBodySummary(from: date) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncPhysicalSummary":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookSummaryManager.syncPhysicalSummary(from: date) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncPendingSummaries":
            rookSummaryManager.syncPendingSummaries { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncPhysicalEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookEventsManager.syncTrainingEvent(date: date) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break

        case "syncBloodGlucoseEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookEventsManager.syncBloodGlucoseEvents(date: date) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncBloodPressureEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookEventsManager.syncBloodPressureEvents(date: date) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncBodyMetricsEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookEventsManager.syncBodyMetricsEvents(date: date) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncBodyHeartRateEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookEventsManager.syncBodyHeartRateEvent(date: date) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncPhysicalHeartRateEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookEventsManager.syncPhysicalHeartRateEvent(date: date) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncBodyOxygenationEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookEventsManager.syncBodyOxygenationEvent(date: date) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncPhysicalOxygenationEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookEventsManager.syncPhysicalOxygenationEvent(date: date) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncTemperatureEvents":
            let millis = call.getInt64ArgAt(0)
            let date = buildDateFromMillis(millis)

            rookEventsManager.syncTemperatureEvents(date: date) { it in
                switch it {
                case let Result.success(success):
                    boolSuccess(flutterResult: result, success: success)
                case let Result.failure(error):
                    boolError(flutterResult: result, error: error)
                }
            }
            break
        case "syncTodayAppleHealthStepsCount":
            rookEventsManager.getTodayStepCount { it in
                switch it {
                case let Result.success(steps):
                    int64Success(flutterResult: result, int64: Int64(steps))
                case let Result.failure(error):
                    int64Error(flutterResult: result, error: error)
                }
            }
            break
        case "syncPendingEvents":
            rookEventsManager.syncPendingEvents { it in
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
        case "getTodayStepsCount":
            rookEventsManager.getTodayStepCount { it in
                switch it {
                case let Result.success(steps):
                    int64Success(flutterResult: result, int64: Int64(steps))
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
            let bytes = call.getDataArgAt(1)

            runWithValue(
                flutterResult: result,
                builder: { try RookConfigurationProto(serializedBytes: bytes.data) },
                block: { it in
                    RookConnectConfigurationManager.shared.setConsoleLogAvailable(enableNativeLogs)
                    RookConnectConfigurationManager.shared.setEnvironment(it.environment.toDomain())
                    RookConnectConfigurationManager.shared.setConfiguration(
                        clientUUID: it.clientUuid,
                        secretKey: it.secretKey,
                        enableBackgroundSync: true,
                        enableEventsBackgroundSync: true
                    )

                    RookConnectConfigurationManager.shared.initRook { it in
                        switch it {
                        case Result.success:
                            RookConnectConfigurationManager.shared.enableSync()

                            boolSuccess(flutterResult: result, success: true)
                        case let Result.failure(error):
                            boolError(flutterResult: result, error: error)
                        }
                    }
                }
            )
            break
        case "disableContinuousUpload":
            RookConnectConfigurationManager.shared.disableSync()

            boolSuccess(flutterResult: result, success: true)
            break
        case "enableBackground":
            let enableNativeLogs = call.getBoolArgAt(0)
            let bytes = call.getDataArgAt(1)

            runWithValue(
                flutterResult: result,
                builder: { try RookConfigurationProto(serializedBytes: bytes.data) },
                block: { it in
                    RookConnectConfigurationManager.shared.setConsoleLogAvailable(enableNativeLogs)
                    RookConnectConfigurationManager.shared.setEnvironment(it.environment.toDomain())
                    RookConnectConfigurationManager.shared.setConfiguration(
                        clientUUID: it.clientUuid,
                        secretKey: it.secretKey,
                        enableBackgroundSync: true,
                        enableEventsBackgroundSync: true
                    )

                    RookConnectConfigurationManager.shared.initRook { it in
                        switch it {
                        case Result.success:
                            RookBackGroundSync.shared.enableBackGroundForSummaries()
                            RookBackGroundSync.shared.enableBackGroundForEvents()

                            boolSuccess(flutterResult: result, success: true)
                        case let Result.failure(error):
                            boolError(flutterResult: result, error: error)
                        }
                    }
                }
            )
            break
        case "disableBackground":
            RookBackGroundSync.shared.disableBackGroundForSummaries()
            RookBackGroundSync.shared.disableBackGroundForEvents()

            boolSuccess(flutterResult: result, success: true)
            break
        case "getAvailableDataSources":
            let redirectUrl = call.getNullableStringArgAt(0)

            dataSourcesManager.getAvailableDataSources(redirectURL: redirectUrl) { it in
                switch it {
                case let Result.success(dataSources):
                    dataSourcesSuccess(flutterResult: result, dataSources: dataSources)
                case let Result.failure(error):
                    dataSourcesError(flutterResult: result, error: error)
                }
            }
            break
        case "getDataSourceAuthorizer":
            let dataSource = call.getStringArgAt(0)
            let redirectUrl = call.getNullableStringArgAt(1)

            dataSourcesManager.getDataSourceAuthorizer(dataSource: dataSource, redirectUrl: redirectUrl) { it in
                switch it {
                case let Result.success(dataSourceAuthorizer):
                    dataSourceAuthorizerSuccess(flutterResult: result, dataSourceAuthorizer: dataSourceAuthorizer)
                case let Result.failure(error):
                    dataSourceAuthorizerError(flutterResult: result, error: error)
                }
            }
            break
        case "getAuthorizedDataSources":
            Task(priority: .background) {
                do {
                    let statusDataSources: StatusDataSources = try await dataSourcesManager.getAuthorizedDataSources()

                    authorizedDataSourcesSuccess(flutterResult: result, statusDataSources: statusDataSources)
                } catch {
                    authorizedDataSourcesError(flutterResult: result, error: error)
                }
            }
            break
        case "revokeDataSource":
            let dataSource = call.getStringArgAt(0)

            userManager.revokeDataSource(dataSource: dataSource) { success, error in
                if let error = error {
                    boolError(flutterResult: result, error: error)
                } else {
                    boolSuccess(flutterResult: result, success: success)
                }
            }
            break
        case "presentDataSourceView":
            DispatchQueue.main.async {
                let redirectUrl = call.getNullableStringArgAt(0)

                self.dataSourcesManager.presentDataSourceView(redirectURL: redirectUrl) { it in
                    switch it {
                    case let Result.success(success):
                        boolSuccess(flutterResult: result, success: success)
                    case let Result.failure(error):
                        boolError(flutterResult: result, error: error)
                    }
                }
            }
            break
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}
