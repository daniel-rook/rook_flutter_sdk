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
  static const RookEnvironmentProto SANDBOX = RookEnvironmentProto._(0, _omitEnumNames ? '' : 'SANDBOX');
  static const RookEnvironmentProto PRODUCTION = RookEnvironmentProto._(1, _omitEnumNames ? '' : 'PRODUCTION');

  static const $core.List<RookEnvironmentProto> values = <RookEnvironmentProto> [
    SANDBOX,
    PRODUCTION,
  ];

  static final $core.Map<$core.int, RookEnvironmentProto> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RookEnvironmentProto? valueOf($core.int value) => _byValue[value];

  const RookEnvironmentProto._($core.int v, $core.String n) : super(v, n);
}

class DataSourceTypeProto extends $pb.ProtobufEnum {
  static const DataSourceTypeProto GARMIN = DataSourceTypeProto._(0, _omitEnumNames ? '' : 'GARMIN');
  static const DataSourceTypeProto OURA = DataSourceTypeProto._(1, _omitEnumNames ? '' : 'OURA');
  static const DataSourceTypeProto POLAR = DataSourceTypeProto._(2, _omitEnumNames ? '' : 'POLAR');
  static const DataSourceTypeProto FITBIT = DataSourceTypeProto._(3, _omitEnumNames ? '' : 'FITBIT');
  static const DataSourceTypeProto WITHINGS = DataSourceTypeProto._(4, _omitEnumNames ? '' : 'WITHINGS');
  static const DataSourceTypeProto WHOOP = DataSourceTypeProto._(5, _omitEnumNames ? '' : 'WHOOP');

  static const $core.List<DataSourceTypeProto> values = <DataSourceTypeProto> [
    GARMIN,
    OURA,
    POLAR,
    FITBIT,
    WITHINGS,
    WHOOP,
  ];

  static final $core.Map<$core.int, DataSourceTypeProto> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataSourceTypeProto? valueOf($core.int value) => _byValue[value];

  const DataSourceTypeProto._($core.int v, $core.String n) : super(v, n);
}

class SummarySyncTypeProto extends $pb.ProtobufEnum {
  static const SummarySyncTypeProto SLEEP = SummarySyncTypeProto._(0, _omitEnumNames ? '' : 'SLEEP');
  static const SummarySyncTypeProto PHYSICAL = SummarySyncTypeProto._(1, _omitEnumNames ? '' : 'PHYSICAL');
  static const SummarySyncTypeProto BODY = SummarySyncTypeProto._(2, _omitEnumNames ? '' : 'BODY');

  static const $core.List<SummarySyncTypeProto> values = <SummarySyncTypeProto> [
    SLEEP,
    PHYSICAL,
    BODY,
  ];

  static final $core.Map<$core.int, SummarySyncTypeProto> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SummarySyncTypeProto? valueOf($core.int value) => _byValue[value];

  const SummarySyncTypeProto._($core.int v, $core.String n) : super(v, n);
}

class EventSyncTypeProto extends $pb.ProtobufEnum {
  static const EventSyncTypeProto ACTIVITY = EventSyncTypeProto._(0, _omitEnumNames ? '' : 'ACTIVITY');
  static const EventSyncTypeProto BLOOD_GLUCOSE = EventSyncTypeProto._(1, _omitEnumNames ? '' : 'BLOOD_GLUCOSE');
  static const EventSyncTypeProto BLOOD_PRESSURE = EventSyncTypeProto._(2, _omitEnumNames ? '' : 'BLOOD_PRESSURE');
  static const EventSyncTypeProto BODY_METRICS = EventSyncTypeProto._(3, _omitEnumNames ? '' : 'BODY_METRICS');
  static const EventSyncTypeProto HEART_RATE = EventSyncTypeProto._(4, _omitEnumNames ? '' : 'HEART_RATE');
  static const EventSyncTypeProto OXYGENATION = EventSyncTypeProto._(7, _omitEnumNames ? '' : 'OXYGENATION');
  static const EventSyncTypeProto TEMPERATURE = EventSyncTypeProto._(8, _omitEnumNames ? '' : 'TEMPERATURE');

  static const $core.List<EventSyncTypeProto> values = <EventSyncTypeProto> [
    ACTIVITY,
    BLOOD_GLUCOSE,
    BLOOD_PRESSURE,
    BODY_METRICS,
    HEART_RATE,
    OXYGENATION,
    TEMPERATURE,
  ];

  static final $core.Map<$core.int, EventSyncTypeProto> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EventSyncTypeProto? valueOf($core.int value) => _byValue[value];

  const EventSyncTypeProto._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
