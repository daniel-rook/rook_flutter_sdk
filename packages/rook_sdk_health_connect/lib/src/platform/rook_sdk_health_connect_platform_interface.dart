import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_availability_status.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_health_data_type.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_health_permission.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_sync_status.dart';
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

  Future<HCAvailabilityStatus> checkAvailability();

  Future<void> openHealthConnectSettings();

  Future<bool> checkPermissions(HCHealthPermission hcHealthPermission);

  Future<void> requestPermissions(HCHealthPermission hcHealthPermission);

  Future<bool> shouldSyncFor(HCHealthDataType hcHealthDataType, DateTime date);

  Future<SyncStatus> syncSleepSummary(DateTime date);

  Future<SyncStatus> syncPhysicalSummary(DateTime date);

  Future<SyncStatus> syncBodySummary(DateTime date);

  Future<void> syncPendingSummaries();

  @Deprecated("Same functionality is available with other sync functions of HCRookSummaryManager")
  Future<void> syncYesterdaySummaries();

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

  Future<void> syncPendingEvents();

  @Deprecated("Same functionality is available with other sync functions of HCRookEventManager")
  Future<void> syncYesterdayEvents();

  Future<bool> isStepsTrackerAvailable();

  Future<bool> isStepsTrackerActive();

  Future<bool> hasStepsTrackerPermissions();

  Future<void> requestStepsTrackerPermissions();

  Future<void> startStepsTracker();

  Future<void> stopStepsTracker();

  Future<int> getTodaySteps();

  Future<bool> hasYesterdaySyncAndroidPermissions();

  Future<void> requestYesterdaySyncAndroidPermissions();

  Future<bool> hasYesterdaySyncHealthConnectPermissions();

  Future<void> requestYesterdaySyncHealthConnectPermissions();
}
