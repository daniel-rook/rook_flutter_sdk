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

  Future<DiagnosticState> getDiagnosticState();

  Future<void> enableNativeLogs();

  Future<void> setConfiguration(RookConfiguration rookConfiguration);

  Future<String?> getUserID();

  Future<void> initRook();

  Future<void> updateUserID(String userID);

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

  Future<void> syncHistoricSummaries(bool enableLogs);

  Future<void> syncSummariesByDate(DateTime date);

  Future<void> syncByDateAndSummary(DateTime date, HCSummarySyncType summary);

  Future<void> syncByDateAndEvent(DateTime date, HCEventSyncType event);

  Future<List<SleepSummary>> getSleepSummary(DateTime date);

  Future<PhysicalSummary> getPhysicalSummary(DateTime date);

  Future<BodySummary> getBodySummary(DateTime date);

  Future<List<ActivityEvent>> getActivityEvents(DateTime date);

  Future<int> getTodayStepsCount();

  Future<DailyCalories> getTodayCaloriesCount();

  Future<HeartRate> getTodayHeartRate();

  @Deprecated(
    'Use isStepsCounterAvailable instead. This method relies on '
    'TYPE_STEP_DETECTOR and will be removed in a future version.',
  )
  Future<bool> isStepsAvailable();

  @Deprecated(
    'Use isStepsCounterActive instead. This method relies on '
    'TYPE_STEP_DETECTOR and will be removed in a future version.',
  )
  Future<bool> isBackgroundAndroidStepsActive();

  @Deprecated(
    'Use enableStepsCounter instead. This method relies on '
    'TYPE_STEP_DETECTOR and will be removed in a future version.',
  )
  Future<void> enableBackgroundAndroidSteps();

  @Deprecated(
    'Use disableStepsCounter instead. This method relies on '
    'TYPE_STEP_DETECTOR and will be removed in a future version.',
  )
  Future<void> disableBackgroundAndroidSteps();

  @Deprecated(
    'Use getTodayStepsCounterCount instead. This method relies on '
    'TYPE_STEP_DETECTOR and will be removed in a future version.',
  )
  Future<int> syncTodayAndroidStepsCount();

  Future<bool> isStepsCounterAvailable();

  Future<bool> isStepsCounterActive();

  Future<void> enableStepsCounter();

  Future<void> disableStepsCounter();

  Future<int> getTodayStepsCounterCount();

  Future<bool> isScheduled();

  Stream<bool> get isScheduledUpdates;

  Future<void> schedule(bool enableNativeLogs, bool cancelAndReschedule);

  Future<void> cancel();
}
