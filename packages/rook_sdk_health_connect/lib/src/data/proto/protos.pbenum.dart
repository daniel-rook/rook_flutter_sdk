//
//  Generated code. Do not modify.
//  source: protos.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RookEnvironmentProto extends $pb.ProtobufEnum {
  static const RookEnvironmentProto SANDBOX =
      RookEnvironmentProto._(0, _omitEnumNames ? '' : 'SANDBOX');
  static const RookEnvironmentProto PRODUCTION =
      RookEnvironmentProto._(1, _omitEnumNames ? '' : 'PRODUCTION');

  static const $core.List<RookEnvironmentProto> values = <RookEnvironmentProto>[
    SANDBOX,
    PRODUCTION,
  ];

  static final $core.Map<$core.int, RookEnvironmentProto> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static RookEnvironmentProto? valueOf($core.int value) => _byValue[value];

  const RookEnvironmentProto._($core.int v, $core.String n) : super(v, n);
}

class AvailabilityStatusProto extends $pb.ProtobufEnum {
  static const AvailabilityStatusProto INSTALLED =
      AvailabilityStatusProto._(0, _omitEnumNames ? '' : 'INSTALLED');
  static const AvailabilityStatusProto NOT_INSTALLED =
      AvailabilityStatusProto._(1, _omitEnumNames ? '' : 'NOT_INSTALLED');
  static const AvailabilityStatusProto NOT_SUPPORTED =
      AvailabilityStatusProto._(2, _omitEnumNames ? '' : 'NOT_SUPPORTED');

  static const $core.List<AvailabilityStatusProto> values =
      <AvailabilityStatusProto>[
    INSTALLED,
    NOT_INSTALLED,
    NOT_SUPPORTED,
  ];

  static final $core.Map<$core.int, AvailabilityStatusProto> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AvailabilityStatusProto? valueOf($core.int value) => _byValue[value];

  const AvailabilityStatusProto._($core.int v, $core.String n) : super(v, n);
}

class RequestPermissionsStatusProto extends $pb.ProtobufEnum {
  static const RequestPermissionsStatusProto REQUEST_SENT =
      RequestPermissionsStatusProto._(0, _omitEnumNames ? '' : 'REQUEST_SENT');
  static const RequestPermissionsStatusProto ALREADY_GRANTED =
      RequestPermissionsStatusProto._(
          1, _omitEnumNames ? '' : 'ALREADY_GRANTED');

  static const $core.List<RequestPermissionsStatusProto> values =
      <RequestPermissionsStatusProto>[
    REQUEST_SENT,
    ALREADY_GRANTED,
  ];

  static final $core.Map<$core.int, RequestPermissionsStatusProto> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static RequestPermissionsStatusProto? valueOf($core.int value) =>
      _byValue[value];

  const RequestPermissionsStatusProto._($core.int v, $core.String n)
      : super(v, n);
}

class DataSourceTypeProto extends $pb.ProtobufEnum {
  static const DataSourceTypeProto GARMIN =
      DataSourceTypeProto._(0, _omitEnumNames ? '' : 'GARMIN');
  static const DataSourceTypeProto OURA =
      DataSourceTypeProto._(1, _omitEnumNames ? '' : 'OURA');
  static const DataSourceTypeProto POLAR =
      DataSourceTypeProto._(2, _omitEnumNames ? '' : 'POLAR');
  static const DataSourceTypeProto FITBIT =
      DataSourceTypeProto._(3, _omitEnumNames ? '' : 'FITBIT');
  static const DataSourceTypeProto WITHINGS =
      DataSourceTypeProto._(4, _omitEnumNames ? '' : 'WITHINGS');
  static const DataSourceTypeProto WHOOP =
      DataSourceTypeProto._(5, _omitEnumNames ? '' : 'WHOOP');

  static const $core.List<DataSourceTypeProto> values = <DataSourceTypeProto>[
    GARMIN,
    OURA,
    POLAR,
    FITBIT,
    WITHINGS,
    WHOOP,
  ];

