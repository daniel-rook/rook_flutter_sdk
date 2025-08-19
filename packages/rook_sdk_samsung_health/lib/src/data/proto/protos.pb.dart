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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'protos.pbenum.dart';

export 'protos.pbenum.dart';

class RookConfigurationProto extends $pb.GeneratedMessage {
  factory RookConfigurationProto({
    $core.String? clientUUID,
    $core.String? secretKey,
    RookEnvironmentProto? environment,
    $core.bool? enableBackgroundSync,
  }) {
    final $result = create();
    if (clientUUID != null) {
      $result.clientUUID = clientUUID;
    }
    if (secretKey != null) {
      $result.secretKey = secretKey;
    }
    if (environment != null) {
      $result.environment = environment;
    }
    if (enableBackgroundSync != null) {
      $result.enableBackgroundSync = enableBackgroundSync;
    }
    return $result;
  }
  RookConfigurationProto._() : super();
  factory RookConfigurationProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RookConfigurationProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RookConfigurationProto',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'clientUUID', protoName: 'clientUUID')
    ..aOS(2, _omitFieldNames ? '' : 'secretKey', protoName: 'secretKey')
    ..e<RookEnvironmentProto>(
        3, _omitFieldNames ? '' : 'environment', $pb.PbFieldType.OE,
        defaultOrMaker: RookEnvironmentProto.SANDBOX,
        valueOf: RookEnvironmentProto.valueOf,
        enumValues: RookEnvironmentProto.values)
    ..aOB(4, _omitFieldNames ? '' : 'enableBackgroundSync',
        protoName: 'enableBackgroundSync')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RookConfigurationProto clone() =>
      RookConfigurationProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RookConfigurationProto copyWith(
          void Function(RookConfigurationProto) updates) =>
      super.copyWith((message) => updates(message as RookConfigurationProto))
          as RookConfigurationProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RookConfigurationProto create() => RookConfigurationProto._();
  RookConfigurationProto createEmptyInstance() => create();
  static $pb.PbList<RookConfigurationProto> createRepeated() =>
      $pb.PbList<RookConfigurationProto>();
  @$core.pragma('dart2js:noInline')
  static RookConfigurationProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RookConfigurationProto>(create);
  static RookConfigurationProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientUUID => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientUUID($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasClientUUID() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientUUID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get secretKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set secretKey($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSecretKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecretKey() => clearField(2);

  @$pb.TagNumber(3)
  RookEnvironmentProto get environment => $_getN(2);
  @$pb.TagNumber(3)
  set environment(RookEnvironmentProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEnvironment() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnvironment() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get enableBackgroundSync => $_getBF(3);
  @$pb.TagNumber(4)
  set enableBackgroundSync($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasEnableBackgroundSync() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnableBackgroundSync() => clearField(4);
}

class SamsungHealthPermissionsSummaryProto extends $pb.GeneratedMessage {
  factory SamsungHealthPermissionsSummaryProto({
    $core.bool? dataTypesGranted,
    $core.bool? dataTypesPartiallyGranted,
  }) {
    final $result = create();
    if (dataTypesGranted != null) {
      $result.dataTypesGranted = dataTypesGranted;
    }
    if (dataTypesPartiallyGranted != null) {
      $result.dataTypesPartiallyGranted = dataTypesPartiallyGranted;
    }
    return $result;
  }
  SamsungHealthPermissionsSummaryProto._() : super();
  factory SamsungHealthPermissionsSummaryProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SamsungHealthPermissionsSummaryProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SamsungHealthPermissionsSummaryProto',
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'dataTypesGranted',
        protoName: 'dataTypesGranted')
    ..aOB(2, _omitFieldNames ? '' : 'dataTypesPartiallyGranted',
        protoName: 'dataTypesPartiallyGranted')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SamsungHealthPermissionsSummaryProto clone() =>
      SamsungHealthPermissionsSummaryProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SamsungHealthPermissionsSummaryProto copyWith(
          void Function(SamsungHealthPermissionsSummaryProto) updates) =>
      super.copyWith((message) =>
              updates(message as SamsungHealthPermissionsSummaryProto))
          as SamsungHealthPermissionsSummaryProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SamsungHealthPermissionsSummaryProto create() =>
      SamsungHealthPermissionsSummaryProto._();
  SamsungHealthPermissionsSummaryProto createEmptyInstance() => create();
  static $pb.PbList<SamsungHealthPermissionsSummaryProto> createRepeated() =>
      $pb.PbList<SamsungHealthPermissionsSummaryProto>();
  @$core.pragma('dart2js:noInline')
  static SamsungHealthPermissionsSummaryProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SamsungHealthPermissionsSummaryProto>(create);
  static SamsungHealthPermissionsSummaryProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get dataTypesGranted => $_getBF(0);
  @$pb.TagNumber(1)
  set dataTypesGranted($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDataTypesGranted() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataTypesGranted() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get dataTypesPartiallyGranted => $_getBF(1);
  @$pb.TagNumber(2)
  set dataTypesPartiallyGranted($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDataTypesPartiallyGranted() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataTypesPartiallyGranted() => clearField(2);
}

class SyncStatusWithIntProto extends $pb.GeneratedMessage {
  factory SyncStatusWithIntProto({
    SyncStatusProto? syncStatus,
    $core.int? steps,
  }) {
    final $result = create();
    if (syncStatus != null) {
      $result.syncStatus = syncStatus;
    }
    if (steps != null) {
      $result.steps = steps;
    }
    return $result;
  }
  SyncStatusWithIntProto._() : super();
  factory SyncStatusWithIntProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SyncStatusWithIntProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SyncStatusWithIntProto',
      createEmptyInstance: create)
    ..e<SyncStatusProto>(
        1, _omitFieldNames ? '' : 'syncStatus', $pb.PbFieldType.OE,
        protoName: 'syncStatus',
        defaultOrMaker: SyncStatusProto.SYNCED,
        valueOf: SyncStatusProto.valueOf,
        enumValues: SyncStatusProto.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'steps', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SyncStatusWithIntProto clone() =>
      SyncStatusWithIntProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SyncStatusWithIntProto copyWith(
          void Function(SyncStatusWithIntProto) updates) =>
      super.copyWith((message) => updates(message as SyncStatusWithIntProto))
          as SyncStatusWithIntProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncStatusWithIntProto create() => SyncStatusWithIntProto._();
  SyncStatusWithIntProto createEmptyInstance() => create();
  static $pb.PbList<SyncStatusWithIntProto> createRepeated() =>
      $pb.PbList<SyncStatusWithIntProto>();
  @$core.pragma('dart2js:noInline')
  static SyncStatusWithIntProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SyncStatusWithIntProto>(create);
  static SyncStatusWithIntProto? _defaultInstance;

  @$pb.TagNumber(1)
  SyncStatusProto get syncStatus => $_getN(0);
  @$pb.TagNumber(1)
  set syncStatus(SyncStatusProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSyncStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get steps => $_getIZ(1);
  @$pb.TagNumber(2)
  set steps($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSteps() => $_has(1);
  @$pb.TagNumber(2)
  void clearSteps() => clearField(2);
}

class DailyCaloriesProto extends $pb.GeneratedMessage {
  factory DailyCaloriesProto({
    $core.double? basal,
    $core.double? active,
  }) {
    final $result = create();
    if (basal != null) {
      $result.basal = basal;
    }
    if (active != null) {
      $result.active = active;
    }
    return $result;
  }
  DailyCaloriesProto._() : super();
  factory DailyCaloriesProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DailyCaloriesProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DailyCaloriesProto',
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'basal', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'active', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DailyCaloriesProto clone() => DailyCaloriesProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DailyCaloriesProto copyWith(void Function(DailyCaloriesProto) updates) =>
      super.copyWith((message) => updates(message as DailyCaloriesProto))
          as DailyCaloriesProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DailyCaloriesProto create() => DailyCaloriesProto._();
  DailyCaloriesProto createEmptyInstance() => create();
  static $pb.PbList<DailyCaloriesProto> createRepeated() =>
      $pb.PbList<DailyCaloriesProto>();
  @$core.pragma('dart2js:noInline')
  static DailyCaloriesProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DailyCaloriesProto>(create);
  static DailyCaloriesProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get basal => $_getN(0);
  @$pb.TagNumber(1)
  set basal($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBasal() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasal() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get active => $_getN(1);
  @$pb.TagNumber(2)
  set active($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActive() => $_has(1);
  @$pb.TagNumber(2)
  void clearActive() => clearField(2);
}

class SyncStatusWithDailyCaloriesProto extends $pb.GeneratedMessage {
  factory SyncStatusWithDailyCaloriesProto({
    SyncStatusProto? syncStatus,
    DailyCaloriesProto? dailyCalories,
  }) {
    final $result = create();
    if (syncStatus != null) {
      $result.syncStatus = syncStatus;
    }
    if (dailyCalories != null) {
      $result.dailyCalories = dailyCalories;
    }
    return $result;
  }
  SyncStatusWithDailyCaloriesProto._() : super();
  factory SyncStatusWithDailyCaloriesProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SyncStatusWithDailyCaloriesProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SyncStatusWithDailyCaloriesProto',
      createEmptyInstance: create)
    ..e<SyncStatusProto>(
        1, _omitFieldNames ? '' : 'syncStatus', $pb.PbFieldType.OE,
        protoName: 'syncStatus',
        defaultOrMaker: SyncStatusProto.SYNCED,
        valueOf: SyncStatusProto.valueOf,
        enumValues: SyncStatusProto.values)
    ..aOM<DailyCaloriesProto>(2, _omitFieldNames ? '' : 'dailyCalories',
        protoName: 'dailyCalories', subBuilder: DailyCaloriesProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SyncStatusWithDailyCaloriesProto clone() =>
      SyncStatusWithDailyCaloriesProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SyncStatusWithDailyCaloriesProto copyWith(
          void Function(SyncStatusWithDailyCaloriesProto) updates) =>
      super.copyWith(
              (message) => updates(message as SyncStatusWithDailyCaloriesProto))
          as SyncStatusWithDailyCaloriesProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncStatusWithDailyCaloriesProto create() =>
      SyncStatusWithDailyCaloriesProto._();
  SyncStatusWithDailyCaloriesProto createEmptyInstance() => create();
  static $pb.PbList<SyncStatusWithDailyCaloriesProto> createRepeated() =>
      $pb.PbList<SyncStatusWithDailyCaloriesProto>();
  @$core.pragma('dart2js:noInline')
  static SyncStatusWithDailyCaloriesProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SyncStatusWithDailyCaloriesProto>(
          create);
  static SyncStatusWithDailyCaloriesProto? _defaultInstance;

  @$pb.TagNumber(1)
  SyncStatusProto get syncStatus => $_getN(0);
  @$pb.TagNumber(1)
  set syncStatus(SyncStatusProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSyncStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncStatus() => clearField(1);

  @$pb.TagNumber(2)
  DailyCaloriesProto get dailyCalories => $_getN(1);
  @$pb.TagNumber(2)
  set dailyCalories(DailyCaloriesProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDailyCalories() => $_has(1);
  @$pb.TagNumber(2)
  void clearDailyCalories() => clearField(2);
  @$pb.TagNumber(2)
  DailyCaloriesProto ensureDailyCalories() => $_ensure(1);
}

class PluginExceptionProto extends $pb.GeneratedMessage {
  factory PluginExceptionProto({
    $core.int? id,
    $core.int? code,
    $core.String? message,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (code != null) {
      $result.code = code;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  PluginExceptionProto._() : super();
  factory PluginExceptionProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PluginExceptionProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PluginExceptionProto',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OS3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OS3)
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PluginExceptionProto clone() =>
      PluginExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PluginExceptionProto copyWith(void Function(PluginExceptionProto) updates) =>
      super.copyWith((message) => updates(message as PluginExceptionProto))
          as PluginExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PluginExceptionProto create() => PluginExceptionProto._();
  PluginExceptionProto createEmptyInstance() => create();
  static $pb.PbList<PluginExceptionProto> createRepeated() =>
      $pb.PbList<PluginExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static PluginExceptionProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PluginExceptionProto>(create);
  static PluginExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

enum ResultBooleanProto_Result { success, pluginExceptionProto, notSet }

class ResultBooleanProto extends $pb.GeneratedMessage {
  factory ResultBooleanProto({
    $core.bool? success,
    PluginExceptionProto? pluginExceptionProto,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (pluginExceptionProto != null) {
      $result.pluginExceptionProto = pluginExceptionProto;
    }
    return $result;
  }
  ResultBooleanProto._() : super();
  factory ResultBooleanProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultBooleanProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultBooleanProto_Result>
      _ResultBooleanProto_ResultByTag = {
    1: ResultBooleanProto_Result.success,
    2: ResultBooleanProto_Result.pluginExceptionProto,
    0: ResultBooleanProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultBooleanProto',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOM<PluginExceptionProto>(
        2, _omitFieldNames ? '' : 'pluginExceptionProto',
        protoName: 'pluginExceptionProto',
        subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultBooleanProto clone() => ResultBooleanProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultBooleanProto copyWith(void Function(ResultBooleanProto) updates) =>
      super.copyWith((message) => updates(message as ResultBooleanProto))
          as ResultBooleanProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultBooleanProto create() => ResultBooleanProto._();
  ResultBooleanProto createEmptyInstance() => create();
  static $pb.PbList<ResultBooleanProto> createRepeated() =>
      $pb.PbList<ResultBooleanProto>();
  @$core.pragma('dart2js:noInline')
  static ResultBooleanProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultBooleanProto>(create);
  static ResultBooleanProto? _defaultInstance;

  ResultBooleanProto_Result whichResult() =>
      _ResultBooleanProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  PluginExceptionProto get pluginExceptionProto => $_getN(1);
  @$pb.TagNumber(2)
  set pluginExceptionProto(PluginExceptionProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPluginExceptionProto() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginExceptionProto() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensurePluginExceptionProto() => $_ensure(1);
}

enum ResultInt64Proto_Result { value, pluginExceptionProto, notSet }

class ResultInt64Proto extends $pb.GeneratedMessage {
  factory ResultInt64Proto({
    $fixnum.Int64? value,
    PluginExceptionProto? pluginExceptionProto,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (pluginExceptionProto != null) {
      $result.pluginExceptionProto = pluginExceptionProto;
    }
    return $result;
  }
  ResultInt64Proto._() : super();
  factory ResultInt64Proto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultInt64Proto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultInt64Proto_Result>
      _ResultInt64Proto_ResultByTag = {
    1: ResultInt64Proto_Result.value,
    2: ResultInt64Proto_Result.pluginExceptionProto,
    0: ResultInt64Proto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultInt64Proto',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aInt64(1, _omitFieldNames ? '' : 'value')
    ..aOM<PluginExceptionProto>(
        2, _omitFieldNames ? '' : 'pluginExceptionProto',
        protoName: 'pluginExceptionProto',
        subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultInt64Proto clone() => ResultInt64Proto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultInt64Proto copyWith(void Function(ResultInt64Proto) updates) =>
      super.copyWith((message) => updates(message as ResultInt64Proto))
          as ResultInt64Proto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultInt64Proto create() => ResultInt64Proto._();
  ResultInt64Proto createEmptyInstance() => create();
  static $pb.PbList<ResultInt64Proto> createRepeated() =>
      $pb.PbList<ResultInt64Proto>();
  @$core.pragma('dart2js:noInline')
  static ResultInt64Proto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultInt64Proto>(create);
  static ResultInt64Proto? _defaultInstance;

  ResultInt64Proto_Result whichResult() =>
      _ResultInt64Proto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  PluginExceptionProto get pluginExceptionProto => $_getN(1);
  @$pb.TagNumber(2)
  set pluginExceptionProto(PluginExceptionProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPluginExceptionProto() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginExceptionProto() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensurePluginExceptionProto() => $_ensure(1);
}

enum ResultRequestPermissionsStatusProto_Result {
  requestPermissionsStatusProto,
  pluginExceptionProto,
  notSet
}

class ResultRequestPermissionsStatusProto extends $pb.GeneratedMessage {
  factory ResultRequestPermissionsStatusProto({
    RequestPermissionsStatusProto? requestPermissionsStatusProto,
    PluginExceptionProto? pluginExceptionProto,
  }) {
    final $result = create();
    if (requestPermissionsStatusProto != null) {
      $result.requestPermissionsStatusProto = requestPermissionsStatusProto;
    }
    if (pluginExceptionProto != null) {
      $result.pluginExceptionProto = pluginExceptionProto;
    }
    return $result;
  }
  ResultRequestPermissionsStatusProto._() : super();
  factory ResultRequestPermissionsStatusProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultRequestPermissionsStatusProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultRequestPermissionsStatusProto_Result>
      _ResultRequestPermissionsStatusProto_ResultByTag = {
    1: ResultRequestPermissionsStatusProto_Result.requestPermissionsStatusProto,
    2: ResultRequestPermissionsStatusProto_Result.pluginExceptionProto,
    0: ResultRequestPermissionsStatusProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultRequestPermissionsStatusProto',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..e<RequestPermissionsStatusProto>(
        1,
        _omitFieldNames ? '' : 'requestPermissionsStatusProto',
        $pb.PbFieldType.OE,
        protoName: 'requestPermissionsStatusProto',
        defaultOrMaker: RequestPermissionsStatusProto.REQUEST_SENT,
        valueOf: RequestPermissionsStatusProto.valueOf,
        enumValues: RequestPermissionsStatusProto.values)
    ..aOM<PluginExceptionProto>(
        2, _omitFieldNames ? '' : 'pluginExceptionProto',
        protoName: 'pluginExceptionProto',
        subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultRequestPermissionsStatusProto clone() =>
      ResultRequestPermissionsStatusProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultRequestPermissionsStatusProto copyWith(
          void Function(ResultRequestPermissionsStatusProto) updates) =>
      super.copyWith((message) =>
              updates(message as ResultRequestPermissionsStatusProto))
          as ResultRequestPermissionsStatusProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultRequestPermissionsStatusProto create() =>
      ResultRequestPermissionsStatusProto._();
  ResultRequestPermissionsStatusProto createEmptyInstance() => create();
  static $pb.PbList<ResultRequestPermissionsStatusProto> createRepeated() =>
      $pb.PbList<ResultRequestPermissionsStatusProto>();
  @$core.pragma('dart2js:noInline')
  static ResultRequestPermissionsStatusProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ResultRequestPermissionsStatusProto>(create);
  static ResultRequestPermissionsStatusProto? _defaultInstance;

  ResultRequestPermissionsStatusProto_Result whichResult() =>
      _ResultRequestPermissionsStatusProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RequestPermissionsStatusProto get requestPermissionsStatusProto => $_getN(0);
  @$pb.TagNumber(1)
  set requestPermissionsStatusProto(RequestPermissionsStatusProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRequestPermissionsStatusProto() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestPermissionsStatusProto() => clearField(1);

  @$pb.TagNumber(2)
  PluginExceptionProto get pluginExceptionProto => $_getN(1);
  @$pb.TagNumber(2)
  set pluginExceptionProto(PluginExceptionProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPluginExceptionProto() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginExceptionProto() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensurePluginExceptionProto() => $_ensure(1);
}

enum ResultSyncStatusProto_Result {
  syncStatusProto,
  pluginExceptionProto,
  notSet
}

class ResultSyncStatusProto extends $pb.GeneratedMessage {
  factory ResultSyncStatusProto({
    SyncStatusProto? syncStatusProto,
    PluginExceptionProto? pluginExceptionProto,
  }) {
    final $result = create();
    if (syncStatusProto != null) {
      $result.syncStatusProto = syncStatusProto;
    }
    if (pluginExceptionProto != null) {
      $result.pluginExceptionProto = pluginExceptionProto;
    }
    return $result;
  }
  ResultSyncStatusProto._() : super();
  factory ResultSyncStatusProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultSyncStatusProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultSyncStatusProto_Result>
      _ResultSyncStatusProto_ResultByTag = {
    1: ResultSyncStatusProto_Result.syncStatusProto,
    2: ResultSyncStatusProto_Result.pluginExceptionProto,
    0: ResultSyncStatusProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultSyncStatusProto',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..e<SyncStatusProto>(
        1, _omitFieldNames ? '' : 'syncStatusProto', $pb.PbFieldType.OE,
        protoName: 'syncStatusProto',
        defaultOrMaker: SyncStatusProto.SYNCED,
        valueOf: SyncStatusProto.valueOf,
        enumValues: SyncStatusProto.values)
    ..aOM<PluginExceptionProto>(
        2, _omitFieldNames ? '' : 'pluginExceptionProto',
        protoName: 'pluginExceptionProto',
        subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultSyncStatusProto clone() =>
      ResultSyncStatusProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultSyncStatusProto copyWith(
          void Function(ResultSyncStatusProto) updates) =>
      super.copyWith((message) => updates(message as ResultSyncStatusProto))
          as ResultSyncStatusProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultSyncStatusProto create() => ResultSyncStatusProto._();
  ResultSyncStatusProto createEmptyInstance() => create();
  static $pb.PbList<ResultSyncStatusProto> createRepeated() =>
      $pb.PbList<ResultSyncStatusProto>();
  @$core.pragma('dart2js:noInline')
  static ResultSyncStatusProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultSyncStatusProto>(create);
  static ResultSyncStatusProto? _defaultInstance;

  ResultSyncStatusProto_Result whichResult() =>
      _ResultSyncStatusProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SyncStatusProto get syncStatusProto => $_getN(0);
  @$pb.TagNumber(1)
  set syncStatusProto(SyncStatusProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSyncStatusProto() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncStatusProto() => clearField(1);

  @$pb.TagNumber(2)
  PluginExceptionProto get pluginExceptionProto => $_getN(1);
  @$pb.TagNumber(2)
  set pluginExceptionProto(PluginExceptionProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPluginExceptionProto() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginExceptionProto() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensurePluginExceptionProto() => $_ensure(1);
}

enum ResultSyncStatusWithIntProto_Result {
  syncStatusWithIntProto,
  pluginExceptionProto,
  notSet
}

class ResultSyncStatusWithIntProto extends $pb.GeneratedMessage {
  factory ResultSyncStatusWithIntProto({
    SyncStatusWithIntProto? syncStatusWithIntProto,
    PluginExceptionProto? pluginExceptionProto,
  }) {
    final $result = create();
    if (syncStatusWithIntProto != null) {
      $result.syncStatusWithIntProto = syncStatusWithIntProto;
    }
    if (pluginExceptionProto != null) {
      $result.pluginExceptionProto = pluginExceptionProto;
    }
    return $result;
  }
  ResultSyncStatusWithIntProto._() : super();
  factory ResultSyncStatusWithIntProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultSyncStatusWithIntProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultSyncStatusWithIntProto_Result>
      _ResultSyncStatusWithIntProto_ResultByTag = {
    1: ResultSyncStatusWithIntProto_Result.syncStatusWithIntProto,
    2: ResultSyncStatusWithIntProto_Result.pluginExceptionProto,
    0: ResultSyncStatusWithIntProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultSyncStatusWithIntProto',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SyncStatusWithIntProto>(
        1, _omitFieldNames ? '' : 'syncStatusWithIntProto',
        protoName: 'syncStatusWithIntProto',
        subBuilder: SyncStatusWithIntProto.create)
    ..aOM<PluginExceptionProto>(
        2, _omitFieldNames ? '' : 'pluginExceptionProto',
        protoName: 'pluginExceptionProto',
        subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultSyncStatusWithIntProto clone() =>
      ResultSyncStatusWithIntProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultSyncStatusWithIntProto copyWith(
          void Function(ResultSyncStatusWithIntProto) updates) =>
      super.copyWith(
              (message) => updates(message as ResultSyncStatusWithIntProto))
          as ResultSyncStatusWithIntProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultSyncStatusWithIntProto create() =>
      ResultSyncStatusWithIntProto._();
  ResultSyncStatusWithIntProto createEmptyInstance() => create();
  static $pb.PbList<ResultSyncStatusWithIntProto> createRepeated() =>
      $pb.PbList<ResultSyncStatusWithIntProto>();
  @$core.pragma('dart2js:noInline')
  static ResultSyncStatusWithIntProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultSyncStatusWithIntProto>(create);
  static ResultSyncStatusWithIntProto? _defaultInstance;

  ResultSyncStatusWithIntProto_Result whichResult() =>
      _ResultSyncStatusWithIntProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SyncStatusWithIntProto get syncStatusWithIntProto => $_getN(0);
  @$pb.TagNumber(1)
  set syncStatusWithIntProto(SyncStatusWithIntProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSyncStatusWithIntProto() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncStatusWithIntProto() => clearField(1);
  @$pb.TagNumber(1)
  SyncStatusWithIntProto ensureSyncStatusWithIntProto() => $_ensure(0);

  @$pb.TagNumber(2)
  PluginExceptionProto get pluginExceptionProto => $_getN(1);
  @$pb.TagNumber(2)
  set pluginExceptionProto(PluginExceptionProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPluginExceptionProto() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginExceptionProto() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensurePluginExceptionProto() => $_ensure(1);
}

enum ResultSyncStatusWithDailyCaloriesProto_Result {
  syncStatusWithDailyCaloriesProto,
  pluginExceptionProto,
  notSet
}

class ResultSyncStatusWithDailyCaloriesProto extends $pb.GeneratedMessage {
  factory ResultSyncStatusWithDailyCaloriesProto({
    SyncStatusWithDailyCaloriesProto? syncStatusWithDailyCaloriesProto,
    PluginExceptionProto? pluginExceptionProto,
  }) {
    final $result = create();
    if (syncStatusWithDailyCaloriesProto != null) {
      $result.syncStatusWithDailyCaloriesProto =
          syncStatusWithDailyCaloriesProto;
    }
    if (pluginExceptionProto != null) {
      $result.pluginExceptionProto = pluginExceptionProto;
    }
    return $result;
  }
  ResultSyncStatusWithDailyCaloriesProto._() : super();
  factory ResultSyncStatusWithDailyCaloriesProto.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultSyncStatusWithDailyCaloriesProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core
      .Map<$core.int, ResultSyncStatusWithDailyCaloriesProto_Result>
      _ResultSyncStatusWithDailyCaloriesProto_ResultByTag = {
    1: ResultSyncStatusWithDailyCaloriesProto_Result
        .syncStatusWithDailyCaloriesProto,
    2: ResultSyncStatusWithDailyCaloriesProto_Result.pluginExceptionProto,
    0: ResultSyncStatusWithDailyCaloriesProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultSyncStatusWithDailyCaloriesProto',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SyncStatusWithDailyCaloriesProto>(
        1, _omitFieldNames ? '' : 'syncStatusWithDailyCaloriesProto',
        protoName: 'syncStatusWithDailyCaloriesProto',
        subBuilder: SyncStatusWithDailyCaloriesProto.create)
    ..aOM<PluginExceptionProto>(
        2, _omitFieldNames ? '' : 'pluginExceptionProto',
        protoName: 'pluginExceptionProto',
        subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultSyncStatusWithDailyCaloriesProto clone() =>
      ResultSyncStatusWithDailyCaloriesProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultSyncStatusWithDailyCaloriesProto copyWith(
          void Function(ResultSyncStatusWithDailyCaloriesProto) updates) =>
      super.copyWith((message) =>
              updates(message as ResultSyncStatusWithDailyCaloriesProto))
          as ResultSyncStatusWithDailyCaloriesProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultSyncStatusWithDailyCaloriesProto create() =>
      ResultSyncStatusWithDailyCaloriesProto._();
  ResultSyncStatusWithDailyCaloriesProto createEmptyInstance() => create();
  static $pb.PbList<ResultSyncStatusWithDailyCaloriesProto> createRepeated() =>
      $pb.PbList<ResultSyncStatusWithDailyCaloriesProto>();
  @$core.pragma('dart2js:noInline')
  static ResultSyncStatusWithDailyCaloriesProto getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ResultSyncStatusWithDailyCaloriesProto>(create);
  static ResultSyncStatusWithDailyCaloriesProto? _defaultInstance;

  ResultSyncStatusWithDailyCaloriesProto_Result whichResult() =>
      _ResultSyncStatusWithDailyCaloriesProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SyncStatusWithDailyCaloriesProto get syncStatusWithDailyCaloriesProto =>
      $_getN(0);
  @$pb.TagNumber(1)
  set syncStatusWithDailyCaloriesProto(SyncStatusWithDailyCaloriesProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSyncStatusWithDailyCaloriesProto() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncStatusWithDailyCaloriesProto() => clearField(1);
  @$pb.TagNumber(1)
  SyncStatusWithDailyCaloriesProto ensureSyncStatusWithDailyCaloriesProto() =>
      $_ensure(0);

  @$pb.TagNumber(2)
  PluginExceptionProto get pluginExceptionProto => $_getN(1);
  @$pb.TagNumber(2)
  set pluginExceptionProto(PluginExceptionProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPluginExceptionProto() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginExceptionProto() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensurePluginExceptionProto() => $_ensure(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
