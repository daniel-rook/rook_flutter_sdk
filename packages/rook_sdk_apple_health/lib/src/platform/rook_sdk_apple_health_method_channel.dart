import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:rook_sdk_apple_health/src/data/extension/result_data_sources_extensions.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/apple_health_permission_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/configuration_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/environment_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/event_sync_type_mapper.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/summary_sync_type_mapper.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/data/result/authorized_data_source_v2_result.dart';
import 'package:rook_sdk_apple_health/src/data/result/authorized_data_sources_result.dart';
import 'package:rook_sdk_apple_health/src/data/result/boolean_result.dart';
import 'package:rook_sdk_apple_health/src/data/result/data_source_authorizer_result.dart';
import 'package:rook_sdk_apple_health/src/data/result/int64_result.dart';
import 'package:rook_sdk_apple_health/src/data/result/sync_status_with_calories_result.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_event_sync_type.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_summary_sync_type.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/apple_health_permission.dart';
import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

class MethodChannelRookSdkAppleHealth extends RookSdkAppleHealthPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('rook_sdk_apple_health');

  @visibleForTesting
  final backgroundErrorsEventChannel = const EventChannel(
    "io.tryrook.errors.background",
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
    final result = BooleanResultProto.fromBuffer(bytes);

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
    final result = BooleanResultProto.fromBuffer(bytes);

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
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> syncUserTimeZone() async {
    final Uint8List bytes =
        await methodChannel.invokeMethod('syncUserTimeZone');
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> requestPermissions(
    List<AppleHealthPermission> permissions,
  ) async {
    final permissionsProtoValues = permissions.map((it) {
      return it.toProto().value;
    }).toList();

    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestPermissions',
      [
        permissionsProtoValues,
      ],
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<bool> syncHistoricSummaries(bool enableLogs) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncHistoricSummaries',
      [
        enableLogs,
      ],
    );
    final result = BooleanResultProto.fromBuffer(bytes);

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
    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> syncByDateAndSummary(
    DateTime date,
    AHSummarySyncType summary,
  ) async {
    final proto = summary.toProto();
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncByDateAndSummary',
      [
        date.millisecondsSinceEpoch,
        proto.value,
      ],
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> syncByDateAndEvent(DateTime date, AHEventSyncType event) async {
    final proto = event.toProto();
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncByDateAndEvent',
      [
        date.millisecondsSinceEpoch,
        proto.value,
      ],
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<int?> getTodayStepsCount() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getTodayStepsCount',
    );

    final result = Int64ResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<DailyCalories?> getTodayCaloriesCount() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getTodayCaloriesCount',
    );

    final result = SyncStatusWithCaloriesResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> isContinuousUploadEnabled() async {
    await Future.delayed(const Duration(milliseconds: 1500));

    final Uint8List bytes = await methodChannel.invokeMethod(
      'isContinuousUploadEnabled',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> enableContinuousUpload(
    bool enableNativeLogs,
    String clientUUID,
    String secretKey,
    RookEnvironment environment,
  ) async {
    final rookConfigurationProto = ConfigurationProto(
      clientUUID: clientUUID,
      secretKey: secretKey,
      environment: environment.toProto(),
      enableBackgroundSync: false,
    );

    final Uint8List bytes = await methodChannel.invokeMethod(
      'enableContinuousUpload',
      [
        enableNativeLogs,
        rookConfigurationProto.writeToBuffer(),
      ],
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> disableContinuousUpload() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'disableContinuousUpload',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<bool> isScheduled() async {
    await Future.delayed(const Duration(milliseconds: 1500));

    final Uint8List bytes = await methodChannel.invokeMethod('isScheduled');

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> enableBackground(
    bool enableNativeLogs,
    String clientUUID,
    String secretKey,
    RookEnvironment environment,
  ) async {
    final rookConfigurationProto = ConfigurationProto(
      clientUUID: clientUUID,
      secretKey: secretKey,
      environment: environment.toProto(),
      enableBackgroundSync: false,
    );

    final Uint8List bytes = await methodChannel.invokeMethod(
      'enableBackground',
      [
        enableNativeLogs,
        rookConfigurationProto.writeToBuffer(),
      ],
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> disableBackground() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'disableBackground',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Stream<Exception> get backgroundErrorsUpdates {
    return backgroundErrorsEventChannel.receiveBroadcastStream().map(
      (bytes) {
        final proto = PluginExceptionProto.fromBuffer(bytes);

        return proto.toDartException();
      },
    );
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

    final result = DataSourceAuthorizerResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<AuthorizedDataSources> getAuthorizedDataSources() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getAuthorizedDataSources',
    );

    final result = AuthorizedDataSourcesResultProto.fromBuffer(bytes);

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

    final result = BooleanResultProto.fromBuffer(bytes);

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

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }
}
