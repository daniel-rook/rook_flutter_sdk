import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

abstract class RookSdkHealthConnectPlatform extends PlatformInterface {
  RookSdkHealthConnectPlatform() : super(token: _token);

  static final Object _token = Object();

  static RookSdkHealthConnectPlatform _instance =
      MethodChannelRookSdkHealthConnect();

  static RookSdkHealthConnectPlatform get instance => _instance;

  static set instance(RookSdkHealthConnectPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> enableNativeLogs();

  Future<void> setConfiguration(RookConfiguration rookConfiguration);

  Future<String?> getUserID();

  Future<void> initRook();

  Future<void> updateUserID(String userID);

  Future<void> clearUserID();

  Future<void> deleteUserFromRook();

  Future<void> syncUserTimeZone();

  Future<HCAvailabilityStatus> checkHealthConnectAvailability();

  Future<void> openHealthConnectSettings();

  Future<bool> checkHealthConnectPermissions();

  Future<bool> checkHealthConnectPermissionsPartially();

  Future<HCBackgroundReadStatus> checkBackgroundReadStatus();

  Future<RequestPermissionsStatus> requestHealthConnectPermissions();

  Future<void> revokeHealthConnectPermissions();

  Stream<HealthConnectPermissionsSummary>
      get requestHealthConnectPermissionsUpdates;

  Future<bool> checkAndroidPermissions();

  Future<bool> shouldRequestAndroidPermissions();

  Future<RequestPermissionsStatus> requestAndroidPermissions();

  Stream<AndroidPermissionsSummary> get requestAndroidPermissionsUpdates;

  @Deprecated("Use HCRookSyncManager.sync() instead")
  Future<SyncStatus> syncSleepSummary(DateTime date);

  @Deprecated("Use HCRookSyncManager.sync() instead")
  Future<SyncStatus> syncPhysicalSummary(DateTime date);

  @Deprecated("Use HCRookSyncManager.sync() instead")
  Future<SyncStatus> syncBodySummary(DateTime date);

  @Deprecated("Use HCRookSyncManager.sync() instead")
  Future<void> syncPendingSummaries();

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<SyncStatus> syncPhysicalEvents(DateTime date);

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<SyncStatus> syncBloodGlucoseEvents(DateTime date);

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<SyncStatus> syncBloodPressureEvents(DateTime date);

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<SyncStatus> syncBodyMetricsEvents(DateTime date);

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<SyncStatus> syncBodyHeartRateEvents(DateTime date);

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<SyncStatus> syncPhysicalHeartRateEvents(DateTime date);

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<SyncStatus> syncHydrationEvents(DateTime date);

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<SyncStatus> syncNutritionEvents(DateTime date);

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<SyncStatus> syncBodyOxygenationEvents(DateTime date);

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<SyncStatus> syncPhysicalOxygenationEvents(DateTime date);

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<SyncStatus> syncTemperatureEvents(DateTime date);

  @Deprecated("Use HCRookSyncManager.getTodayStepsCount() instead")
  Future<SyncStatusWithData<int>> syncTodayHealthConnectStepsCount();

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<void> syncPendingEvents();

  Future<bool> syncHistoricSummaries(bool enableLogs);

  Future<bool> syncSummariesByDate(DateTime date);

  Future<bool> syncByDateAndSummary(DateTime date, HCSummarySyncType summary);

  Future<bool> syncByDateAndEvent(DateTime date, HCEventSyncType event);

  Future<SyncStatusWithData<int>> getTodayStepsCount();

  Future<SyncStatusWithData<DailyCalories>> getTodayCaloriesCount();

  Future<bool> isStepsAvailable();

  Future<bool> isBackgroundAndroidStepsActive();

  Future<void> enableBackgroundAndroidSteps();

  Future<void> disableBackgroundAndroidSteps();

  Future<int> syncTodayAndroidStepsCount();

  Future<void> scheduleYesterdaySync(bool enableNativeLogs);

  @Deprecated("Use getDataSourceAuthorizer instead")
  Future<List<DataSource>> getAvailableDataSources(String? redirectUrl);

  Future<DataSourceAuthorizer> getDataSourceAuthorizer(
    String dataSource,
    String? redirectUrl,
  );

  Future<AuthorizedDataSources> getAuthorizedDataSources();

  Future<void> revokeDataSource(String dataSource);

  @Deprecated("Use getDataSourceAuthorizer instead")
  Future<void> presentDataSourceView(String? redirectUrl);

  Future<bool> isScheduled();

  Stream<bool> get isScheduledUpdates;

  Future<void> schedule(bool enableNativeLogs);

  Future<void> cancel();
}
