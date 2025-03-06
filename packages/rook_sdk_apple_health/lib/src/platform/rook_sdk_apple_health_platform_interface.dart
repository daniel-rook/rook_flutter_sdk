import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_event_sync_type.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_summary_sync_type.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_method_channel.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

abstract class RookSdkAppleHealthPlatform extends PlatformInterface {
  RookSdkAppleHealthPlatform() : super(token: _token);

  static final Object _token = Object();

  static RookSdkAppleHealthPlatform _instance =
      MethodChannelRookSdkAppleHealth();

  static RookSdkAppleHealthPlatform get instance => _instance;

  static set instance(RookSdkAppleHealthPlatform instance) {
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

  Future<void> requestPermissions();

  @Deprecated("Use AHRookSyncManager.sync() instead")
  Future<void> syncSleepSummary(DateTime date);

  @Deprecated("Use AHRookSyncManager.sync() instead")
  Future<void> syncPhysicalSummary(DateTime date);

  @Deprecated("Use AHRookSyncManager.sync() instead")
  Future<void> syncBodySummary(DateTime date);

  @Deprecated("Use AHRookSyncManager.sync() instead")
  Future<void> syncPendingSummaries();

  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  Future<void> syncPhysicalEvents(DateTime date);

  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  Future<void> syncBloodGlucoseEvents(DateTime date);

  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  Future<void> syncBloodPressureEvents(DateTime date);

  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  Future<void> syncBodyMetricsEvents(DateTime date);

  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  Future<void> syncBodyHeartRateEvents(DateTime date);

  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  Future<void> syncPhysicalHeartRateEvents(DateTime date);

  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  Future<void> syncBodyOxygenationEvents(DateTime date);

  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  Future<void> syncPhysicalOxygenationEvents(DateTime date);

  @Deprecated("Use AHRookSyncManager.syncEvents() instead")
  Future<void> syncTemperatureEvents(DateTime date);

  @Deprecated("Use AHRookSyncManager.getTodayStepsCount() instead")
  Future<int?> syncTodayAppleHealthStepsCount();

  @Deprecated("Use HCRookSyncManager.syncEvents() instead")
  Future<void> syncPendingEvents();

  Future<bool> syncHistoricSummaries(bool enableLogs);

  Future<bool> syncSummariesByDate(DateTime date);

  Future<bool> syncByDateAndSummary(DateTime date, AHSummarySyncType summary);

  Future<bool> syncByDateAndEvent(DateTime date, AHEventSyncType event);

  Future<int?> getTodayStepsCount();

  Future<DailyCalories?> getTodayCaloriesCount();

  Future<bool> isContinuousUploadEnabled();

  Future<void> enableContinuousUpload(
    bool enableNativeLogs,
    String clientUUID,
    String secretKey,
    RookEnvironment environment,
  );

  Future<void> disableContinuousUpload();

  Future<void> enableBackground(
    bool enableNativeLogs,
    String clientUUID,
    String secretKey,
    RookEnvironment environment,
  );

  Future<void> disableBackground();

  Stream<Exception> get backgroundErrorsUpdates;

  Future<List<DataSource>> getAvailableDataSources(String? redirectUrl);

  Future<AuthorizedDataSources> getAuthorizedDataSources();

  Future<void> revokeDataSource(DataSourceType dataSourceType);

  Future<void> presentDataSourceView(String? redirectUrl);
}
