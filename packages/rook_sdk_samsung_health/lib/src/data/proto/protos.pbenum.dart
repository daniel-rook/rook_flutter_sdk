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

class SamsungHealthAvailabilityProto extends $pb.ProtobufEnum {
  static const SamsungHealthAvailabilityProto INSTALLED =
      SamsungHealthAvailabilityProto._(0, _omitEnumNames ? '' : 'INSTALLED');
  static const SamsungHealthAvailabilityProto NOT_INSTALLED =
      SamsungHealthAvailabilityProto._(
          1, _omitEnumNames ? '' : 'NOT_INSTALLED');
  static const SamsungHealthAvailabilityProto OUTDATED =
      SamsungHealthAvailabilityProto._(2, _omitEnumNames ? '' : 'OUTDATED');
  static const SamsungHealthAvailabilityProto DISABLED =
      SamsungHealthAvailabilityProto._(3, _omitEnumNames ? '' : 'DISABLED');
  static const SamsungHealthAvailabilityProto NOT_READY =
      SamsungHealthAvailabilityProto._(4, _omitEnumNames ? '' : 'NOT_READY');

  static const $core.List<SamsungHealthAvailabilityProto> values =
      <SamsungHealthAvailabilityProto>[
    INSTALLED,
    NOT_INSTALLED,
    OUTDATED,
    DISABLED,
    NOT_READY,
  ];

  static final $core.List<SamsungHealthAvailabilityProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static SamsungHealthAvailabilityProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SamsungHealthAvailabilityProto._(super.value, super.name);
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

  static final $core.List<RequestPermissionsStatusProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static RequestPermissionsStatusProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RequestPermissionsStatusProto._(super.value, super.name);
}

class SamsungHealthPermissionProto extends $pb.ProtobufEnum {
  static const SamsungHealthPermissionProto ACTIVITY_SUMMARY_PERMISSION =
      SamsungHealthPermissionProto._(
          0, _omitEnumNames ? '' : 'ACTIVITY_SUMMARY_PERMISSION');
  static const SamsungHealthPermissionProto BLOOD_GLUCOSE_PERMISSION =
      SamsungHealthPermissionProto._(
          1, _omitEnumNames ? '' : 'BLOOD_GLUCOSE_PERMISSION');
  static const SamsungHealthPermissionProto BLOOD_OXYGEN_PERMISSION =
      SamsungHealthPermissionProto._(
          2, _omitEnumNames ? '' : 'BLOOD_OXYGEN_PERMISSION');
  static const SamsungHealthPermissionProto BLOOD_PRESSURE_PERMISSION =
      SamsungHealthPermissionProto._(
          3, _omitEnumNames ? '' : 'BLOOD_PRESSURE_PERMISSION');
  static const SamsungHealthPermissionProto BODY_COMPOSITION_PERMISSION =
      SamsungHealthPermissionProto._(
          4, _omitEnumNames ? '' : 'BODY_COMPOSITION_PERMISSION');
  static const SamsungHealthPermissionProto EXERCISE_PERMISSION =
      SamsungHealthPermissionProto._(
          5, _omitEnumNames ? '' : 'EXERCISE_PERMISSION');
  static const SamsungHealthPermissionProto EXERCISE_LOCATION_PERMISSION =
      SamsungHealthPermissionProto._(
          6, _omitEnumNames ? '' : 'EXERCISE_LOCATION_PERMISSION');
  static const SamsungHealthPermissionProto FLOORS_CLIMBED_PERMISSION =
      SamsungHealthPermissionProto._(
          7, _omitEnumNames ? '' : 'FLOORS_CLIMBED_PERMISSION');
  static const SamsungHealthPermissionProto HEART_RATE_PERMISSION =
      SamsungHealthPermissionProto._(
          8, _omitEnumNames ? '' : 'HEART_RATE_PERMISSION');
  static const SamsungHealthPermissionProto NUTRITION_PERMISSION =
      SamsungHealthPermissionProto._(
          9, _omitEnumNames ? '' : 'NUTRITION_PERMISSION');
  static const SamsungHealthPermissionProto SLEEP_PERMISSION =
      SamsungHealthPermissionProto._(
          10, _omitEnumNames ? '' : 'SLEEP_PERMISSION');
  static const SamsungHealthPermissionProto STEPS_PERMISSION =
      SamsungHealthPermissionProto._(
          11, _omitEnumNames ? '' : 'STEPS_PERMISSION');
  static const SamsungHealthPermissionProto WATER_INTAKE_PERMISSION =
      SamsungHealthPermissionProto._(
          12, _omitEnumNames ? '' : 'WATER_INTAKE_PERMISSION');
  static const SamsungHealthPermissionProto BODY_TEMPERATURE_PERMISSION =
      SamsungHealthPermissionProto._(
          13, _omitEnumNames ? '' : 'BODY_TEMPERATURE_PERMISSION');
  static const SamsungHealthPermissionProto SLEEP_APNEA_PERMISSION =
      SamsungHealthPermissionProto._(
          14, _omitEnumNames ? '' : 'SLEEP_APNEA_PERMISSION');

  static const $core.List<SamsungHealthPermissionProto> values =
      <SamsungHealthPermissionProto>[
    ACTIVITY_SUMMARY_PERMISSION,
    BLOOD_GLUCOSE_PERMISSION,
    BLOOD_OXYGEN_PERMISSION,
    BLOOD_PRESSURE_PERMISSION,
    BODY_COMPOSITION_PERMISSION,
    EXERCISE_PERMISSION,
    EXERCISE_LOCATION_PERMISSION,
    FLOORS_CLIMBED_PERMISSION,
    HEART_RATE_PERMISSION,
    NUTRITION_PERMISSION,
    SLEEP_PERMISSION,
    STEPS_PERMISSION,
    WATER_INTAKE_PERMISSION,
    BODY_TEMPERATURE_PERMISSION,
    SLEEP_APNEA_PERMISSION,
  ];

  static final $core.List<SamsungHealthPermissionProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 14);
  static SamsungHealthPermissionProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SamsungHealthPermissionProto._(super.value, super.name);
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

  static final $core.List<EventSyncTypeProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 10);
  static EventSyncTypeProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EventSyncTypeProto._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
