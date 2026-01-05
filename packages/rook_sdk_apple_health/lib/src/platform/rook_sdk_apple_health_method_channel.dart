import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/apple_health_permission_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/configuration_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/event_sync_type_mapper.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/summary_sync_type_mapper.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/data/result/activity_event_result.dart';
import 'package:rook_sdk_apple_health/src/data/result/body_summary_result.dart';
import 'package:rook_sdk_apple_health/src/data/result/boolean_result.dart';
import 'package:rook_sdk_apple_health/src/data/result/calories_result.dart';
import 'package:rook_sdk_apple_health/src/data/result/int64_result.dart';
import 'package:rook_sdk_apple_health/src/data/result/physical_summary_result.dart';
import 'package:rook_sdk_apple_health/src/data/result/sleep_summary_result.dart';
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

    result.unwrap();
  }

  @override
  Future<void> syncByDateAndEvent(DateTime date, AHEventSyncType event) async {
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
  Future<bool> isContinuousUploadEnabled() async {
    await Future.delayed(const Duration(milliseconds: 1500));

    final Uint8List bytes = await methodChannel.invokeMethod(
      'isContinuousUploadEnabled',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    return result.unwrap();
  }

  @override
  Future<void> enableContinuousUpload(bool enableNativeLogs) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'enableContinuousUpload',
      [
        enableNativeLogs,
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
  Future<void> schedule(bool enableNativeLogs) async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'schedule',
      [
        enableNativeLogs,
      ],
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Future<void> cancel() async {
    final Uint8List bytes = await methodChannel.invokeMethod(
      'cancel',
    );

    final result = BooleanResultProto.fromBuffer(bytes);

    result.unwrap();
  }

  @override
  Stream<Exception> get backgroundErrorsUpdates {
    return backgroundErrorsEventChannel.receiveBroadcastStream().map(
      (bytes) {
        final proto = SDKExceptionProto.fromBuffer(bytes);
        final exception = SDKException.fromCode(
          code: proto.code,
          message: proto.message,
        );

        return exception;
      },
    );
  }
}
