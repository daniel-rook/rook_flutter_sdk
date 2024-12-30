import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_authorized_data_sources_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_boolean_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_data_sources_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_int64_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_request_permissions_status_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_sync_status_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_sync_status_with_int_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/android_permissions_summary_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/availability_status_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/data_source_type_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/health_connect_permissions_summary_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/health_data_type_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/rook_configuration_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
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
    final Uint8List bytes = await methodChannel.invokeMethod('clearUserID');
    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
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
  @Deprecated("Will be deleted in next VERSION release")
  Future<HCAvailabilityStatus> checkAvailability() async {
    final int code = await methodChannel.invokeMethod('checkAvailability');
    final proto = AvailabilityStatusProto.valueOf(code) ??
        AvailabilityStatusProto.NOT_SUPPORTED;

    return proto.toDomain();
  }

  @override
  Future<HCAvailabilityStatus> checkHealthConnectAvailability() async {
    final int code = await methodChannel.invokeMethod(
      'checkHealthConnectAvailability',
    );
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
  Future<bool> checkHealthConnectPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'checkHealthConnectPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> checkHealthConnectPermissionsPartially() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'checkHealthConnectPermissionsPartially',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<RequestPermissionsStatus> requestHealthConnectPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestHealthConnectPermissions',
    );

    final result = ResultRequestPermissionsStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> revokeHealthConnectPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'revokeHealthConnectPermissions',
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Stream<HealthConnectPermissionsSummary>
      get requestHealthConnectPermissionsUpdates {
    return healthConnectPermissionsEventChannel.receiveBroadcastStream().map(
      (bytes) {
        return HealthConnectPermissionsSummaryProto.fromBuffer(bytes)
            .toDomain();
      },
    );
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

    final result = ResultRequestPermissionsStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Stream<AndroidPermissionsSummary> get requestAndroidPermissionsUpdates {
    return androidPermissionsEventChannel.receiveBroadcastStream().map(
      (bytes) {
        return AndroidPermissionsSummaryProto.fromBuffer(bytes).toDomain();
      },
    );
  }

  @override
  @Deprecated("Will be deleted in next VERSION release")
  Future<bool> checkPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'checkPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  @Deprecated("Will be deleted in next VERSION release")
  Future<void> requestPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  @Deprecated("Will be deleted in next VERSION release")
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
  Future<SyncStatusWithData<int?>> syncTodayHealthConnectStepsCount() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncTodayHealthConnectStepsCount',
    );
    final result = ResultSyncStatusWithIntProto.fromBuffer(bytes);

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
  Future<bool> isStepsAvailable() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'isStepsAvailable',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> isBackgroundAndroidStepsActive() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'isBackgroundAndroidStepsActive',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  @Deprecated("Will be deleted in next VERSION release")
  Future<bool> hasStepsPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'hasStepsPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  @Deprecated("Will be deleted in next VERSION release")
  Future<void> requestStepsPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestStepsPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> enableBackgroundAndroidSteps() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'enableBackgroundAndroidSteps',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> disableBackgroundAndroidSteps() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'disableBackgroundAndroidSteps',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<int> syncTodayAndroidStepsCount() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncTodayAndroidStepsCount',
    );

    final result = ResultInt64Proto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  @Deprecated("Will be deleted in next VERSION release")
  Future<bool> hasYesterdaySyncAndroidPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'hasYesterdaySyncAndroidPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  @Deprecated("Will be deleted in next VERSION release")
  Future<void> requestYesterdaySyncAndroidPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestYesterdaySyncAndroidPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  @Deprecated("Will be deleted in next VERSION release")
  Future<bool> hasYesterdaySyncHealthConnectPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'hasYesterdaySyncHealthConnectPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  @Deprecated("Will be deleted in next VERSION release")
  Future<void> requestYesterdaySyncHealthConnectPermissions() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestYesterdaySyncHealthConnectPermissions',
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> scheduleYesterdaySync(bool enableNativeLogs) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'scheduleYesterdaySync',
      [
        enableNativeLogs,
      ],
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<List<DataSource>> getAvailableDataSources(String? redirectUrl) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getAvailableDataSources',
      [
        redirectUrl,
      ],
    );

    final result = ResultDataSourcesProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<AuthorizedDataSources> getAuthorizedDataSources() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getAuthorizedDataSources',
    );

    final result = ResultAuthorizedDataSourcesProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> revokeDataSource(DataSourceType dataSourceType) async {
    final proto = dataSourceType.toProto();

    final Uint8List bytes = await methodChannel.invokeMethod(
      'revokeDataSource',
      [
        proto.value,
      ],
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> presentDataSourceView(String? redirectUrl) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'presentDataSourceView',
      [
        redirectUrl,
      ],
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }
}
