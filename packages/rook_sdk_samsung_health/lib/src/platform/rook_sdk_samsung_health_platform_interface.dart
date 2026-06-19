import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/samsung_health_availability.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/samsung_health_permission.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/sh_event_sync_type.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/sh_summary_sync_type.dart';
import 'package:rook_sdk_samsung_health/src/domain/model/samsung_health_permissions_summary.dart';
import 'package:rook_sdk_samsung_health/src/platform/rook_sdk_samsung_health_method_channel.dart';

abstract class RookSdkSamsungHealthPlatform extends PlatformInterface {
  RookSdkSamsungHealthPlatform() : super(token: _token);

  static final Object _token = Object();

  static RookSdkSamsungHealthPlatform _instance =
      MethodChannelRookSdkSamsungHealth();

  static RookSdkSamsungHealthPlatform get instance => _instance;

  static set instance(RookSdkSamsungHealthPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<DiagnosticState> getDiagnosticState();

  Future<void> enableNativeLogs();

  Future<String?> getUserID();

  Future<void> initRook(RookConfiguration configuration);

  Future<void> updateUserID(String userID);

  Future<void> syncUserTimeZone();

  Future<void> deleteUserFromRook();

  Future<SamsungHealthAvailability> checkSamsungHealthAvailability();

  Future<bool> checkSamsungHealthPermissions(
    List<SamsungHealthPermission> permissions,
  );

  Future<bool> checkSamsungHealthPermissionsPartially(
    List<SamsungHealthPermission> permissions,
  );

  Future<RequestPermissionsStatus> requestSamsungHealthPermissions(
    List<SamsungHealthPermission> permissions,
  );

  Stream<SamsungHealthPermissionsSummary>
  get requestSamsungHealthPermissionsUpdates;

  Future<bool> checkExactAlarmPermissions();

  Future<RequestPermissionsStatus> requestExactAlarmPermissions();

  Future<bool> checkBatteryOptimizationsDisabled();

  Future<RequestPermissionsStatus> requestDisableBatteryOptimizations();

  Future<bool> requiresOemAutoStartSetup();

  Future<RequestPermissionsStatus> openOemAutoStartSetup();

  Future<void> syncHistoricSummaries(bool enableLogs);

  Future<void> syncSummariesByDate(DateTime date);

  Future<void> syncByDateAndSummary(DateTime date, SHSummarySyncType summary);

  Future<void> syncByDateAndEvent(DateTime date, SHEventSyncType event);

  Future<List<SleepSummary>> getSleepSummary(DateTime date);

  Future<PhysicalSummary> getPhysicalSummary(DateTime date);

  Future<BodySummary> getBodySummary(DateTime date);

  Future<List<ActivityEvent>> getActivityEvents(DateTime date);

  Future<int> getTodayStepsCount();

  Future<DailyCalories> getTodayCaloriesCount();

  Future<HeartRate> getTodayHeartRate();

  Future<bool> isScheduled();

  Stream<bool> get isScheduledUpdates;

  Future<void> schedule(bool enableNativeLogs, bool cancelAndReschedule);

  Future<void> cancel();
}
