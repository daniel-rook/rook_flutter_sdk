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

  @Deprecated("Will be deleted in next VERSION release")
  Future<HCAvailabilityStatus> checkAvailability();

  Future<HCAvailabilityStatus> checkHealthConnectAvailability();

  Future<void> openHealthConnectSettings();

  Future<bool> checkHealthConnectPermissions();

  Future<bool> checkHealthConnectPermissionsPartially();

  Future<RequestPermissionsStatus> requestHealthConnectPermissions();

  Future<void> revokeHealthConnectPermissions();

  Stream<HealthConnectPermissionsSummary>
      get requestHealthConnectPermissionsUpdates;

  Future<bool> checkAndroidPermissions();

  Future<bool> shouldRequestAndroidPermissions();

  Future<RequestPermissionsStatus> requestAndroidPermissions();

  Stream<AndroidPermissionsSummary> get requestAndroidPermissionsUpdates;

  @Deprecated("Will be deleted in next VERSION release")
  Future<bool> checkPermissions();

  @Deprecated("Will be deleted in next VERSION release")
  Future<void> requestPermissions();

  @Deprecated("Will be deleted in next VERSION release")
  Future<bool> shouldSyncFor(HCHealthDataType hcHealthDataType, DateTime date);

  Future<SyncStatus> syncSleepSummary(DateTime date);

  Future<SyncStatus> syncPhysicalSummary(DateTime date);

  Future<SyncStatus> syncBodySummary(DateTime date);

  Future<void> syncPendingSummaries();

  Future<SyncStatus> syncPhysicalEvents(DateTime date);

  Future<SyncStatus> syncBloodGlucoseEvents(DateTime date);

  Future<SyncStatus> syncBloodPressureEvents(DateTime date);

  Future<SyncStatus> syncBodyMetricsEvents(DateTime date);

  Future<SyncStatus> syncBodyHeartRateEvents(DateTime date);

  Future<SyncStatus> syncPhysicalHeartRateEvents(DateTime date);

  Future<SyncStatus> syncHydrationEvents(DateTime date);

  Future<SyncStatus> syncNutritionEvents(DateTime date);

  Future<SyncStatus> syncBodyOxygenationEvents(DateTime date);

  Future<SyncStatus> syncPhysicalOxygenationEvents(DateTime date);

  Future<SyncStatus> syncTemperatureEvents(DateTime date);

  Future<SyncStatusWithData<int>> syncTodayHealthConnectStepsCount();

  Future<SyncStatusWithData<DailyCalories>> getTodayCaloriesCount();

  Future<void> syncPendingEvents();

  Future<bool> isStepsAvailable();

  Future<bool> isBackgroundAndroidStepsActive();

  @Deprecated("Will be deleted in next VERSION release")
  Future<bool> hasStepsPermissions();

  @Deprecated("Will be deleted in next VERSION release")
  Future<void> requestStepsPermissions();

  Future<void> enableBackgroundAndroidSteps();

  Future<void> disableBackgroundAndroidSteps();

  Future<int> syncTodayAndroidStepsCount();

  @Deprecated("Will be deleted in next VERSION release")
  Future<bool> hasYesterdaySyncAndroidPermissions();

  @Deprecated("Will be deleted in next VERSION release")
  Future<void> requestYesterdaySyncAndroidPermissions();

  @Deprecated("Will be deleted in next VERSION release")
  Future<bool> hasYesterdaySyncHealthConnectPermissions();

  @Deprecated("Will be deleted in next VERSION release")
  Future<void> requestYesterdaySyncHealthConnectPermissions();

  Future<void> scheduleYesterdaySync(bool enableNativeLogs);

  Future<List<DataSource>> getAvailableDataSources(String? redirectUrl);

  Future<AuthorizedDataSources> getAuthorizedDataSources();

  Future<void> revokeDataSource(DataSourceType dataSourceType);

  Future<void> presentDataSourceView(
    String? redirectUrl,
  );
}