  static final $core.Map<$core.int, DataSourceTypeProto> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DataSourceTypeProto? valueOf($core.int value) => _byValue[value];

  const DataSourceTypeProto._($core.int v, $core.String n) : super(v, n);
}

class SyncStatusProto extends $pb.ProtobufEnum {
  static const SyncStatusProto SYNCED =
      SyncStatusProto._(0, _omitEnumNames ? '' : 'SYNCED');
  static const SyncStatusProto RECORDS_NOT_FOUND =
      SyncStatusProto._(1, _omitEnumNames ? '' : 'RECORDS_NOT_FOUND');

  static const $core.List<SyncStatusProto> values = <SyncStatusProto>[
    SYNCED,
    RECORDS_NOT_FOUND,
  ];

  static final $core.Map<$core.int, SyncStatusProto> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SyncStatusProto? valueOf($core.int value) => _byValue[value];

  const SyncStatusProto._($core.int v, $core.String n) : super(v, n);
}

class HealthDataTypeProto extends $pb.ProtobufEnum {
  static const HealthDataTypeProto SLEEP_SUMMARY =
      HealthDataTypeProto._(0, _omitEnumNames ? '' : 'SLEEP_SUMMARY');
  static const HealthDataTypeProto PHYSICAL_SUMMARY =
      HealthDataTypeProto._(1, _omitEnumNames ? '' : 'PHYSICAL_SUMMARY');
  static const HealthDataTypeProto BODY_SUMMARY =
      HealthDataTypeProto._(2, _omitEnumNames ? '' : 'BODY_SUMMARY');
  static const HealthDataTypeProto PHYSICAL_EVENT =
      HealthDataTypeProto._(3, _omitEnumNames ? '' : 'PHYSICAL_EVENT');
  static const HealthDataTypeProto BLOOD_GLUCOSE_BODY_EVENT =
      HealthDataTypeProto._(
          4, _omitEnumNames ? '' : 'BLOOD_GLUCOSE_BODY_EVENT');
  static const HealthDataTypeProto BLOOD_PRESSURE_BODY_EVENT =
      HealthDataTypeProto._(
          5, _omitEnumNames ? '' : 'BLOOD_PRESSURE_BODY_EVENT');
  static const HealthDataTypeProto BODY_METRICS_EVENT =
      HealthDataTypeProto._(6, _omitEnumNames ? '' : 'BODY_METRICS_EVENT');
  static const HealthDataTypeProto HEART_RATE_BODY_EVENT =
      HealthDataTypeProto._(7, _omitEnumNames ? '' : 'HEART_RATE_BODY_EVENT');
  static const HealthDataTypeProto HEART_RATE_PHYSICAL_EVENT =
      HealthDataTypeProto._(
          8, _omitEnumNames ? '' : 'HEART_RATE_PHYSICAL_EVENT');
  static const HealthDataTypeProto HYDRATION_BODY_EVENT =
      HealthDataTypeProto._(9, _omitEnumNames ? '' : 'HYDRATION_BODY_EVENT');
  static const HealthDataTypeProto NUTRITION_BODY_EVENT =
      HealthDataTypeProto._(10, _omitEnumNames ? '' : 'NUTRITION_BODY_EVENT');
  static const HealthDataTypeProto OXYGENATION_BODY_EVENT =
      HealthDataTypeProto._(11, _omitEnumNames ? '' : 'OXYGENATION_BODY_EVENT');
  static const HealthDataTypeProto OXYGENATION_PHYSICAL_EVENT =
      HealthDataTypeProto._(
          12, _omitEnumNames ? '' : 'OXYGENATION_PHYSICAL_EVENT');
  static const HealthDataTypeProto TEMPERATURE_BODY_EVENT =
      HealthDataTypeProto._(13, _omitEnumNames ? '' : 'TEMPERATURE_BODY_EVENT');

