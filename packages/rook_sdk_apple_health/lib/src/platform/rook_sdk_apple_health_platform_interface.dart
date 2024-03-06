import 'package:plugin_platform_interface/plugin_platform_interface.dart';
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

  Future<void> setConfiguration(RookConfiguration rookConfiguration);

  Future<String?> getUserID();

  Future<void> initRook();

  Future<void> updateUserID(String userID);

  Future<void> clearUserID();

  Future<void> deleteUserFromRook();

  Future<void> syncUserTimeZone();

  Future<void> requestAllPermissions();

  Future<void> requestSleepPermissions();

  Future<void> requestPhysicalPermissions();

  Future<void> requestBodyPermissions();

  Future<void> syncSleepSummary(DateTime date);

  Future<void> syncPhysicalSummary(DateTime date);

  Future<void> syncBodySummary(DateTime date);

  Future<void> syncPendingSummaries();

  Future<void> syncYesterdaySummaries();

  Future<void> syncPhysicalEvents(DateTime date);

  Future<void> syncBloodGlucoseEvents(DateTime date);

  Future<void> syncBloodPressureEvents(DateTime date);

  Future<void> syncBodyMetricsEvents(DateTime date);

  Future<void> syncBodyHeartRateEvents(DateTime date);

  Future<void> syncPhysicalHeartRateEvents(DateTime date);

  Future<void> syncBodyOxygenationEvents(DateTime date);

  Future<void> syncPhysicalOxygenationEvents(DateTime date);

  Future<void> syncTemperatureEvents(DateTime date);

  Future<void> syncPendingEvents();

  Future<void> syncYesterdayEvents();

  Future<bool> isStepsTrackerActive();

  Future<void> startStepsTracker();

  Future<void> stopStepsTracker();

  Future<int> getTodaySteps();

  Future<bool> isCaloriesTrackerActive();

  Future<void> startCaloriesTracker();

  Future<void> stopCaloriesTracker();

  Future<int> getTodayCalories();

  Future<bool> isYesterdaySyncEnabled();

  Future<void> enableYesterdaySync(RookConfiguration rookConfiguration);

  Future<void> disableYesterdaySync();

  Future<void> enableBackGroundForSummaries(
    RookConfiguration rookConfiguration,
  );

  Future<void> disableBackGroundForSummaries();
}
