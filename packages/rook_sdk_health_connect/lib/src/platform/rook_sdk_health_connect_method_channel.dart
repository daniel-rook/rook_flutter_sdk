import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_authorized_data_sources_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_boolean_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_data_source_authorizer_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_data_sources_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_int64_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_sync_status_with_daily_calories_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_sync_status_with_int_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/android_permissions_summary_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/configuration_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/event_sync_type_mapper.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/health_connect_availability_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/health_connect_permissions_summary_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/summary_sync_type_mapper.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/data/result/authorized_data_source_v2_result.dart';
import 'package:rook_sdk_health_connect/src/data/result/background_read_status_result.dart';
import 'package:rook_sdk_health_connect/src/data/result/request_permissions_status_result.dart';
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
  Future<void> enableNativeLogs() async {
    await methodChannel.invokeMethod('enableNativeLogs');
  }

  @override
  Future<void> setConfiguration(RookConfiguration rookConfiguration) async {
    final proto = rookConfiguration.toProto();

    await methodChannel.invokeMethod(
      'setConfiguration',
      [
        proto.writeToBuffer(),
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
  Future<HCAvailabilityStatus> checkHealthConnectAvailability() async {
    final int code = await methodChannel.invokeMethod(
      'checkHealthConnectAvailability',
    );
    final proto = HealthConnectAvailabilityProto.valueOf(code) ??
        HealthConnectAvailabilityProto.NOT_SUPPORTED;

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

    final result = RequestPermissionsStatusResultProto.fromBuffer(bytes);

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
  Future<bool> syncHistoricSummaries(bool enableLogs) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncHistoricSummaries',
      [
        enableLogs,
      ],
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> syncSummariesByDate(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncSummariesByDate',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> syncByDateAndSummary(
    DateTime date,
    HCSummarySyncType summary,
  ) async {
    final proto = summary.toProto();
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncByDateAndSummary',
      [
        date.millisecondsSinceEpoch,
        proto.value,
      ],
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> syncByDateAndEvent(DateTime date, HCEventSyncType event) async {
    final proto = event.toProto();
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncByDateAndEvent',
      [
        date.millisecondsSinceEpoch,
        proto.value,
      ],
    );
    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatusWithData<int>> getTodayStepsCount() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getTodayStepsCount',
    );
    final result = ResultSyncStatusWithIntProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<SyncStatusWithData<DailyCalories>> getTodayCaloriesCount() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getTodayCaloriesCount',
    );

    final result = ResultSyncStatusWithDailyCaloriesProto.fromBuffer(bytes);

    return result.unwrap();
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
  @Deprecated("Use getDataSourceAuthorizer instead")
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
  Future<DataSourceAuthorizer> getDataSourceAuthorizer(
    String dataSource,
    String? redirectUrl,
  ) async {
    final Uint8List bytes =
        await methodChannel.invokeMethod('getDataSourceAuthorizer', [
      dataSource,
      redirectUrl,
    ]);

    final result = ResultDataSourceAuthorizerProto.fromBuffer(bytes);

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
  Future<List<AuthorizedDataSourceV2>> getAuthorizedDataSourcesV2() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getAuthorizedDataSourcesV2',
    );

    final result = AuthorizedDataSourceV2ResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> revokeDataSource(String dataSource) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'revokeDataSource',
      [
        dataSource,
      ],
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  @Deprecated("Use getDataSourceAuthorizer instead")
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

  @override
  Future<bool> isScheduled() async {
    final Uint8List bytes = await methodChannel.invokeMethod('isScheduled');

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Stream<bool> get isScheduledUpdates {
    return isScheduledEventChannel.receiveBroadcastStream().map(
      (bytes) {
        return bytes as bool;
      },
    );
  }

  @override
  Future<void> schedule(bool enableNativeLogs, bool cancelAndReschedule) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'schedule',
      [
        enableNativeLogs,
        cancelAndReschedule,
      ],
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> cancel() async {
    final Uint8List bytes = await methodChannel.invokeMethod('cancel');

    final result = ResultBooleanProto.fromBuffer(bytes);

    result.unwrap();
  }
}