  static const $core.List<HealthDataTypeProto> values = <HealthDataTypeProto>[
    SLEEP_SUMMARY,
    PHYSICAL_SUMMARY,
    BODY_SUMMARY,
    PHYSICAL_EVENT,
    BLOOD_GLUCOSE_BODY_EVENT,
    BLOOD_PRESSURE_BODY_EVENT,
    BODY_METRICS_EVENT,
    HEART_RATE_BODY_EVENT,
    HEART_RATE_PHYSICAL_EVENT,
    HYDRATION_BODY_EVENT,
    NUTRITION_BODY_EVENT,
    OXYGENATION_BODY_EVENT,
    OXYGENATION_PHYSICAL_EVENT,
    TEMPERATURE_BODY_EVENT,
  ];

  static final $core.Map<$core.int, HealthDataTypeProto> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static HealthDataTypeProto? valueOf($core.int value) => _byValue[value];

  const HealthDataTypeProto._($core.int v, $core.String n) : super(v, n);
}

class SummarySyncTypeProto extends $pb.ProtobufEnum {
  static const SummarySyncTypeProto SLEEP =
      SummarySyncTypeProto._(0, _omitEnumNames ? '' : 'SLEEP');
  static const SummarySyncTypeProto PHYSICAL =
      SummarySyncTypeProto._(1, _omitEnumNames ? '' : 'PHYSICAL');
  static const SummarySyncTypeProto BODY =
      SummarySyncTypeProto._(2, _omitEnumNames ? '' : 'BODY');

  static const $core.List<SummarySyncTypeProto> values = <SummarySyncTypeProto>[
    SLEEP,
    PHYSICAL,
    BODY,
  ];

  static final $core.Map<$core.int, SummarySyncTypeProto> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SummarySyncTypeProto? valueOf($core.int value) => _byValue[value];

  const SummarySyncTypeProto._($core.int v, $core.String n) : super(v, n);
}

class EventSyncTypeProto extends $pb.ProtobufEnum {
  static const EventSyncTypeProto ACTIVITY =
      EventSyncTypeProto._(0, _omitEnumNames ? '' : 'ACTIVITY');
  static const EventSyncTypeProto BLOOD_GLUCOSE =
      EventSyncTypeProto._(1, _omitEnumNames ? '' : 'BLOOD_GLUCOSE');
  static const EventSyncTypeProto BLOOD_PRESSURE =
      EventSyncTypeProto._(2, _omitEnumNames ? '' : 'BLOOD_PRESSURE');
  static const EventSyncTypeProto BODY_METRICS =
      EventSyncTypeProto._(3, _omitEnumNames ? '' : 'BODY_METRICS');
  static const EventSyncTypeProto HEART_RATE =
      EventSyncTypeProto._(4, _omitEnumNames ? '' : 'HEART_RATE');
  static const EventSyncTypeProto HYDRATION =
      EventSyncTypeProto._(5, _omitEnumNames ? '' : 'HYDRATION');
  static const EventSyncTypeProto NUTRITION =
      EventSyncTypeProto._(6, _omitEnumNames ? '' : 'NUTRITION');
  static const EventSyncTypeProto OXYGENATION =
      EventSyncTypeProto._(7, _omitEnumNames ? '' : 'OXYGENATION');
  static const EventSyncTypeProto TEMPERATURE =
      EventSyncTypeProto._(8, _omitEnumNames ? '' : 'TEMPERATURE');
  static const EventSyncTypeProto STEPS =
      EventSyncTypeProto._(9, _omitEnumNames ? '' : 'STEPS');
  static const EventSyncTypeProto CALORIES =
      EventSyncTypeProto._(10, _omitEnumNames ? '' : 'CALORIES');

  static const $core.List<EventSyncTypeProto> values = <EventSyncTypeProto>[
    ACTIVITY,
    BLOOD_GLUCOSE,
    BLOOD_PRESSURE,
    BODY_METRICS,
    HEART_RATE,
    HYDRATION,
    NUTRITION,
    OXYGENATION,
    TEMPERATURE,
    STEPS,
    CALORIES,
  ];

  static final $core.Map<$core.int, EventSyncTypeProto> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static EventSyncTypeProto? valueOf($core.int value) => _byValue[value];

  const EventSyncTypeProto._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
