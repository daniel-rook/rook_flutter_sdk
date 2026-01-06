import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/configuration_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/event_sync_type_mapper.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/samsung_health_availability_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/samsung_health_permission_mapper.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/samsung_health_permissions_summary_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/summary_sync_type_mapper.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/data/result/activity_event_result.dart';
import 'package:rook_sdk_samsung_health/src/data/result/body_summary_result.dart';
import 'package:rook_sdk_samsung_health/src/data/result/boolean_result.dart';
import 'package:rook_sdk_samsung_health/src/data/result/calories_result.dart';
import 'package:rook_sdk_samsung_health/src/data/result/int64_result.dart';
import 'package:rook_sdk_samsung_health/src/data/result/physical_summary_result.dart';
import 'package:rook_sdk_samsung_health/src/data/result/request_permissions_status_result.dart';
import 'package:rook_sdk_samsung_health/src/data/result/sleep_summary_result.dart';
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
  Future<void> syncUserTimeZone() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncUserTimeZone',
    );
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

    final result = BooleanResultProto.fromBuffer(bytes);

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

    final result = BooleanResultProto.fromBuffer(bytes);

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

    final result = RequestPermissionsStatusResultProto.fromBuffer(bytes);

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
  Future<void> syncHistoricSummaries(bool enableLogs) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncHistoricSummaries',
      [
        enableLogs,
      ],
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> syncSummariesByDate(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncSummariesByDate',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> syncByDateAndSummary(
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
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> syncByDateAndEvent(DateTime date, SHEventSyncType event) async {
    final proto = event.toProto();
    final Uint8List bytes = await methodChannel.invokeMethod(
      'syncByDateAndEvent',
      [
        date.millisecondsSinceEpoch,
        proto.value,
      ],
    );
    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<List<SleepSummary>> getSleepSummary(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getSleepSummary',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = SleepSummaryResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<PhysicalSummary> getPhysicalSummary(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getPhysicalSummary',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = PhysicalSummaryResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<BodySummary> getBodySummary(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getBodySummary',
      [
        date.millisecondsSinceEpoch,
      ],
    );
    final result = BodySummaryResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<List<ActivityEvent>> getActivityEvents(DateTime date) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'getActivityEvents',
      [
        date.millisecondsSinceEpoch,
      ],
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
  Future<bool> isScheduled() async {
    final Uint8List bytes = await methodChannel.invokeMethod('isScheduled');

    final result = BooleanResultProto.fromBuffer(bytes);

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
