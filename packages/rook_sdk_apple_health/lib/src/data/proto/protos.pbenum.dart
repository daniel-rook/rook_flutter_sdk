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
  static const EventSyncTypeProto OXYGENATION =
      EventSyncTypeProto._(7, _omitEnumNames ? '' : 'OXYGENATION');
  static const EventSyncTypeProto TEMPERATURE =
      EventSyncTypeProto._(8, _omitEnumNames ? '' : 'TEMPERATURE');

  static const $core.List<EventSyncTypeProto> values = <EventSyncTypeProto>[
    ACTIVITY,
    BLOOD_GLUCOSE,
    BLOOD_PRESSURE,
    BODY_METRICS,
    HEART_RATE,
    OXYGENATION,
    TEMPERATURE,
  ];

  static final $core.Map<$core.int, EventSyncTypeProto> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static EventSyncTypeProto? valueOf($core.int value) => _byValue[value];

  const EventSyncTypeProto._($core.int v, $core.String n) : super(v, n);
}

class AppleHealthPermissionProto extends $pb.ProtobufEnum {
  static const AppleHealthPermissionProto APPLE_EXERCISE_TIME =
      AppleHealthPermissionProto._(
          0, _omitEnumNames ? '' : 'APPLE_EXERCISE_TIME');
  static const AppleHealthPermissionProto APPLE_MOVE_TIME =
      AppleHealthPermissionProto._(1, _omitEnumNames ? '' : 'APPLE_MOVE_TIME');
  static const AppleHealthPermissionProto APPLE_STAND_TIME =
      AppleHealthPermissionProto._(2, _omitEnumNames ? '' : 'APPLE_STAND_TIME');
  static const AppleHealthPermissionProto BASAL_ENERGY_BURNED =
      AppleHealthPermissionProto._(
          3, _omitEnumNames ? '' : 'BASAL_ENERGY_BURNED');
  static const AppleHealthPermissionProto ACTIVE_ENERGY_BURNED =
      AppleHealthPermissionProto._(
          4, _omitEnumNames ? '' : 'ACTIVE_ENERGY_BURNED');
  static const AppleHealthPermissionProto STEP_COUNT =
      AppleHealthPermissionProto._(5, _omitEnumNames ? '' : 'STEP_COUNT');
  static const AppleHealthPermissionProto DISTANCE_CYCLING =
      AppleHealthPermissionProto._(6, _omitEnumNames ? '' : 'DISTANCE_CYCLING');
  static const AppleHealthPermissionProto DISTANCE_WALKING_RUNNING =
      AppleHealthPermissionProto._(
          7, _omitEnumNames ? '' : 'DISTANCE_WALKING_RUNNING');
  static const AppleHealthPermissionProto DISTANCE_SWIMMING =
      AppleHealthPermissionProto._(
          8, _omitEnumNames ? '' : 'DISTANCE_SWIMMING');
  static const AppleHealthPermissionProto SWIMMING_STROKE_COUNT =
      AppleHealthPermissionProto._(
          9, _omitEnumNames ? '' : 'SWIMMING_STROKE_COUNT');
  static const AppleHealthPermissionProto FLIGHTS_CLIMBED =
      AppleHealthPermissionProto._(10, _omitEnumNames ? '' : 'FLIGHTS_CLIMBED');
  static const AppleHealthPermissionProto WALKING_SPEED =
      AppleHealthPermissionProto._(11, _omitEnumNames ? '' : 'WALKING_SPEED');
  static const AppleHealthPermissionProto WALKING_STEP_LENGTH =
      AppleHealthPermissionProto._(
          12, _omitEnumNames ? '' : 'WALKING_STEP_LENGTH');
  static const AppleHealthPermissionProto RUNNING_POWER =
      AppleHealthPermissionProto._(13, _omitEnumNames ? '' : 'RUNNING_POWER');
  static const AppleHealthPermissionProto RUNNING_SPEED =
      AppleHealthPermissionProto._(14, _omitEnumNames ? '' : 'RUNNING_SPEED');
  static const AppleHealthPermissionProto HEIGHT =
      AppleHealthPermissionProto._(15, _omitEnumNames ? '' : 'HEIGHT');
  static const AppleHealthPermissionProto BODY_MASS =
      AppleHealthPermissionProto._(16, _omitEnumNames ? '' : 'BODY_MASS');
  static const AppleHealthPermissionProto BODY_MASS_INDEX =
      AppleHealthPermissionProto._(17, _omitEnumNames ? '' : 'BODY_MASS_INDEX');
  static const AppleHealthPermissionProto WAIST_CIRCUMFERENCE =
      AppleHealthPermissionProto._(
          18, _omitEnumNames ? '' : 'WAIST_CIRCUMFERENCE');
  static const AppleHealthPermissionProto BODY_FAT_PERCENTAGE =
      AppleHealthPermissionProto._(
          19, _omitEnumNames ? '' : 'BODY_FAT_PERCENTAGE');
  static const AppleHealthPermissionProto BODY_TEMPERATURE =
      AppleHealthPermissionProto._(
          20, _omitEnumNames ? '' : 'BODY_TEMPERATURE');
  static const AppleHealthPermissionProto BASAL_BODY_TEMPERATURE =
      AppleHealthPermissionProto._(
          21, _omitEnumNames ? '' : 'BASAL_BODY_TEMPERATURE');
  static const AppleHealthPermissionProto APPLE_SLEEPING_WRIST_TEMPERATURE =
      AppleHealthPermissionProto._(
          22, _omitEnumNames ? '' : 'APPLE_SLEEPING_WRIST_TEMPERATURE');
  static const AppleHealthPermissionProto HEART_RATE_APPLE =
      AppleHealthPermissionProto._(
          23, _omitEnumNames ? '' : 'HEART_RATE_APPLE');
  static const AppleHealthPermissionProto RESTING_HEART_RATE =
      AppleHealthPermissionProto._(
          24, _omitEnumNames ? '' : 'RESTING_HEART_RATE');
  static const AppleHealthPermissionProto WALKING_HEART_RATE_AVERAGE =
      AppleHealthPermissionProto._(
          25, _omitEnumNames ? '' : 'WALKING_HEART_RATE_AVERAGE');
  static const AppleHealthPermissionProto HEART_RATE_VARIABILITY_SDNN =
      AppleHealthPermissionProto._(
          26, _omitEnumNames ? '' : 'HEART_RATE_VARIABILITY_SDNN');
  static const AppleHealthPermissionProto ELECTROCARDIOGRAM =
      AppleHealthPermissionProto._(
          27, _omitEnumNames ? '' : 'ELECTROCARDIOGRAM');
  static const AppleHealthPermissionProto WORKOUT =
      AppleHealthPermissionProto._(28, _omitEnumNames ? '' : 'WORKOUT');
  static const AppleHealthPermissionProto SLEEP_ANALYSIS =
      AppleHealthPermissionProto._(29, _omitEnumNames ? '' : 'SLEEP_ANALYSIS');
  static const AppleHealthPermissionProto SLEEP_APNEA_EVENT =
      AppleHealthPermissionProto._(
          30, _omitEnumNames ? '' : 'SLEEP_APNEA_EVENT');
  static const AppleHealthPermissionProto VO_2_MAX =
      AppleHealthPermissionProto._(31, _omitEnumNames ? '' : 'VO_2_MAX');
  static const AppleHealthPermissionProto OXYGEN_SATURATION =
      AppleHealthPermissionProto._(
          32, _omitEnumNames ? '' : 'OXYGEN_SATURATION');
  static const AppleHealthPermissionProto RESPIRATORY_RATE =
      AppleHealthPermissionProto._(
          33, _omitEnumNames ? '' : 'RESPIRATORY_RATE');
  static const AppleHealthPermissionProto UV_EXPOSURE =
      AppleHealthPermissionProto._(34, _omitEnumNames ? '' : 'UV_EXPOSURE');
  static const AppleHealthPermissionProto BIOLOGICAL_SEX =
      AppleHealthPermissionProto._(35, _omitEnumNames ? '' : 'BIOLOGICAL_SEX');
  static const AppleHealthPermissionProto DATE_OF_BIRTH =
      AppleHealthPermissionProto._(36, _omitEnumNames ? '' : 'DATE_OF_BIRTH');
  static const AppleHealthPermissionProto BLOOD_PRESSURE_SYSTOLIC =
      AppleHealthPermissionProto._(
          37, _omitEnumNames ? '' : 'BLOOD_PRESSURE_SYSTOLIC');
  static const AppleHealthPermissionProto BLOOD_PRESSURE_DIASTOLIC =
      AppleHealthPermissionProto._(
          38, _omitEnumNames ? '' : 'BLOOD_PRESSURE_DIASTOLIC');
  static const AppleHealthPermissionProto BLOOD_GLUCOSE_APPLE =
      AppleHealthPermissionProto._(
          39, _omitEnumNames ? '' : 'BLOOD_GLUCOSE_APPLE');
  static const AppleHealthPermissionProto DIETARY_ENERGY_CONSUMED =
      AppleHealthPermissionProto._(
          40, _omitEnumNames ? '' : 'DIETARY_ENERGY_CONSUMED');
  static const AppleHealthPermissionProto DIETARY_PROTEIN =
      AppleHealthPermissionProto._(41, _omitEnumNames ? '' : 'DIETARY_PROTEIN');
  static const AppleHealthPermissionProto DIETARY_SUGAR =
      AppleHealthPermissionProto._(42, _omitEnumNames ? '' : 'DIETARY_SUGAR');
  static const AppleHealthPermissionProto DIETARY_FAT_TOTAL =
      AppleHealthPermissionProto._(
          43, _omitEnumNames ? '' : 'DIETARY_FAT_TOTAL');
  static const AppleHealthPermissionProto DIETARY_CARBOHYDRATES =
      AppleHealthPermissionProto._(
          44, _omitEnumNames ? '' : 'DIETARY_CARBOHYDRATES');
  static const AppleHealthPermissionProto DIETARY_FIBER =
      AppleHealthPermissionProto._(45, _omitEnumNames ? '' : 'DIETARY_FIBER');
  static const AppleHealthPermissionProto DIETARY_SODIUM =
      AppleHealthPermissionProto._(46, _omitEnumNames ? '' : 'DIETARY_SODIUM');
  static const AppleHealthPermissionProto DIETARY_CHOLESTEROL =
      AppleHealthPermissionProto._(
          47, _omitEnumNames ? '' : 'DIETARY_CHOLESTEROL');

