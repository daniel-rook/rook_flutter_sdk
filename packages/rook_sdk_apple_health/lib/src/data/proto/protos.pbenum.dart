// This is a generated file - do not edit.
//
// Generated from protos.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class EnvironmentProto extends $pb.ProtobufEnum {
  static const EnvironmentProto SANDBOX =
      EnvironmentProto._(0, _omitEnumNames ? '' : 'SANDBOX');
  static const EnvironmentProto PRODUCTION =
      EnvironmentProto._(1, _omitEnumNames ? '' : 'PRODUCTION');

  static const $core.List<EnvironmentProto> values = <EnvironmentProto>[
    SANDBOX,
    PRODUCTION,
  ];

  static final $core.List<EnvironmentProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static EnvironmentProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EnvironmentProto._(super.value, super.name);
}

class DiagnosticStatePermissionsProto extends $pb.ProtobufEnum {
  static const DiagnosticStatePermissionsProto NOT_REQUESTED =
      DiagnosticStatePermissionsProto._(
          0, _omitEnumNames ? '' : 'NOT_REQUESTED');
  static const DiagnosticStatePermissionsProto REQUESTED =
      DiagnosticStatePermissionsProto._(1, _omitEnumNames ? '' : 'REQUESTED');
  static const DiagnosticStatePermissionsProto GRANTED =
      DiagnosticStatePermissionsProto._(2, _omitEnumNames ? '' : 'GRANTED');

  static const $core.List<DiagnosticStatePermissionsProto> values =
      <DiagnosticStatePermissionsProto>[
    NOT_REQUESTED,
    REQUESTED,
    GRANTED,
  ];

  static final $core.List<DiagnosticStatePermissionsProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static DiagnosticStatePermissionsProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DiagnosticStatePermissionsProto._(super.value, super.name);
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
  static const AppleHealthPermissionProto STAIR_ASCENT_SPEED =
      AppleHealthPermissionProto._(
          48, _omitEnumNames ? '' : 'STAIR_ASCENT_SPEED');
  static const AppleHealthPermissionProto CYCLING_POWER =
      AppleHealthPermissionProto._(49, _omitEnumNames ? '' : 'CYCLING_POWER');
  static const AppleHealthPermissionProto CYCLING_SPEED =
      AppleHealthPermissionProto._(50, _omitEnumNames ? '' : 'CYCLING_SPEED');
  static const AppleHealthPermissionProto WATER_TEMPERATURE =
      AppleHealthPermissionProto._(
          51, _omitEnumNames ? '' : 'WATER_TEMPERATURE');
  static const AppleHealthPermissionProto WORKOUT_ROUTE =
      AppleHealthPermissionProto._(52, _omitEnumNames ? '' : 'WORKOUT_ROUTE');
  static const AppleHealthPermissionProto DIETARY_BIOTIN =
      AppleHealthPermissionProto._(53, _omitEnumNames ? '' : 'DIETARY_BIOTIN');
  static const AppleHealthPermissionProto DIETARY_CAFFEINE =
      AppleHealthPermissionProto._(
          54, _omitEnumNames ? '' : 'DIETARY_CAFFEINE');
  static const AppleHealthPermissionProto DIETARY_CALCIUM =
      AppleHealthPermissionProto._(55, _omitEnumNames ? '' : 'DIETARY_CALCIUM');
  static const AppleHealthPermissionProto DIETARY_CHLORIDE =
      AppleHealthPermissionProto._(
          56, _omitEnumNames ? '' : 'DIETARY_CHLORIDE');
  static const AppleHealthPermissionProto DIETARY_CHROMIUM =
      AppleHealthPermissionProto._(
          57, _omitEnumNames ? '' : 'DIETARY_CHROMIUM');
  static const AppleHealthPermissionProto DIETARY_COPPER =
      AppleHealthPermissionProto._(58, _omitEnumNames ? '' : 'DIETARY_COPPER');
  static const AppleHealthPermissionProto DIETARY_FAT_MONOUNSATURATED =
      AppleHealthPermissionProto._(
          59, _omitEnumNames ? '' : 'DIETARY_FAT_MONOUNSATURATED');
  static const AppleHealthPermissionProto DIETARY_FAT_POLYUNSATURATED =
      AppleHealthPermissionProto._(
          60, _omitEnumNames ? '' : 'DIETARY_FAT_POLYUNSATURATED');
  static const AppleHealthPermissionProto DIETARY_FAT_SATURATED =
      AppleHealthPermissionProto._(
          61, _omitEnumNames ? '' : 'DIETARY_FAT_SATURATED');
  static const AppleHealthPermissionProto DIETARY_FOLATE =
      AppleHealthPermissionProto._(62, _omitEnumNames ? '' : 'DIETARY_FOLATE');
  static const AppleHealthPermissionProto DIETARY_IODINE =
      AppleHealthPermissionProto._(63, _omitEnumNames ? '' : 'DIETARY_IODINE');
  static const AppleHealthPermissionProto DIETARY_IRON =
      AppleHealthPermissionProto._(64, _omitEnumNames ? '' : 'DIETARY_IRON');
  static const AppleHealthPermissionProto DIETARY_MAGNESIUM =
      AppleHealthPermissionProto._(
          65, _omitEnumNames ? '' : 'DIETARY_MAGNESIUM');
  static const AppleHealthPermissionProto DIETARY_MANGANESE =
      AppleHealthPermissionProto._(
          66, _omitEnumNames ? '' : 'DIETARY_MANGANESE');
  static const AppleHealthPermissionProto DIETARY_MOLYBDENUM =
      AppleHealthPermissionProto._(
          67, _omitEnumNames ? '' : 'DIETARY_MOLYBDENUM');
  static const AppleHealthPermissionProto DIETARY_NIACIN =
      AppleHealthPermissionProto._(68, _omitEnumNames ? '' : 'DIETARY_NIACIN');
  static const AppleHealthPermissionProto DIETARY_PANTOTHENIC_ACID =
      AppleHealthPermissionProto._(
          69, _omitEnumNames ? '' : 'DIETARY_PANTOTHENIC_ACID');
  static const AppleHealthPermissionProto DIETARY_PHOSPHORUS =
      AppleHealthPermissionProto._(
          70, _omitEnumNames ? '' : 'DIETARY_PHOSPHORUS');
  static const AppleHealthPermissionProto DIETARY_POTASSIUM =
      AppleHealthPermissionProto._(
          71, _omitEnumNames ? '' : 'DIETARY_POTASSIUM');
  static const AppleHealthPermissionProto DIETARY_RIBOFLAVIN =
      AppleHealthPermissionProto._(
          72, _omitEnumNames ? '' : 'DIETARY_RIBOFLAVIN');
  static const AppleHealthPermissionProto DIETARY_SELENIUM =
      AppleHealthPermissionProto._(
          73, _omitEnumNames ? '' : 'DIETARY_SELENIUM');
  static const AppleHealthPermissionProto DIETARY_THIAMIN =
      AppleHealthPermissionProto._(74, _omitEnumNames ? '' : 'DIETARY_THIAMIN');
  static const AppleHealthPermissionProto DIETARY_VITAMIN_A =
      AppleHealthPermissionProto._(
          75, _omitEnumNames ? '' : 'DIETARY_VITAMIN_A');
  static const AppleHealthPermissionProto DIETARY_VITAMIN_B12 =
      AppleHealthPermissionProto._(
          76, _omitEnumNames ? '' : 'DIETARY_VITAMIN_B12');
  static const AppleHealthPermissionProto DIETARY_VITAMIN_B6 =
      AppleHealthPermissionProto._(
          77, _omitEnumNames ? '' : 'DIETARY_VITAMIN_B6');
  static const AppleHealthPermissionProto DIETARY_VITAMIN_C =
      AppleHealthPermissionProto._(
          78, _omitEnumNames ? '' : 'DIETARY_VITAMIN_C');
  static const AppleHealthPermissionProto DIETARY_VITAMIN_D =
      AppleHealthPermissionProto._(
          79, _omitEnumNames ? '' : 'DIETARY_VITAMIN_D');
  static const AppleHealthPermissionProto DIETARY_VITAMIN_E =
      AppleHealthPermissionProto._(
          80, _omitEnumNames ? '' : 'DIETARY_VITAMIN_E');
  static const AppleHealthPermissionProto DIETARY_VITAMIN_K =
      AppleHealthPermissionProto._(
          81, _omitEnumNames ? '' : 'DIETARY_VITAMIN_K');
  static const AppleHealthPermissionProto DIETARY_WATER =
      AppleHealthPermissionProto._(82, _omitEnumNames ? '' : 'DIETARY_WATER');
  static const AppleHealthPermissionProto DIETARY_ZINC =
      AppleHealthPermissionProto._(83, _omitEnumNames ? '' : 'DIETARY_ZINC');
  static const AppleHealthPermissionProto ESTIMATED_WORKOUT_EFFORT_SCORE =
      AppleHealthPermissionProto._(
          84, _omitEnumNames ? '' : 'ESTIMATED_WORKOUT_EFFORT_SCORE');
  static const AppleHealthPermissionProto PHYSICAL_EFFORT =
      AppleHealthPermissionProto._(85, _omitEnumNames ? '' : 'PHYSICAL_EFFORT');
  static const AppleHealthPermissionProto WORKOUT_EFFORT_SCORE =
      AppleHealthPermissionProto._(
          86, _omitEnumNames ? '' : 'WORKOUT_EFFORT_SCORE');

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
    STAIR_ASCENT_SPEED,
    CYCLING_POWER,
    CYCLING_SPEED,
    WATER_TEMPERATURE,
    WORKOUT_ROUTE,
    DIETARY_BIOTIN,
    DIETARY_CAFFEINE,
    DIETARY_CALCIUM,
    DIETARY_CHLORIDE,
    DIETARY_CHROMIUM,
    DIETARY_COPPER,
    DIETARY_FAT_MONOUNSATURATED,
    DIETARY_FAT_POLYUNSATURATED,
    DIETARY_FAT_SATURATED,
    DIETARY_FOLATE,
    DIETARY_IODINE,
    DIETARY_IRON,
    DIETARY_MAGNESIUM,
    DIETARY_MANGANESE,
    DIETARY_MOLYBDENUM,
    DIETARY_NIACIN,
    DIETARY_PANTOTHENIC_ACID,
    DIETARY_PHOSPHORUS,
    DIETARY_POTASSIUM,
    DIETARY_RIBOFLAVIN,
    DIETARY_SELENIUM,
    DIETARY_THIAMIN,
    DIETARY_VITAMIN_A,
    DIETARY_VITAMIN_B12,
    DIETARY_VITAMIN_B6,
    DIETARY_VITAMIN_C,
    DIETARY_VITAMIN_D,
    DIETARY_VITAMIN_E,
    DIETARY_VITAMIN_K,
    DIETARY_WATER,
    DIETARY_ZINC,
    ESTIMATED_WORKOUT_EFFORT_SCORE,
    PHYSICAL_EFFORT,
    WORKOUT_EFFORT_SCORE,
  ];

  static final $core.List<AppleHealthPermissionProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 86);
  static AppleHealthPermissionProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AppleHealthPermissionProto._(super.value, super.name);
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

  static final $core.List<SummarySyncTypeProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static SummarySyncTypeProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SummarySyncTypeProto._(super.value, super.name);
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
  static const EventSyncTypeProto ECG =
      EventSyncTypeProto._(11, _omitEnumNames ? '' : 'ECG');

  static const $core.List<EventSyncTypeProto> values = <EventSyncTypeProto>[
    ACTIVITY,
    BLOOD_GLUCOSE,
    BLOOD_PRESSURE,
    BODY_METRICS,
    HEART_RATE,
    NUTRITION,
    OXYGENATION,
    TEMPERATURE,
    STEPS,
    CALORIES,
    ECG,
  ];

  static final $core.List<EventSyncTypeProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 11);
  static EventSyncTypeProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EventSyncTypeProto._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
