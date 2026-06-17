import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/android_permissions_summary_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/configuration_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/event_sync_type_mapper.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/health_connect_availability_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/health_connect_permissions_summary_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/summary_sync_type_mapper.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/data/result/activity_event_result.dart';
import 'package:rook_sdk_health_connect/src/data/result/background_read_status_result.dart';
import 'package:rook_sdk_health_connect/src/data/result/body_summary_result.dart';
import 'package:rook_sdk_health_connect/src/data/result/boolean_result.dart';
import 'package:rook_sdk_health_connect/src/data/result/calories_result.dart';
import 'package:rook_sdk_health_connect/src/data/result/diagnostic_state_result.dart';
import 'package:rook_sdk_health_connect/src/data/result/heart_rate_result.dart';
import 'package:rook_sdk_health_connect/src/data/result/int64_result.dart';
import 'package:rook_sdk_health_connect/src/data/result/physical_summary_result.dart';
import 'package:rook_sdk_health_connect/src/data/result/request_permissions_status_result.dart';
import 'package:rook_sdk_health_connect/src/data/result/sleep_summary_result.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

class MethodChannelRookSdkHealthConnect extends RookSdkHealthConnectPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('rook_sdk_health_connect');

  @visibleForTesting
  final androidPermissionsEventChannel = const EventChannel(
    "io.tryrook.permissions.android",
  );

  @visibleForTesting
  final healthConnectPermissionsEventChannel = const EventChannel(
    "io.tryrook.permissions.healthconnect",
  );

  @visibleForTesting
  final isScheduledEventChannel = const EventChannel(
    "io.tryrook.background.healthconnect.scheduled",
  );

  @override
  Future<DiagnosticState> getDiagnosticState() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getDiagnosticState',
    );
    final result = DiagnosticStateResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> enableNativeLogs() async {
    await methodChannel.invokeMethod('enableNativeLogs');
  }

  @override
  Future<void> setConfiguration(RookConfiguration rookConfiguration) async {
    final proto = rookConfiguration.toProto();

    await methodChannel.invokeMethod('setConfiguration', [
      proto.writeToBuffer(),
    ]);
  }

  @override
  Future<String?> getUserID() {
    return methodChannel.invokeMethod('getUserID');
  }

  @override
  Future<void> initRook() async {
    final Uint8List bytes = await methodChannel.invokeMethod('initRook');
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> updateUserID(String userID) async {
    final Uint8List bytes = await methodChannel.invokeMethod('updateUserID', [
      userID,
    ]);
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> deleteUserFromRook() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'deleteUserFromRook',
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> syncUserTimeZone() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncUserTimeZone',
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<HCAvailabilityStatus> checkHealthConnectAvailability() async {
    final int code = await methodChannel.invokeMethod(
      'checkHealthConnectAvailability',
    );
    final proto =
        HealthConnectAvailabilityProto.valueOf(code) ??
        HealthConnectAvailabilityProto.NOT_SUPPORTED;

    return proto.toDomain();
  }

  @override
  Future<void> openHealthConnectSettings() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'openHealthConnectSettings',
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<bool> checkHealthConnectPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'checkHealthConnectPermissions',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> checkHealthConnectPermissionsPartially() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'checkHealthConnectPermissionsPartially',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<HCBackgroundReadStatus> checkBackgroundReadStatus() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'checkBackgroundReadStatus',
    );

    final result = BackgroundReadStatusResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<RequestPermissionsStatus> requestHealthConnectPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestHealthConnectPermissions',
    );

    final result = RequestPermissionsStatusResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> revokeHealthConnectPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'revokeHealthConnectPermissions',
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Stream<HealthConnectPermissionsSummary>
  get requestHealthConnectPermissionsUpdates {
    return healthConnectPermissionsEventChannel.receiveBroadcastStream().map((
      bytes,
    ) {
      return HealthConnectPermissionsSummaryProto.fromBuffer(bytes).toDomain();
    });
  }

  @override
  Future<bool> checkAndroidPermissions() async {
    final bool result = await methodChannel.invokeMethod(
      'checkAndroidPermissions',
    );

    return result;
  }

  @override
  Future<bool> shouldRequestAndroidPermissions() async {
    final bool result = await methodChannel.invokeMethod(
      'shouldRequestAndroidPermissions',
    );

    return result;
  }

  @override
  Future<RequestPermissionsStatus> requestAndroidPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestAndroidPermissions',
    );

    final result = RequestPermissionsStatusResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> checkExactAlarmPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'checkExactAlarmPermissions',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<RequestPermissionsStatus> requestExactAlarmPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestExactAlarmPermissions',
    );

    final result = RequestPermissionsStatusResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> checkBatteryOptimizationsDisabled() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'checkBatteryOptimizationsDisabled',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<RequestPermissionsStatus> requestDisableBatteryOptimizations() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestDisableBatteryOptimizations',
    );

    final result = RequestPermissionsStatusResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> requiresOemAutoStartSetup() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requiresOemAutoStartSetup',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<RequestPermissionsStatus> openOemAutoStartSetup() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'openOemAutoStartSetup',
    );

    final result = RequestPermissionsStatusResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Stream<AndroidPermissionsSummary> get requestAndroidPermissionsUpdates {
    return androidPermissionsEventChannel.receiveBroadcastStream().map((bytes) {
      return AndroidPermissionsSummaryProto.fromBuffer(bytes).toDomain();
    });
  }

  @override
  Future<void> syncHistoricSummaries(bool enableLogs) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncHistoricSummaries',
      [enableLogs],
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> syncSummariesByDate(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncSummariesByDate',
      [date.millisecondsSinceEpoch],
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> syncByDateAndSummary(
    DateTime date,
    HCSummarySyncType summary,
  ) async {
    final proto = summary.toProto();
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncByDateAndSummary',
      [date.millisecondsSinceEpoch, proto.value],
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> syncByDateAndEvent(DateTime date, HCEventSyncType event) async {
    final proto = event.toProto();
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncByDateAndEvent',
      [date.millisecondsSinceEpoch, proto.value],
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<List<SleepSummary>> getSleepSummary(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getSleepSummary',
      [date.millisecondsSinceEpoch],
    );
    final result = SleepSummaryResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<PhysicalSummary> getPhysicalSummary(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getPhysicalSummary',
      [date.millisecondsSinceEpoch],
    );
    final result = PhysicalSummaryResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<BodySummary> getBodySummary(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod('getBodySummary', [
      date.millisecondsSinceEpoch,
    ]);
    final result = BodySummaryResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<List<ActivityEvent>> getActivityEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getActivityEvents',
      [date.millisecondsSinceEpoch],
    );
    final result = ActivityEventResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<int> getTodayStepsCount() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getTodayStepsCount',
    );
    final result = Int64ResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<DailyCalories> getTodayCaloriesCount() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getTodayCaloriesCount',
    );

    final result = CaloriesResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<HeartRate> getTodayHeartRate() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getTodayHeartRate',
    );

    final result = HearRateResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  @Deprecated(
    'Use isStepsCounterAvailable instead. This method relies on '
    'TYPE_STEP_DETECTOR and will be removed in a future version.',
  )
  Future<bool> isStepsAvailable() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'isStepsAvailable',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  @Deprecated(
    'Use isStepsCounterActive instead. This method relies on '
    'TYPE_STEP_DETECTOR and will be removed in a future version.',
  )
  Future<bool> isBackgroundAndroidStepsActive() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'isBackgroundAndroidStepsActive',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  @Deprecated(
    'Use enableStepsCounter instead. This method relies on '
    'TYPE_STEP_DETECTOR and will be removed in a future version.',
  )
  Future<void> enableBackgroundAndroidSteps() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'enableBackgroundAndroidSteps',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  @Deprecated(
    'Use disableStepsCounter instead. This method relies on '
    'TYPE_STEP_DETECTOR and will be removed in a future version.',
  )
  Future<void> disableBackgroundAndroidSteps() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'disableBackgroundAndroidSteps',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  @Deprecated(
    'Use getTodayStepsCounterCount instead. This method relies on '
    'TYPE_STEP_DETECTOR and will be removed in a future version.',
  )
  Future<int> syncTodayAndroidStepsCount() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncTodayAndroidStepsCount',
    );

    final result = Int64ResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> isStepsCounterAvailable() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'isStepsCounterAvailable',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> isStepsCounterActive() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'isStepsCounterActive',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> enableStepsCounter() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'enableStepsCounter',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> disableStepsCounter() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'disableStepsCounter',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<int> getTodayStepsCounterCount() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getTodayStepsCounterCount',
    );

    final result = Int64ResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> isScheduled() async {
    final Uint8List bytes = await methodChannel.invokeMethod('isScheduled');

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Stream<bool> get isScheduledUpdates {
    return isScheduledEventChannel.receiveBroadcastStream().map((bytes) {
      return bytes as bool;
    });
  }

  @override
  Future<void> schedule(bool enableNativeLogs, bool cancelAndReschedule) async {
    final Uint8List bytes = await methodChannel.invokeMethod('schedule', [
      enableNativeLogs,
      cancelAndReschedule,
    ]);

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> cancel() async {
    final Uint8List bytes = await methodChannel.invokeMethod('cancel');

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }
}
