import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_event_sync_type.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_summary_sync_type.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/apple_health_permission.dart';
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

  Future<DiagnosticState> getDiagnosticState();

  Future<void> enableNativeLogs();

  Future<void> setConfiguration(RookConfiguration rookConfiguration);

  Future<String?> getUserID();

  Future<void> initRook();

  Future<void> updateUserID(String userID);

  Future<void> deleteUserFromRook();

  Future<void> syncUserTimeZone();

  Future<void> requestPermissions(List<AppleHealthPermission> permissions);

  Future<void> syncHistoricSummaries(bool enableLogs);

  Future<void> syncSummariesByDate(DateTime date);

  Future<void> syncByDateAndSummary(DateTime date, AHSummarySyncType summary);

  Future<void> syncByDateAndEvent(DateTime date, AHEventSyncType event);

  Future<List<SleepSummary>> getSleepSummary(DateTime date);

  Future<PhysicalSummary> getPhysicalSummary(DateTime date);

  Future<BodySummary> getBodySummary(DateTime date);

  Future<List<ActivityEvent>> getActivityEvents(DateTime date);

  Future<int> getTodayStepsCount();

  Future<DailyCalories> getTodayCaloriesCount();

  Future<HeartRate> getTodayHeartRate();

  Future<bool> isContinuousUploadEnabled();

  Future<void> enableContinuousUpload(bool enableNativeLogs);

  Future<void> disableContinuousUpload();

  Future<bool> isScheduled();

  Future<void> schedule(bool enableNativeLogs);

  Future<void> cancel();

  Stream<Exception> get backgroundErrorsUpdates;
}
