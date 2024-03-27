import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_boolean_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_int64_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_sync_status_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/availability_status_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/health_data_type_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/health_permission_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/rook_configuration_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_availability_status.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_health_data_type.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_health_permission.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_sync_status.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

class MethodChannelRookSdkHealthConnect extends RookSdkHealthConnectPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('rook_sdk_health_connect');

  @override
  Future<void> enableNativeLogs() async {
    await methodChannel.invokeMethod('enableNativeLogs');
  }

  @override
  Future<void> setConfiguration(RookConfiguration rookConfiguration) async {
    final rookConfigurationProto = rookConfiguration.toProto();

    await methodChannel.invokeMethod(
      'setConfiguration',
      [
        rookConfigurationProto.writeToBuffer(),
      ],
    );
  }

  @override
  Future<String?> getUserID() {
    return methodChannel.invokeMethod('getUserID');
  }

  @override
  Future<void> initRook() async {
    final Uint8List bytes = await methodChannel.invokeMethod('initRook');
    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> updateUserID(String userID) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'updateUserID',
      [
        userID,
      ],
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> clearUserID() async {
    await methodChannel.invokeMethod('clearUserID');
  }

  @override
  Future<void> deleteUserFromRook() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'deleteUserFromRook',
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> syncUserTimeZone() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncUserTimeZone',
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<HCAvailabilityStatus> checkAvailability() async {
    final int code = await methodChannel.invokeMethod('checkAvailability');
    final proto = AvailabilityStatusProto.valueOf(code) ??
        AvailabilityStatusProto.NOT_SUPPORTED;

    return proto.toDomain();
  }

  @override
  Future<void> openHealthConnectSettings() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'openHealthConnectSettings',
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<bool> checkPermissions(HCHealthPermission hcHealthPermission) async {
    final proto = hcHealthPermission.toProto();

    final Uint8List bytes = await methodChannel.invokeMethod(
      'checkPermissions',
      [proto.value],
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> requestPermissions(HCHealthPermission hcHealthPermission) async {
    final proto = hcHealthPermission.toProto();

    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestPermissions',
      [proto.value],
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<bool> shouldSyncFor(
      HCHealthDataType hcHealthDataType, DateTime date) async {
    final proto = hcHealthDataType.toProto();

    final Uint8List bytes = await methodChannel.invokeMethod(
      'shouldSyncFor',
      [
        proto.value,
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncSleepSummary(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncSleepSummary',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncBodySummary(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncBodySummary',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncPhysicalSummary(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncPhysicalSummary',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> syncPendingSummaries() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncPendingSummaries',
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  @Deprecated("Same functionality is available with other sync functions of HCRookSummaryManager")
  Future<void> syncYesterdaySummaries() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncYesterdaySummaries',
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<SyncStatus> syncPhysicalEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncPhysicalEvents',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncBloodGlucoseEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncBloodGlucoseEvents',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncBloodPressureEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncBloodPressureEvents',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncBodyMetricsEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncBodyMetricsEvents',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncBodyHeartRateEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncBodyHeartRateEvents',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncPhysicalHeartRateEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncPhysicalHeartRateEvents',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncHydrationEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncHydrationEvents',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncNutritionEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncNutritionEvents',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncBodyOxygenationEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncBodyOxygenationEvents',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncPhysicalOxygenationEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncPhysicalOxygenationEvents',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatus> syncTemperatureEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncTemperatureEvents',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultSyncStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> syncPendingEvents() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncPendingEvents',
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  @Deprecated("Same functionality is available with other sync functions of HCRookEventManager")
  Future<void> syncYesterdayEvents() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncYesterdayEvents',
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<bool> isStepsTrackerAvailable() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'isStepsTrackerAvailable',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> isStepsTrackerActive() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'isStepsTrackerActive',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> hasStepsTrackerPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'hasStepsTrackerPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> requestStepsTrackerPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestStepsTrackerPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> startStepsTracker() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'startStepsTracker',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> stopStepsTracker() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'stopStepsTracker',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<int> getTodaySteps() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getTodaySteps',
    );

    final result = ResultInt64Proto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> hasYesterdaySyncAndroidPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'hasYesterdaySyncAndroidPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> requestYesterdaySyncAndroidPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestYesterdaySyncAndroidPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<bool> hasYesterdaySyncHealthConnectPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'hasYesterdaySyncHealthConnectPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> requestYesterdaySyncHealthConnectPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestYesterdaySyncHealthConnectPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }
}
