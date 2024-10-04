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

  Future<void> enableNativeLogs();

  Future<void> setConfiguration(RookConfiguration rookConfiguration);

  Future<String?> getUserID();

  Future<void> initRook();

  Future<void> updateUserID(String userID);

  Future<void> clearUserID();

  Future<void> deleteUserFromRook();

  Future<void> syncUserTimeZone();

  Future<void> requestPermissions();

  Future<void> syncSleepSummary(DateTime date);

  Future<void> syncPhysicalSummary(DateTime date);

  Future<void> syncBodySummary(DateTime date);

  Future<void> syncPendingSummaries();

  Future<void> syncPhysicalEvents(DateTime date);

  Future<void> syncBloodGlucoseEvents(DateTime date);

  Future<void> syncBloodPressureEvents(DateTime date);

  Future<void> syncBodyMetricsEvents(DateTime date);

  Future<void> syncBodyHeartRateEvents(DateTime date);

  Future<void> syncPhysicalHeartRateEvents(DateTime date);

  Future<void> syncBodyOxygenationEvents(DateTime date);

  Future<void> syncPhysicalOxygenationEvents(DateTime date);

  Future<void> syncTemperatureEvents(DateTime date);

  Future<int?> syncTodayAppleHealthStepsCount();

  Future<void> syncPendingEvents();

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

  Future<List<DataSource>> getAvailableDataSources(String? redirectUrl);

  Future<void> revokeDataSource(DataSourceType dataSourceType);

  Future<void> presentDataSourceView(String? redirectUrl);

  Stream<Exception> get backgroundErrorsUpdates;
}
