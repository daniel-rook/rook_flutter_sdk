import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/extension/result_boolean_extensions.dart';
import 'package:rook_sdk_samsung_health/src/data/extension/result_request_permissions_status_extensions.dart';
import 'package:rook_sdk_samsung_health/src/data/extension/result_sync_status_with_daily_calories_extensions.dart';
import 'package:rook_sdk_samsung_health/src/data/extension/result_sync_status_with_int_extensions.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/event_sync_type_mapper.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/rook_configuration_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/samsung_health_availability_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/samsung_health_permission_mapper.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/samsung_health_permissions_summary_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/summary_sync_type_mapper.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/samsung_health_availability.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/samsung_health_permission.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/sh_event_sync_type.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/sh_summary_sync_type.dart';
import 'package:rook_sdk_samsung_health/src/domain/model/samsung_health_permissions_summary.dart';
import 'package:rook_sdk_samsung_health/src/platform/rook_sdk_samsung_health_platform_interface.dart';

class MethodChannelRookSdkSamsungHealth extends RookSdkSamsungHealthPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('rook_sdk_samsung_health');

  @visibleForTesting
  final samsungHealthPermissionsEventChannel = const EventChannel(
    "io.tryrook.permissions.samsunghealth",
  );

  @visibleForTesting
  final isScheduledEventChannel = const EventChannel(
    "io.tryrook.background.samsung.scheduled",
  );

  @override
  Future<void> enableNativeLogs() async {
    await methodChannel.invokeMethod('enableNativeLogs');
  }

  @override
  Future<String?> getUserID() {
    return methodChannel.invokeMethod('getUserID');
  }

  @override
  Future<void> initRook(RookConfiguration configuration) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'initRook',
      [
        configuration.toProto().writeToBuffer(),
      ],
    );
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
  Future<void> syncUserTimeZone() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncUserTimeZone',
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
  Future<SamsungHealthAvailability> checkSamsungHealthAvailability() async {
    final int code = await methodChannel.invokeMethod(
      'checkSamsungHealthAvailability',
    );
    final proto = SamsungHealthAvailabilityProto.valueOf(code) ??
        SamsungHealthAvailabilityProto.NOT_INSTALLED;

    return proto.toDomain();
  }

  @override
  Future<bool> checkSamsungHealthPermissions(
    List<SamsungHealthPermission> permissions,
  ) async {
    final permissionsProtoValues = permissions.map((it) {
      return it.toProto().value;
    }).toList();
    final Uint8List bytes = await methodChannel.invokeMethod(
      'checkSamsungHealthPermissions',
      [
        permissionsProtoValues,
      ],
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<bool> checkSamsungHealthPermissionsPartially(
    List<SamsungHealthPermission> permissions,
  ) async {
    final permissionsProtoValues = permissions.map((it) {
      return it.toProto().value;
    }).toList();
    final Uint8List bytes = await methodChannel.invokeMethod(
      'checkSamsungHealthPermissionsPartially',
      [
        permissionsProtoValues,
      ],
    );

    final result = ResultBooleanProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<RequestPermissionsStatus> requestSamsungHealthPermissions(
    List<SamsungHealthPermission> permissions,
  ) async {
    final permissionsProtoValues = permissions.map((it) {
      return it.toProto().value;
    }).toList();
    final Uint8List bytes = await methodChannel.invokeMethod(
      'requestSamsungHealthPermissions',
      [
        permissionsProtoValues,
      ],
    );

    final result = ResultRequestPermissionsStatusProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Stream<SamsungHealthPermissionsSummary>
      get requestSamsungHealthPermissionsUpdates {
    return samsungHealthPermissionsEventChannel.receiveBroadcastStream().map(
      (bytes) {
        return SamsungHealthPermissionsSummaryProto.fromBuffer(bytes)
            .toDomain();
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
    SHSummarySyncType summary,
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
  Future<bool> syncByDateAndEvent(DateTime date, SHEventSyncType event) async {
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
  Future<void> schedule(bool enableNativeLogs) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'schedule',
      [
        enableNativeLogs,
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