  static const $core.List<AppleHealthPermissionProto> values =
      <AppleHealthPermissionProto>[
    APPLE_EXERCISE_TIME,
    APPLE_MOVE_TIME,
    APPLE_STAND_TIME,
    BASAL_ENERGY_BURNED,
    ACTIVE_ENERGY_BURNED,
    STEP_COUNT,
    DISTANCE_CYCLING,
    DISTANCE_WALKING_RUNNING,
    DISTANCE_SWIMMING,
    SWIMMING_STROKE_COUNT,
    FLIGHTS_CLIMBED,
    WALKING_SPEED,
    WALKING_STEP_LENGTH,
    RUNNING_POWER,
    RUNNING_SPEED,
    HEIGHT,
    BODY_MASS,
    BODY_MASS_INDEX,
    WAIST_CIRCUMFERENCE,
    BODY_FAT_PERCENTAGE,
    BODY_TEMPERATURE,
    BASAL_BODY_TEMPERATURE,
    APPLE_SLEEPING_WRIST_TEMPERATURE,
    HEART_RATE_APPLE,
    RESTING_HEART_RATE,
    WALKING_HEART_RATE_AVERAGE,
    HEART_RATE_VARIABILITY_SDNN,
    ELECTROCARDIOGRAM,
    WORKOUT,
    SLEEP_ANALYSIS,
    SLEEP_APNEA_EVENT,
    VO_2_MAX,
    OXYGEN_SATURATION,
    RESPIRATORY_RATE,
    UV_EXPOSURE,
    BIOLOGICAL_SEX,
    DATE_OF_BIRTH,
    BLOOD_PRESSURE_SYSTOLIC,
    BLOOD_PRESSURE_DIASTOLIC,
    BLOOD_GLUCOSE_APPLE,
    DIETARY_ENERGY_CONSUMED,
    DIETARY_PROTEIN,
    DIETARY_SUGAR,
    DIETARY_FAT_TOTAL,
    DIETARY_CARBOHYDRATES,
    DIETARY_FIBER,
    DIETARY_SODIUM,
    DIETARY_CHOLESTEROL,
  ];

  static final $core.Map<$core.int, AppleHealthPermissionProto> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AppleHealthPermissionProto? valueOf($core.int value) =>
      _byValue[value];

  const AppleHealthPermissionProto._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
