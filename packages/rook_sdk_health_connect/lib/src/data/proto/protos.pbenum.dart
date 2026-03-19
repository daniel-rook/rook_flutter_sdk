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

class HealthConnectAvailabilityProto extends $pb.ProtobufEnum {
  static const HealthConnectAvailabilityProto INSTALLED =
      HealthConnectAvailabilityProto._(0, _omitEnumNames ? '' : 'INSTALLED');
  static const HealthConnectAvailabilityProto NOT_INSTALLED =
      HealthConnectAvailabilityProto._(
          1, _omitEnumNames ? '' : 'NOT_INSTALLED');
  static const HealthConnectAvailabilityProto NOT_SUPPORTED =
      HealthConnectAvailabilityProto._(
          2, _omitEnumNames ? '' : 'NOT_SUPPORTED');

  static const $core.List<HealthConnectAvailabilityProto> values =
      <HealthConnectAvailabilityProto>[
    INSTALLED,
    NOT_INSTALLED,
    NOT_SUPPORTED,
  ];

  static final $core.List<HealthConnectAvailabilityProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static HealthConnectAvailabilityProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HealthConnectAvailabilityProto._(super.value, super.name);
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

class BackgroundReadStatusProto extends $pb.ProtobufEnum {
  static const BackgroundReadStatusProto UNAVAILABLE =
      BackgroundReadStatusProto._(0, _omitEnumNames ? '' : 'UNAVAILABLE');
  static const BackgroundReadStatusProto PERMISSION_NOT_GRANTED =
      BackgroundReadStatusProto._(
          1, _omitEnumNames ? '' : 'PERMISSION_NOT_GRANTED');
  static const BackgroundReadStatusProto PERMISSION_GRANTED =
      BackgroundReadStatusProto._(
          2, _omitEnumNames ? '' : 'PERMISSION_GRANTED');

  static const $core.List<BackgroundReadStatusProto> values =
      <BackgroundReadStatusProto>[
    UNAVAILABLE,
    PERMISSION_NOT_GRANTED,
    PERMISSION_GRANTED,
  ];

  static final $core.List<BackgroundReadStatusProto?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static BackgroundReadStatusProto? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BackgroundReadStatusProto._(super.value, super.name);
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
