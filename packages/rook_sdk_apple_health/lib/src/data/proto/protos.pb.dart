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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'protos.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'protos.pbenum.dart';

class SDKExceptionProto extends $pb.GeneratedMessage {
  factory SDKExceptionProto({
    $core.int? code,
    $core.String? message,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    return result;
  }

  SDKExceptionProto._();

  factory SDKExceptionProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SDKExceptionProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SDKExceptionProto', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OS3)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SDKExceptionProto clone() => SDKExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SDKExceptionProto copyWith(void Function(SDKExceptionProto) updates) => super.copyWith((message) => updates(message as SDKExceptionProto)) as SDKExceptionProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SDKExceptionProto create() => SDKExceptionProto._();
  @$core.override
  SDKExceptionProto createEmptyInstance() => create();
  static $pb.PbList<SDKExceptionProto> createRepeated() => $pb.PbList<SDKExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static SDKExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SDKExceptionProto>(create);
  static SDKExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

enum BooleanResultProto_Result {
  success, 
  failure, 
  notSet
}

class BooleanResultProto extends $pb.GeneratedMessage {
  factory BooleanResultProto({
    $core.bool? success,
    SDKExceptionProto? failure,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (failure != null) result.failure = failure;
    return result;
  }

  BooleanResultProto._();

  factory BooleanResultProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory BooleanResultProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BooleanResultProto_Result> _BooleanResultProto_ResultByTag = {
    1 : BooleanResultProto_Result.success,
    2 : BooleanResultProto_Result.failure,
    0 : BooleanResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BooleanResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOM<SDKExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: SDKExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BooleanResultProto clone() => BooleanResultProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BooleanResultProto copyWith(void Function(BooleanResultProto) updates) => super.copyWith((message) => updates(message as BooleanResultProto)) as BooleanResultProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BooleanResultProto create() => BooleanResultProto._();
  @$core.override
  BooleanResultProto createEmptyInstance() => create();
  static $pb.PbList<BooleanResultProto> createRepeated() => $pb.PbList<BooleanResultProto>();
  @$core.pragma('dart2js:noInline')
  static BooleanResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BooleanResultProto>(create);
  static BooleanResultProto? _defaultInstance;

  BooleanResultProto_Result whichResult() => _BooleanResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  SDKExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(SDKExceptionProto value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => $_clearField(2);
  @$pb.TagNumber(2)
  SDKExceptionProto ensureFailure() => $_ensure(1);
}

enum Int64ResultProto_Result {
  success, 
  failure, 
  notSet
}

class Int64ResultProto extends $pb.GeneratedMessage {
  factory Int64ResultProto({
    $fixnum.Int64? success,
    SDKExceptionProto? failure,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (failure != null) result.failure = failure;
    return result;
  }

  Int64ResultProto._();

  factory Int64ResultProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Int64ResultProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Int64ResultProto_Result> _Int64ResultProto_ResultByTag = {
    1 : Int64ResultProto_Result.success,
    2 : Int64ResultProto_Result.failure,
    0 : Int64ResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Int64ResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aInt64(1, _omitFieldNames ? '' : 'success')
    ..aOM<SDKExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: SDKExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64ResultProto clone() => Int64ResultProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64ResultProto copyWith(void Function(Int64ResultProto) updates) => super.copyWith((message) => updates(message as Int64ResultProto)) as Int64ResultProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64ResultProto create() => Int64ResultProto._();
  @$core.override
  Int64ResultProto createEmptyInstance() => create();
  static $pb.PbList<Int64ResultProto> createRepeated() => $pb.PbList<Int64ResultProto>();
  @$core.pragma('dart2js:noInline')
  static Int64ResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64ResultProto>(create);
  static Int64ResultProto? _defaultInstance;

  Int64ResultProto_Result whichResult() => _Int64ResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get success => $_getI64(0);
  @$pb.TagNumber(1)
  set success($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  SDKExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(SDKExceptionProto value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => $_clearField(2);
  @$pb.TagNumber(2)
  SDKExceptionProto ensureFailure() => $_ensure(1);
}

class ConfigurationProto extends $pb.GeneratedMessage {
  factory ConfigurationProto({
    $core.String? clientUUID,
    $core.String? secret,
    EnvironmentProto? environment,
    $core.bool? enableBackgroundSync,
    $core.String? appId,
  }) {
    final result = create();
    if (clientUUID != null) result.clientUUID = clientUUID;
    if (secret != null) result.secret = secret;
    if (environment != null) result.environment = environment;
    if (enableBackgroundSync != null) result.enableBackgroundSync = enableBackgroundSync;
    if (appId != null) result.appId = appId;
    return result;
  }

  ConfigurationProto._();

  factory ConfigurationProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ConfigurationProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConfigurationProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'clientUUID', protoName: 'clientUUID')
    ..aOS(2, _omitFieldNames ? '' : 'secret')
    ..e<EnvironmentProto>(3, _omitFieldNames ? '' : 'environment', $pb.PbFieldType.OE, defaultOrMaker: EnvironmentProto.SANDBOX, valueOf: EnvironmentProto.valueOf, enumValues: EnvironmentProto.values)
    ..aOB(4, _omitFieldNames ? '' : 'enableBackgroundSync', protoName: 'enableBackgroundSync')
    ..aOS(5, _omitFieldNames ? '' : 'appId', protoName: 'appId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigurationProto clone() => ConfigurationProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigurationProto copyWith(void Function(ConfigurationProto) updates) => super.copyWith((message) => updates(message as ConfigurationProto)) as ConfigurationProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigurationProto create() => ConfigurationProto._();
  @$core.override
  ConfigurationProto createEmptyInstance() => create();
  static $pb.PbList<ConfigurationProto> createRepeated() => $pb.PbList<ConfigurationProto>();
  @$core.pragma('dart2js:noInline')
  static ConfigurationProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfigurationProto>(create);
  static ConfigurationProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientUUID => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientUUID($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClientUUID() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientUUID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get secret => $_getSZ(1);
  @$pb.TagNumber(2)
  set secret($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecret() => $_clearField(2);

  @$pb.TagNumber(3)
  EnvironmentProto get environment => $_getN(2);
  @$pb.TagNumber(3)
  set environment(EnvironmentProto value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEnvironment() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnvironment() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get enableBackgroundSync => $_getBF(3);
  @$pb.TagNumber(4)
  set enableBackgroundSync($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEnableBackgroundSync() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnableBackgroundSync() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get appId => $_getSZ(4);
  @$pb.TagNumber(5)
  set appId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAppId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppId() => $_clearField(5);
}

class DiagnosticSyncStateProto extends $pb.GeneratedMessage {
  factory DiagnosticSyncStateProto({
    $core.bool? enabled,
    $core.String? lastSync,
  }) {
    final result = create();
    if (enabled != null) result.enabled = enabled;
    if (lastSync != null) result.lastSync = lastSync;
    return result;
  }

  DiagnosticSyncStateProto._();

  factory DiagnosticSyncStateProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DiagnosticSyncStateProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DiagnosticSyncStateProto', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..aOS(2, _omitFieldNames ? '' : 'lastSync', protoName: 'lastSync')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiagnosticSyncStateProto clone() => DiagnosticSyncStateProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiagnosticSyncStateProto copyWith(void Function(DiagnosticSyncStateProto) updates) => super.copyWith((message) => updates(message as DiagnosticSyncStateProto)) as DiagnosticSyncStateProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DiagnosticSyncStateProto create() => DiagnosticSyncStateProto._();
  @$core.override
  DiagnosticSyncStateProto createEmptyInstance() => create();
  static $pb.PbList<DiagnosticSyncStateProto> createRepeated() => $pb.PbList<DiagnosticSyncStateProto>();
  @$core.pragma('dart2js:noInline')
  static DiagnosticSyncStateProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiagnosticSyncStateProto>(create);
  static DiagnosticSyncStateProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastSync => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastSync($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLastSync() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastSync() => $_clearField(2);
}

class DiagnosticStateProto extends $pb.GeneratedMessage {
  factory DiagnosticStateProto({
    $core.bool? isConfigured,
    $core.bool? userIdentified,
    DiagnosticStatePermissionsProto? permissions,
    DiagnosticSyncStateProto? backgroundSync,
    DiagnosticSyncStateProto? manualSync,
  }) {
    final result = create();
    if (isConfigured != null) result.isConfigured = isConfigured;
    if (userIdentified != null) result.userIdentified = userIdentified;
    if (permissions != null) result.permissions = permissions;
    if (backgroundSync != null) result.backgroundSync = backgroundSync;
    if (manualSync != null) result.manualSync = manualSync;
    return result;
  }

  DiagnosticStateProto._();

  factory DiagnosticStateProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DiagnosticStateProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DiagnosticStateProto', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isConfigured', protoName: 'isConfigured')
    ..aOB(2, _omitFieldNames ? '' : 'userIdentified', protoName: 'userIdentified')
    ..e<DiagnosticStatePermissionsProto>(3, _omitFieldNames ? '' : 'permissions', $pb.PbFieldType.OE, defaultOrMaker: DiagnosticStatePermissionsProto.NOT_REQUESTED, valueOf: DiagnosticStatePermissionsProto.valueOf, enumValues: DiagnosticStatePermissionsProto.values)
    ..aOM<DiagnosticSyncStateProto>(4, _omitFieldNames ? '' : 'backgroundSync', protoName: 'backgroundSync', subBuilder: DiagnosticSyncStateProto.create)
    ..aOM<DiagnosticSyncStateProto>(5, _omitFieldNames ? '' : 'manualSync', protoName: 'manualSync', subBuilder: DiagnosticSyncStateProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiagnosticStateProto clone() => DiagnosticStateProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiagnosticStateProto copyWith(void Function(DiagnosticStateProto) updates) => super.copyWith((message) => updates(message as DiagnosticStateProto)) as DiagnosticStateProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DiagnosticStateProto create() => DiagnosticStateProto._();
  @$core.override
  DiagnosticStateProto createEmptyInstance() => create();
  static $pb.PbList<DiagnosticStateProto> createRepeated() => $pb.PbList<DiagnosticStateProto>();
  @$core.pragma('dart2js:noInline')
  static DiagnosticStateProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiagnosticStateProto>(create);
  static DiagnosticStateProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isConfigured => $_getBF(0);
  @$pb.TagNumber(1)
  set isConfigured($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsConfigured() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsConfigured() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get userIdentified => $_getBF(1);
  @$pb.TagNumber(2)
  set userIdentified($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserIdentified() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserIdentified() => $_clearField(2);

  @$pb.TagNumber(3)
  DiagnosticStatePermissionsProto get permissions => $_getN(2);
  @$pb.TagNumber(3)
  set permissions(DiagnosticStatePermissionsProto value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPermissions() => $_has(2);
  @$pb.TagNumber(3)
  void clearPermissions() => $_clearField(3);

  @$pb.TagNumber(4)
  DiagnosticSyncStateProto get backgroundSync => $_getN(3);
  @$pb.TagNumber(4)
  set backgroundSync(DiagnosticSyncStateProto value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasBackgroundSync() => $_has(3);
  @$pb.TagNumber(4)
  void clearBackgroundSync() => $_clearField(4);
  @$pb.TagNumber(4)
  DiagnosticSyncStateProto ensureBackgroundSync() => $_ensure(3);

  @$pb.TagNumber(5)
  DiagnosticSyncStateProto get manualSync => $_getN(4);
  @$pb.TagNumber(5)
  set manualSync(DiagnosticSyncStateProto value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasManualSync() => $_has(4);
  @$pb.TagNumber(5)
  void clearManualSync() => $_clearField(5);
  @$pb.TagNumber(5)
  DiagnosticSyncStateProto ensureManualSync() => $_ensure(4);
}

enum DiagnosticStateResultProto_Result {
  success, 
  failure, 
  notSet
}

class DiagnosticStateResultProto extends $pb.GeneratedMessage {
  factory DiagnosticStateResultProto({
    DiagnosticStateProto? success,
    SDKExceptionProto? failure,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (failure != null) result.failure = failure;
    return result;
  }

  DiagnosticStateResultProto._();

  factory DiagnosticStateResultProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DiagnosticStateResultProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, DiagnosticStateResultProto_Result> _DiagnosticStateResultProto_ResultByTag = {
    1 : DiagnosticStateResultProto_Result.success,
    2 : DiagnosticStateResultProto_Result.failure,
    0 : DiagnosticStateResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DiagnosticStateResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<DiagnosticStateProto>(1, _omitFieldNames ? '' : 'success', subBuilder: DiagnosticStateProto.create)
    ..aOM<SDKExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: SDKExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiagnosticStateResultProto clone() => DiagnosticStateResultProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiagnosticStateResultProto copyWith(void Function(DiagnosticStateResultProto) updates) => super.copyWith((message) => updates(message as DiagnosticStateResultProto)) as DiagnosticStateResultProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DiagnosticStateResultProto create() => DiagnosticStateResultProto._();
  @$core.override
  DiagnosticStateResultProto createEmptyInstance() => create();
  static $pb.PbList<DiagnosticStateResultProto> createRepeated() => $pb.PbList<DiagnosticStateResultProto>();
  @$core.pragma('dart2js:noInline')
  static DiagnosticStateResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiagnosticStateResultProto>(create);
  static DiagnosticStateResultProto? _defaultInstance;

  DiagnosticStateResultProto_Result whichResult() => _DiagnosticStateResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DiagnosticStateProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(DiagnosticStateProto value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
  @$pb.TagNumber(1)
  DiagnosticStateProto ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  SDKExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(SDKExceptionProto value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => $_clearField(2);
  @$pb.TagNumber(2)
  SDKExceptionProto ensureFailure() => $_ensure(1);
}

class CaloriesProto extends $pb.GeneratedMessage {
  factory CaloriesProto({
    $core.double? basal,
    $core.double? active,
  }) {
    final result = create();
    if (basal != null) result.basal = basal;
    if (active != null) result.active = active;
    return result;
  }

  CaloriesProto._();

  factory CaloriesProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CaloriesProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CaloriesProto', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'basal', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'active', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CaloriesProto clone() => CaloriesProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CaloriesProto copyWith(void Function(CaloriesProto) updates) => super.copyWith((message) => updates(message as CaloriesProto)) as CaloriesProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CaloriesProto create() => CaloriesProto._();
  @$core.override
  CaloriesProto createEmptyInstance() => create();
  static $pb.PbList<CaloriesProto> createRepeated() => $pb.PbList<CaloriesProto>();
  @$core.pragma('dart2js:noInline')
  static CaloriesProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaloriesProto>(create);
  static CaloriesProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get basal => $_getN(0);
  @$pb.TagNumber(1)
  set basal($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBasal() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasal() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get active => $_getN(1);
  @$pb.TagNumber(2)
  set active($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasActive() => $_has(1);
  @$pb.TagNumber(2)
  void clearActive() => $_clearField(2);
}

enum CaloriesResultProto_Result {
  success, 
  failure, 
  notSet
}

class CaloriesResultProto extends $pb.GeneratedMessage {
  factory CaloriesResultProto({
    CaloriesProto? success,
    SDKExceptionProto? failure,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (failure != null) result.failure = failure;
    return result;
  }

  CaloriesResultProto._();

  factory CaloriesResultProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CaloriesResultProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CaloriesResultProto_Result> _CaloriesResultProto_ResultByTag = {
    1 : CaloriesResultProto_Result.success,
    2 : CaloriesResultProto_Result.failure,
    0 : CaloriesResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CaloriesResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<CaloriesProto>(1, _omitFieldNames ? '' : 'success', subBuilder: CaloriesProto.create)
    ..aOM<SDKExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: SDKExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CaloriesResultProto clone() => CaloriesResultProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CaloriesResultProto copyWith(void Function(CaloriesResultProto) updates) => super.copyWith((message) => updates(message as CaloriesResultProto)) as CaloriesResultProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CaloriesResultProto create() => CaloriesResultProto._();
  @$core.override
  CaloriesResultProto createEmptyInstance() => create();
  static $pb.PbList<CaloriesResultProto> createRepeated() => $pb.PbList<CaloriesResultProto>();
  @$core.pragma('dart2js:noInline')
  static CaloriesResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaloriesResultProto>(create);
  static CaloriesResultProto? _defaultInstance;

  CaloriesResultProto_Result whichResult() => _CaloriesResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CaloriesProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(CaloriesProto value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
  @$pb.TagNumber(1)
  CaloriesProto ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  SDKExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(SDKExceptionProto value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => $_clearField(2);
  @$pb.TagNumber(2)
  SDKExceptionProto ensureFailure() => $_ensure(1);
}

class HearRateProto extends $pb.GeneratedMessage {
  factory HearRateProto({
    $core.int? hrMaximumBpm,
    $core.int? hrMinimumBpm,
    $core.int? hrAvgBpm,
    $core.int? hrRestingBpm,
    $core.Iterable<HrGranularDataProto>? hrGranularData,
    $core.double? hrvAvgRmssd,
    $core.double? hrvAvgSdnn,
    $core.Iterable<HrvSdnnGranularDataProto>? hrvSdnnGranularData,
    $core.Iterable<HrvRmssdGranularDataProto>? hrvRmssdGranularData,
  }) {
    final result = create();
    if (hrMaximumBpm != null) result.hrMaximumBpm = hrMaximumBpm;
    if (hrMinimumBpm != null) result.hrMinimumBpm = hrMinimumBpm;
    if (hrAvgBpm != null) result.hrAvgBpm = hrAvgBpm;
    if (hrRestingBpm != null) result.hrRestingBpm = hrRestingBpm;
    if (hrGranularData != null) result.hrGranularData.addAll(hrGranularData);
    if (hrvAvgRmssd != null) result.hrvAvgRmssd = hrvAvgRmssd;
    if (hrvAvgSdnn != null) result.hrvAvgSdnn = hrvAvgSdnn;
    if (hrvSdnnGranularData != null) result.hrvSdnnGranularData.addAll(hrvSdnnGranularData);
    if (hrvRmssdGranularData != null) result.hrvRmssdGranularData.addAll(hrvRmssdGranularData);
    return result;
  }

  HearRateProto._();

  factory HearRateProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory HearRateProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HearRateProto', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'hrMaximumBpm', $pb.PbFieldType.OS3, protoName: 'hrMaximumBpm')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'hrMinimumBpm', $pb.PbFieldType.OS3, protoName: 'hrMinimumBpm')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'hrAvgBpm', $pb.PbFieldType.OS3, protoName: 'hrAvgBpm')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'hrRestingBpm', $pb.PbFieldType.OS3, protoName: 'hrRestingBpm')
    ..pc<HrGranularDataProto>(5, _omitFieldNames ? '' : 'hrGranularData', $pb.PbFieldType.PM, protoName: 'hrGranularData', subBuilder: HrGranularDataProto.create)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'hrvAvgRmssd', $pb.PbFieldType.OD, protoName: 'hrvAvgRmssd')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'hrvAvgSdnn', $pb.PbFieldType.OD, protoName: 'hrvAvgSdnn')
    ..pc<HrvSdnnGranularDataProto>(8, _omitFieldNames ? '' : 'hrvSdnnGranularData', $pb.PbFieldType.PM, protoName: 'hrvSdnnGranularData', subBuilder: HrvSdnnGranularDataProto.create)
    ..pc<HrvRmssdGranularDataProto>(9, _omitFieldNames ? '' : 'hrvRmssdGranularData', $pb.PbFieldType.PM, protoName: 'hrvRmssdGranularData', subBuilder: HrvRmssdGranularDataProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HearRateProto clone() => HearRateProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HearRateProto copyWith(void Function(HearRateProto) updates) => super.copyWith((message) => updates(message as HearRateProto)) as HearRateProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HearRateProto create() => HearRateProto._();
  @$core.override
  HearRateProto createEmptyInstance() => create();
  static $pb.PbList<HearRateProto> createRepeated() => $pb.PbList<HearRateProto>();
  @$core.pragma('dart2js:noInline')
  static HearRateProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HearRateProto>(create);
  static HearRateProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get hrMaximumBpm => $_getIZ(0);
  @$pb.TagNumber(1)
  set hrMaximumBpm($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHrMaximumBpm() => $_has(0);
  @$pb.TagNumber(1)
  void clearHrMaximumBpm() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get hrMinimumBpm => $_getIZ(1);
  @$pb.TagNumber(2)
  set hrMinimumBpm($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHrMinimumBpm() => $_has(1);
  @$pb.TagNumber(2)
  void clearHrMinimumBpm() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get hrAvgBpm => $_getIZ(2);
  @$pb.TagNumber(3)
  set hrAvgBpm($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHrAvgBpm() => $_has(2);
  @$pb.TagNumber(3)
  void clearHrAvgBpm() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get hrRestingBpm => $_getIZ(3);
  @$pb.TagNumber(4)
  set hrRestingBpm($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHrRestingBpm() => $_has(3);
  @$pb.TagNumber(4)
  void clearHrRestingBpm() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<HrGranularDataProto> get hrGranularData => $_getList(4);

  @$pb.TagNumber(6)
  $core.double get hrvAvgRmssd => $_getN(5);
  @$pb.TagNumber(6)
  set hrvAvgRmssd($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHrvAvgRmssd() => $_has(5);
  @$pb.TagNumber(6)
  void clearHrvAvgRmssd() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get hrvAvgSdnn => $_getN(6);
  @$pb.TagNumber(7)
  set hrvAvgSdnn($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHrvAvgSdnn() => $_has(6);
  @$pb.TagNumber(7)
  void clearHrvAvgSdnn() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<HrvSdnnGranularDataProto> get hrvSdnnGranularData => $_getList(7);

  @$pb.TagNumber(9)
  $pb.PbList<HrvRmssdGranularDataProto> get hrvRmssdGranularData => $_getList(8);
}

enum HearRateResultProto_Result {
  success, 
  failure, 
  notSet
}

class HearRateResultProto extends $pb.GeneratedMessage {
  factory HearRateResultProto({
    HearRateProto? success,
    SDKExceptionProto? failure,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (failure != null) result.failure = failure;
    return result;
  }

  HearRateResultProto._();

  factory HearRateResultProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory HearRateResultProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, HearRateResultProto_Result> _HearRateResultProto_ResultByTag = {
    1 : HearRateResultProto_Result.success,
    2 : HearRateResultProto_Result.failure,
    0 : HearRateResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HearRateResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<HearRateProto>(1, _omitFieldNames ? '' : 'success', subBuilder: HearRateProto.create)
    ..aOM<SDKExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: SDKExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HearRateResultProto clone() => HearRateResultProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HearRateResultProto copyWith(void Function(HearRateResultProto) updates) => super.copyWith((message) => updates(message as HearRateResultProto)) as HearRateResultProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HearRateResultProto create() => HearRateResultProto._();
  @$core.override
  HearRateResultProto createEmptyInstance() => create();
  static $pb.PbList<HearRateResultProto> createRepeated() => $pb.PbList<HearRateResultProto>();
  @$core.pragma('dart2js:noInline')
  static HearRateResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HearRateResultProto>(create);
  static HearRateResultProto? _defaultInstance;

  HearRateResultProto_Result whichResult() => _HearRateResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  HearRateProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(HearRateProto value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
  @$pb.TagNumber(1)
  HearRateProto ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  SDKExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(SDKExceptionProto value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => $_clearField(2);
  @$pb.TagNumber(2)
  SDKExceptionProto ensureFailure() => $_ensure(1);
}

class SleepSummaryProto extends $pb.GeneratedMessage {
  factory SleepSummaryProto({
    $core.String? dateTime,
    $core.String? sourceOfData,
    $core.bool? wasTheUserUnderPhysicalActivity,
    $core.String? sleepStartDateTime,
    $core.String? sleepEndDateTime,
    $core.String? sleepDate,
    $core.int? sleepDurationSeconds,
    $core.int? timeInBedSeconds,
    $core.int? lightSleepDurationSeconds,
    $core.int? remSleepDurationSeconds,
    $core.int? deepSleepDurationSeconds,
    $core.int? timeToFallAsleepSeconds,
    $core.int? timeAwakeDuringSleepSeconds,
    $core.int? sleepQualityRating1To5Score,
    $core.int? sleepEfficiency1To100Score,
    $core.int? sleepGoalSeconds,
    $core.int? sleepContinuity1To5Score,
    $core.int? sleepContinuity1To5Rating,
    $core.int? hrMaximumBpm,
    $core.int? hrMinimumBpm,
    $core.int? hrAvgBpm,
    $core.int? hrRestingBpm,
    $core.int? hrBasalBpm,
    $core.Iterable<HrGranularDataProto>? hrGranularData,
    $core.double? hrvAvgRmssd,
    $core.double? hrvAvgSdnn,
    $core.Iterable<HrvSdnnGranularDataProto>? hrvSdnnGranularData,
    $core.Iterable<HrvRmssdGranularDataProto>? hrvRmssdGranularData,
    $core.Iterable<TemperatureObjectProto>? temperatureMinimum,
    $core.Iterable<TemperatureObjectProto>? temperatureAvg,
    $core.Iterable<TemperatureObjectProto>? temperatureMaximum,
    $core.Iterable<TemperatureGranularDataProto>? temperatureGranularData,
    $core.Iterable<TemperatureObjectProto>? temperatureDelta,
    $core.double? breathsMinimumPerMin,
    $core.double? breathsAvgPerMin,
    $core.double? breathsMaximumPerMin,
    $core.Iterable<BreathingGranularDataProto>? breathingGranularData,
    $core.int? snoringEventsCount,
    $core.int? snoringDurationTotalSeconds,
    $core.Iterable<SnoringGranularDataProto>? snoringGranularData,
    $core.double? saturationAvgPercentage,
    $core.double? saturationMinimumPercentage,
    $core.double? saturationMaximumPercentage,
    $core.Iterable<SaturationGranularDataProto>? saturationGranularData,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (sourceOfData != null) result.sourceOfData = sourceOfData;
    if (wasTheUserUnderPhysicalActivity != null) result.wasTheUserUnderPhysicalActivity = wasTheUserUnderPhysicalActivity;
    if (sleepStartDateTime != null) result.sleepStartDateTime = sleepStartDateTime;
    if (sleepEndDateTime != null) result.sleepEndDateTime = sleepEndDateTime;
    if (sleepDate != null) result.sleepDate = sleepDate;
    if (sleepDurationSeconds != null) result.sleepDurationSeconds = sleepDurationSeconds;
    if (timeInBedSeconds != null) result.timeInBedSeconds = timeInBedSeconds;
    if (lightSleepDurationSeconds != null) result.lightSleepDurationSeconds = lightSleepDurationSeconds;
    if (remSleepDurationSeconds != null) result.remSleepDurationSeconds = remSleepDurationSeconds;
    if (deepSleepDurationSeconds != null) result.deepSleepDurationSeconds = deepSleepDurationSeconds;
    if (timeToFallAsleepSeconds != null) result.timeToFallAsleepSeconds = timeToFallAsleepSeconds;
    if (timeAwakeDuringSleepSeconds != null) result.timeAwakeDuringSleepSeconds = timeAwakeDuringSleepSeconds;
    if (sleepQualityRating1To5Score != null) result.sleepQualityRating1To5Score = sleepQualityRating1To5Score;
    if (sleepEfficiency1To100Score != null) result.sleepEfficiency1To100Score = sleepEfficiency1To100Score;
    if (sleepGoalSeconds != null) result.sleepGoalSeconds = sleepGoalSeconds;
    if (sleepContinuity1To5Score != null) result.sleepContinuity1To5Score = sleepContinuity1To5Score;
    if (sleepContinuity1To5Rating != null) result.sleepContinuity1To5Rating = sleepContinuity1To5Rating;
    if (hrMaximumBpm != null) result.hrMaximumBpm = hrMaximumBpm;
    if (hrMinimumBpm != null) result.hrMinimumBpm = hrMinimumBpm;
    if (hrAvgBpm != null) result.hrAvgBpm = hrAvgBpm;
    if (hrRestingBpm != null) result.hrRestingBpm = hrRestingBpm;
    if (hrBasalBpm != null) result.hrBasalBpm = hrBasalBpm;
    if (hrGranularData != null) result.hrGranularData.addAll(hrGranularData);
    if (hrvAvgRmssd != null) result.hrvAvgRmssd = hrvAvgRmssd;
    if (hrvAvgSdnn != null) result.hrvAvgSdnn = hrvAvgSdnn;
    if (hrvSdnnGranularData != null) result.hrvSdnnGranularData.addAll(hrvSdnnGranularData);
    if (hrvRmssdGranularData != null) result.hrvRmssdGranularData.addAll(hrvRmssdGranularData);
    if (temperatureMinimum != null) result.temperatureMinimum.addAll(temperatureMinimum);
    if (temperatureAvg != null) result.temperatureAvg.addAll(temperatureAvg);
    if (temperatureMaximum != null) result.temperatureMaximum.addAll(temperatureMaximum);
    if (temperatureGranularData != null) result.temperatureGranularData.addAll(temperatureGranularData);
    if (temperatureDelta != null) result.temperatureDelta.addAll(temperatureDelta);
    if (breathsMinimumPerMin != null) result.breathsMinimumPerMin = breathsMinimumPerMin;
    if (breathsAvgPerMin != null) result.breathsAvgPerMin = breathsAvgPerMin;
    if (breathsMaximumPerMin != null) result.breathsMaximumPerMin = breathsMaximumPerMin;
    if (breathingGranularData != null) result.breathingGranularData.addAll(breathingGranularData);
    if (snoringEventsCount != null) result.snoringEventsCount = snoringEventsCount;
    if (snoringDurationTotalSeconds != null) result.snoringDurationTotalSeconds = snoringDurationTotalSeconds;
    if (snoringGranularData != null) result.snoringGranularData.addAll(snoringGranularData);
    if (saturationAvgPercentage != null) result.saturationAvgPercentage = saturationAvgPercentage;
    if (saturationMinimumPercentage != null) result.saturationMinimumPercentage = saturationMinimumPercentage;
    if (saturationMaximumPercentage != null) result.saturationMaximumPercentage = saturationMaximumPercentage;
    if (saturationGranularData != null) result.saturationGranularData.addAll(saturationGranularData);
    return result;
  }

  SleepSummaryProto._();

  factory SleepSummaryProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SleepSummaryProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SleepSummaryProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..aOS(2, _omitFieldNames ? '' : 'sourceOfData', protoName: 'sourceOfData')
    ..aOB(3, _omitFieldNames ? '' : 'wasTheUserUnderPhysicalActivity', protoName: 'wasTheUserUnderPhysicalActivity')
    ..aOS(4, _omitFieldNames ? '' : 'sleepStartDateTime', protoName: 'sleepStartDateTime')
    ..aOS(5, _omitFieldNames ? '' : 'sleepEndDateTime', protoName: 'sleepEndDateTime')
    ..aOS(6, _omitFieldNames ? '' : 'sleepDate', protoName: 'sleepDate')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'sleepDurationSeconds', $pb.PbFieldType.OS3, protoName: 'sleepDurationSeconds')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'timeInBedSeconds', $pb.PbFieldType.OS3, protoName: 'timeInBedSeconds')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'lightSleepDurationSeconds', $pb.PbFieldType.OS3, protoName: 'lightSleepDurationSeconds')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'remSleepDurationSeconds', $pb.PbFieldType.OS3, protoName: 'remSleepDurationSeconds')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'deepSleepDurationSeconds', $pb.PbFieldType.OS3, protoName: 'deepSleepDurationSeconds')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'timeToFallAsleepSeconds', $pb.PbFieldType.OS3, protoName: 'timeToFallAsleepSeconds')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'timeAwakeDuringSleepSeconds', $pb.PbFieldType.OS3, protoName: 'timeAwakeDuringSleepSeconds')
    ..a<$core.int>(14, _omitFieldNames ? '' : 'sleepQualityRating1To5Score', $pb.PbFieldType.OS3, protoName: 'sleepQualityRating1To5Score')
    ..a<$core.int>(15, _omitFieldNames ? '' : 'sleepEfficiency1To100Score', $pb.PbFieldType.OS3, protoName: 'sleepEfficiency1To100Score')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'sleepGoalSeconds', $pb.PbFieldType.OS3, protoName: 'sleepGoalSeconds')
    ..a<$core.int>(17, _omitFieldNames ? '' : 'sleepContinuity1To5Score', $pb.PbFieldType.OS3, protoName: 'sleepContinuity1To5Score')
    ..a<$core.int>(18, _omitFieldNames ? '' : 'sleepContinuity1To5Rating', $pb.PbFieldType.OS3, protoName: 'sleepContinuity1To5Rating')
    ..a<$core.int>(19, _omitFieldNames ? '' : 'hrMaximumBpm', $pb.PbFieldType.OS3, protoName: 'hrMaximumBpm')
    ..a<$core.int>(20, _omitFieldNames ? '' : 'hrMinimumBpm', $pb.PbFieldType.OS3, protoName: 'hrMinimumBpm')
    ..a<$core.int>(21, _omitFieldNames ? '' : 'hrAvgBpm', $pb.PbFieldType.OS3, protoName: 'hrAvgBpm')
    ..a<$core.int>(22, _omitFieldNames ? '' : 'hrRestingBpm', $pb.PbFieldType.OS3, protoName: 'hrRestingBpm')
    ..a<$core.int>(23, _omitFieldNames ? '' : 'hrBasalBpm', $pb.PbFieldType.OS3, protoName: 'hrBasalBpm')
    ..pc<HrGranularDataProto>(24, _omitFieldNames ? '' : 'hrGranularData', $pb.PbFieldType.PM, protoName: 'hrGranularData', subBuilder: HrGranularDataProto.create)
    ..a<$core.double>(25, _omitFieldNames ? '' : 'hrvAvgRmssd', $pb.PbFieldType.OD, protoName: 'hrvAvgRmssd')
    ..a<$core.double>(26, _omitFieldNames ? '' : 'hrvAvgSdnn', $pb.PbFieldType.OD, protoName: 'hrvAvgSdnn')
    ..pc<HrvSdnnGranularDataProto>(27, _omitFieldNames ? '' : 'hrvSdnnGranularData', $pb.PbFieldType.PM, protoName: 'hrvSdnnGranularData', subBuilder: HrvSdnnGranularDataProto.create)
    ..pc<HrvRmssdGranularDataProto>(28, _omitFieldNames ? '' : 'hrvRmssdGranularData', $pb.PbFieldType.PM, protoName: 'hrvRmssdGranularData', subBuilder: HrvRmssdGranularDataProto.create)
    ..pc<TemperatureObjectProto>(29, _omitFieldNames ? '' : 'temperatureMinimum', $pb.PbFieldType.PM, protoName: 'temperatureMinimum', subBuilder: TemperatureObjectProto.create)
    ..pc<TemperatureObjectProto>(30, _omitFieldNames ? '' : 'temperatureAvg', $pb.PbFieldType.PM, protoName: 'temperatureAvg', subBuilder: TemperatureObjectProto.create)
    ..pc<TemperatureObjectProto>(31, _omitFieldNames ? '' : 'temperatureMaximum', $pb.PbFieldType.PM, protoName: 'temperatureMaximum', subBuilder: TemperatureObjectProto.create)
    ..pc<TemperatureGranularDataProto>(32, _omitFieldNames ? '' : 'temperatureGranularData', $pb.PbFieldType.PM, protoName: 'temperatureGranularData', subBuilder: TemperatureGranularDataProto.create)
    ..pc<TemperatureObjectProto>(33, _omitFieldNames ? '' : 'temperatureDelta', $pb.PbFieldType.PM, protoName: 'temperatureDelta', subBuilder: TemperatureObjectProto.create)
    ..a<$core.double>(34, _omitFieldNames ? '' : 'breathsMinimumPerMin', $pb.PbFieldType.OD, protoName: 'breathsMinimumPerMin')
    ..a<$core.double>(35, _omitFieldNames ? '' : 'breathsAvgPerMin', $pb.PbFieldType.OD, protoName: 'breathsAvgPerMin')
    ..a<$core.double>(36, _omitFieldNames ? '' : 'breathsMaximumPerMin', $pb.PbFieldType.OD, protoName: 'breathsMaximumPerMin')
    ..pc<BreathingGranularDataProto>(37, _omitFieldNames ? '' : 'breathingGranularData', $pb.PbFieldType.PM, protoName: 'breathingGranularData', subBuilder: BreathingGranularDataProto.create)
    ..a<$core.int>(38, _omitFieldNames ? '' : 'snoringEventsCount', $pb.PbFieldType.OS3, protoName: 'snoringEventsCount')
    ..a<$core.int>(39, _omitFieldNames ? '' : 'snoringDurationTotalSeconds', $pb.PbFieldType.OS3, protoName: 'snoringDurationTotalSeconds')
    ..pc<SnoringGranularDataProto>(40, _omitFieldNames ? '' : 'snoringGranularData', $pb.PbFieldType.PM, protoName: 'snoringGranularData', subBuilder: SnoringGranularDataProto.create)
    ..a<$core.double>(41, _omitFieldNames ? '' : 'saturationAvgPercentage', $pb.PbFieldType.OD, protoName: 'saturationAvgPercentage')
    ..a<$core.double>(42, _omitFieldNames ? '' : 'saturationMinimumPercentage', $pb.PbFieldType.OD, protoName: 'saturationMinimumPercentage')
    ..a<$core.double>(43, _omitFieldNames ? '' : 'saturationMaximumPercentage', $pb.PbFieldType.OD, protoName: 'saturationMaximumPercentage')
    ..pc<SaturationGranularDataProto>(44, _omitFieldNames ? '' : 'saturationGranularData', $pb.PbFieldType.PM, protoName: 'saturationGranularData', subBuilder: SaturationGranularDataProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepSummaryProto clone() => SleepSummaryProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepSummaryProto copyWith(void Function(SleepSummaryProto) updates) => super.copyWith((message) => updates(message as SleepSummaryProto)) as SleepSummaryProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SleepSummaryProto create() => SleepSummaryProto._();
  @$core.override
  SleepSummaryProto createEmptyInstance() => create();
  static $pb.PbList<SleepSummaryProto> createRepeated() => $pb.PbList<SleepSummaryProto>();
  @$core.pragma('dart2js:noInline')
  static SleepSummaryProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SleepSummaryProto>(create);
  static SleepSummaryProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sourceOfData => $_getSZ(1);
  @$pb.TagNumber(2)
  set sourceOfData($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSourceOfData() => $_has(1);
  @$pb.TagNumber(2)
  void clearSourceOfData() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get wasTheUserUnderPhysicalActivity => $_getBF(2);
  @$pb.TagNumber(3)
  set wasTheUserUnderPhysicalActivity($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWasTheUserUnderPhysicalActivity() => $_has(2);
  @$pb.TagNumber(3)
  void clearWasTheUserUnderPhysicalActivity() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get sleepStartDateTime => $_getSZ(3);
  @$pb.TagNumber(4)
  set sleepStartDateTime($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSleepStartDateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearSleepStartDateTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get sleepEndDateTime => $_getSZ(4);
  @$pb.TagNumber(5)
  set sleepEndDateTime($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSleepEndDateTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearSleepEndDateTime() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get sleepDate => $_getSZ(5);
  @$pb.TagNumber(6)
  set sleepDate($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSleepDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearSleepDate() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get sleepDurationSeconds => $_getIZ(6);
  @$pb.TagNumber(7)
  set sleepDurationSeconds($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSleepDurationSeconds() => $_has(6);
  @$pb.TagNumber(7)
  void clearSleepDurationSeconds() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get timeInBedSeconds => $_getIZ(7);
  @$pb.TagNumber(8)
  set timeInBedSeconds($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTimeInBedSeconds() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimeInBedSeconds() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get lightSleepDurationSeconds => $_getIZ(8);
  @$pb.TagNumber(9)
  set lightSleepDurationSeconds($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLightSleepDurationSeconds() => $_has(8);
  @$pb.TagNumber(9)
  void clearLightSleepDurationSeconds() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get remSleepDurationSeconds => $_getIZ(9);
  @$pb.TagNumber(10)
  set remSleepDurationSeconds($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasRemSleepDurationSeconds() => $_has(9);
  @$pb.TagNumber(10)
  void clearRemSleepDurationSeconds() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get deepSleepDurationSeconds => $_getIZ(10);
  @$pb.TagNumber(11)
  set deepSleepDurationSeconds($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasDeepSleepDurationSeconds() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeepSleepDurationSeconds() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get timeToFallAsleepSeconds => $_getIZ(11);
  @$pb.TagNumber(12)
  set timeToFallAsleepSeconds($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasTimeToFallAsleepSeconds() => $_has(11);
  @$pb.TagNumber(12)
  void clearTimeToFallAsleepSeconds() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get timeAwakeDuringSleepSeconds => $_getIZ(12);
  @$pb.TagNumber(13)
  set timeAwakeDuringSleepSeconds($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasTimeAwakeDuringSleepSeconds() => $_has(12);
  @$pb.TagNumber(13)
  void clearTimeAwakeDuringSleepSeconds() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get sleepQualityRating1To5Score => $_getIZ(13);
  @$pb.TagNumber(14)
  set sleepQualityRating1To5Score($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasSleepQualityRating1To5Score() => $_has(13);
  @$pb.TagNumber(14)
  void clearSleepQualityRating1To5Score() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get sleepEfficiency1To100Score => $_getIZ(14);
  @$pb.TagNumber(15)
  set sleepEfficiency1To100Score($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasSleepEfficiency1To100Score() => $_has(14);
  @$pb.TagNumber(15)
  void clearSleepEfficiency1To100Score() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get sleepGoalSeconds => $_getIZ(15);
  @$pb.TagNumber(16)
  set sleepGoalSeconds($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasSleepGoalSeconds() => $_has(15);
  @$pb.TagNumber(16)
  void clearSleepGoalSeconds() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get sleepContinuity1To5Score => $_getIZ(16);
  @$pb.TagNumber(17)
  set sleepContinuity1To5Score($core.int value) => $_setSignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasSleepContinuity1To5Score() => $_has(16);
  @$pb.TagNumber(17)
  void clearSleepContinuity1To5Score() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get sleepContinuity1To5Rating => $_getIZ(17);
  @$pb.TagNumber(18)
  set sleepContinuity1To5Rating($core.int value) => $_setSignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasSleepContinuity1To5Rating() => $_has(17);
  @$pb.TagNumber(18)
  void clearSleepContinuity1To5Rating() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get hrMaximumBpm => $_getIZ(18);
  @$pb.TagNumber(19)
  set hrMaximumBpm($core.int value) => $_setSignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasHrMaximumBpm() => $_has(18);
  @$pb.TagNumber(19)
  void clearHrMaximumBpm() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get hrMinimumBpm => $_getIZ(19);
  @$pb.TagNumber(20)
  set hrMinimumBpm($core.int value) => $_setSignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasHrMinimumBpm() => $_has(19);
  @$pb.TagNumber(20)
  void clearHrMinimumBpm() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get hrAvgBpm => $_getIZ(20);
  @$pb.TagNumber(21)
  set hrAvgBpm($core.int value) => $_setSignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasHrAvgBpm() => $_has(20);
  @$pb.TagNumber(21)
  void clearHrAvgBpm() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get hrRestingBpm => $_getIZ(21);
  @$pb.TagNumber(22)
  set hrRestingBpm($core.int value) => $_setSignedInt32(21, value);
  @$pb.TagNumber(22)
  $core.bool hasHrRestingBpm() => $_has(21);
  @$pb.TagNumber(22)
  void clearHrRestingBpm() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get hrBasalBpm => $_getIZ(22);
  @$pb.TagNumber(23)
  set hrBasalBpm($core.int value) => $_setSignedInt32(22, value);
  @$pb.TagNumber(23)
  $core.bool hasHrBasalBpm() => $_has(22);
  @$pb.TagNumber(23)
  void clearHrBasalBpm() => $_clearField(23);

  @$pb.TagNumber(24)
  $pb.PbList<HrGranularDataProto> get hrGranularData => $_getList(23);

  @$pb.TagNumber(25)
  $core.double get hrvAvgRmssd => $_getN(24);
  @$pb.TagNumber(25)
  set hrvAvgRmssd($core.double value) => $_setDouble(24, value);
  @$pb.TagNumber(25)
  $core.bool hasHrvAvgRmssd() => $_has(24);
  @$pb.TagNumber(25)
  void clearHrvAvgRmssd() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.double get hrvAvgSdnn => $_getN(25);
  @$pb.TagNumber(26)
  set hrvAvgSdnn($core.double value) => $_setDouble(25, value);
  @$pb.TagNumber(26)
  $core.bool hasHrvAvgSdnn() => $_has(25);
  @$pb.TagNumber(26)
  void clearHrvAvgSdnn() => $_clearField(26);

  @$pb.TagNumber(27)
  $pb.PbList<HrvSdnnGranularDataProto> get hrvSdnnGranularData => $_getList(26);

  @$pb.TagNumber(28)
  $pb.PbList<HrvRmssdGranularDataProto> get hrvRmssdGranularData => $_getList(27);

  @$pb.TagNumber(29)
  $pb.PbList<TemperatureObjectProto> get temperatureMinimum => $_getList(28);

  @$pb.TagNumber(30)
  $pb.PbList<TemperatureObjectProto> get temperatureAvg => $_getList(29);

  @$pb.TagNumber(31)
  $pb.PbList<TemperatureObjectProto> get temperatureMaximum => $_getList(30);

  @$pb.TagNumber(32)
  $pb.PbList<TemperatureGranularDataProto> get temperatureGranularData => $_getList(31);

  @$pb.TagNumber(33)
  $pb.PbList<TemperatureObjectProto> get temperatureDelta => $_getList(32);

  @$pb.TagNumber(34)
  $core.double get breathsMinimumPerMin => $_getN(33);
  @$pb.TagNumber(34)
  set breathsMinimumPerMin($core.double value) => $_setDouble(33, value);
  @$pb.TagNumber(34)
  $core.bool hasBreathsMinimumPerMin() => $_has(33);
  @$pb.TagNumber(34)
  void clearBreathsMinimumPerMin() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.double get breathsAvgPerMin => $_getN(34);
  @$pb.TagNumber(35)
  set breathsAvgPerMin($core.double value) => $_setDouble(34, value);
  @$pb.TagNumber(35)
  $core.bool hasBreathsAvgPerMin() => $_has(34);
  @$pb.TagNumber(35)
  void clearBreathsAvgPerMin() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.double get breathsMaximumPerMin => $_getN(35);
  @$pb.TagNumber(36)
  set breathsMaximumPerMin($core.double value) => $_setDouble(35, value);
  @$pb.TagNumber(36)
  $core.bool hasBreathsMaximumPerMin() => $_has(35);
  @$pb.TagNumber(36)
  void clearBreathsMaximumPerMin() => $_clearField(36);

  @$pb.TagNumber(37)
  $pb.PbList<BreathingGranularDataProto> get breathingGranularData => $_getList(36);

  @$pb.TagNumber(38)
  $core.int get snoringEventsCount => $_getIZ(37);
  @$pb.TagNumber(38)
  set snoringEventsCount($core.int value) => $_setSignedInt32(37, value);
  @$pb.TagNumber(38)
  $core.bool hasSnoringEventsCount() => $_has(37);
  @$pb.TagNumber(38)
  void clearSnoringEventsCount() => $_clearField(38);

  @$pb.TagNumber(39)
  $core.int get snoringDurationTotalSeconds => $_getIZ(38);
  @$pb.TagNumber(39)
  set snoringDurationTotalSeconds($core.int value) => $_setSignedInt32(38, value);
  @$pb.TagNumber(39)
  $core.bool hasSnoringDurationTotalSeconds() => $_has(38);
  @$pb.TagNumber(39)
  void clearSnoringDurationTotalSeconds() => $_clearField(39);

  @$pb.TagNumber(40)
  $pb.PbList<SnoringGranularDataProto> get snoringGranularData => $_getList(39);

  @$pb.TagNumber(41)
  $core.double get saturationAvgPercentage => $_getN(40);
  @$pb.TagNumber(41)
  set saturationAvgPercentage($core.double value) => $_setDouble(40, value);
  @$pb.TagNumber(41)
  $core.bool hasSaturationAvgPercentage() => $_has(40);
  @$pb.TagNumber(41)
  void clearSaturationAvgPercentage() => $_clearField(41);

  @$pb.TagNumber(42)
  $core.double get saturationMinimumPercentage => $_getN(41);
  @$pb.TagNumber(42)
  set saturationMinimumPercentage($core.double value) => $_setDouble(41, value);
  @$pb.TagNumber(42)
  $core.bool hasSaturationMinimumPercentage() => $_has(41);
  @$pb.TagNumber(42)
  void clearSaturationMinimumPercentage() => $_clearField(42);

  @$pb.TagNumber(43)
  $core.double get saturationMaximumPercentage => $_getN(42);
  @$pb.TagNumber(43)
  set saturationMaximumPercentage($core.double value) => $_setDouble(42, value);
  @$pb.TagNumber(43)
  $core.bool hasSaturationMaximumPercentage() => $_has(42);
  @$pb.TagNumber(43)
  void clearSaturationMaximumPercentage() => $_clearField(43);

  @$pb.TagNumber(44)
  $pb.PbList<SaturationGranularDataProto> get saturationGranularData => $_getList(43);
}

class SleepSummariesProto extends $pb.GeneratedMessage {
  factory SleepSummariesProto({
    $core.Iterable<SleepSummaryProto>? elements,
  }) {
    final result = create();
    if (elements != null) result.elements.addAll(elements);
    return result;
  }

  SleepSummariesProto._();

  factory SleepSummariesProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SleepSummariesProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SleepSummariesProto', createEmptyInstance: create)
    ..pc<SleepSummaryProto>(1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PM, subBuilder: SleepSummaryProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepSummariesProto clone() => SleepSummariesProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepSummariesProto copyWith(void Function(SleepSummariesProto) updates) => super.copyWith((message) => updates(message as SleepSummariesProto)) as SleepSummariesProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SleepSummariesProto create() => SleepSummariesProto._();
  @$core.override
  SleepSummariesProto createEmptyInstance() => create();
  static $pb.PbList<SleepSummariesProto> createRepeated() => $pb.PbList<SleepSummariesProto>();
  @$core.pragma('dart2js:noInline')
  static SleepSummariesProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SleepSummariesProto>(create);
  static SleepSummariesProto? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SleepSummaryProto> get elements => $_getList(0);
}

enum SleepSummaryResultProto_Result {
  success, 
  failure, 
  notSet
}

class SleepSummaryResultProto extends $pb.GeneratedMessage {
  factory SleepSummaryResultProto({
    SleepSummariesProto? success,
    SDKExceptionProto? failure,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (failure != null) result.failure = failure;
    return result;
  }

  SleepSummaryResultProto._();

  factory SleepSummaryResultProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SleepSummaryResultProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SleepSummaryResultProto_Result> _SleepSummaryResultProto_ResultByTag = {
    1 : SleepSummaryResultProto_Result.success,
    2 : SleepSummaryResultProto_Result.failure,
    0 : SleepSummaryResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SleepSummaryResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SleepSummariesProto>(1, _omitFieldNames ? '' : 'success', subBuilder: SleepSummariesProto.create)
    ..aOM<SDKExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: SDKExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepSummaryResultProto clone() => SleepSummaryResultProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SleepSummaryResultProto copyWith(void Function(SleepSummaryResultProto) updates) => super.copyWith((message) => updates(message as SleepSummaryResultProto)) as SleepSummaryResultProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SleepSummaryResultProto create() => SleepSummaryResultProto._();
  @$core.override
  SleepSummaryResultProto createEmptyInstance() => create();
  static $pb.PbList<SleepSummaryResultProto> createRepeated() => $pb.PbList<SleepSummaryResultProto>();
  @$core.pragma('dart2js:noInline')
  static SleepSummaryResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SleepSummaryResultProto>(create);
  static SleepSummaryResultProto? _defaultInstance;

  SleepSummaryResultProto_Result whichResult() => _SleepSummaryResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SleepSummariesProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(SleepSummariesProto value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
  @$pb.TagNumber(1)
  SleepSummariesProto ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  SDKExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(SDKExceptionProto value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => $_clearField(2);
  @$pb.TagNumber(2)
  SDKExceptionProto ensureFailure() => $_ensure(1);
}

class PhysicalSummaryProto extends $pb.GeneratedMessage {
  factory PhysicalSummaryProto({
    $core.String? dateTime,
    $core.String? sourceOfData,
    $core.bool? wasTheUserUnderPhysicalActivity,
    $core.int? activeSeconds,
    $core.int? restSeconds,
    $core.int? lowIntensitySeconds,
    $core.int? moderateIntensitySeconds,
    $core.int? vigorousIntensitySeconds,
    $core.int? inactivitySeconds,
    $core.Iterable<ActivityLevelGranularDataProto>? activityLevelGranularData,
    $core.int? continuousInactivePeriods,
    $core.double? caloriesNetIntakeKcal,
    $core.double? caloriesExpenditureKcal,
    $core.double? caloriesNetActiveKcal,
    $core.double? caloriesBasalMetabolicRateKcal,
    $core.int? steps,
    $core.Iterable<StepsGranularDataProto>? stepsGranularData,
    $core.int? activeSteps,
    $core.Iterable<ActiveStepsGranularDataProto>? activeStepsGranularData,
    $core.double? walkedDistanceMeters,
    $core.double? traveledDistanceMeters,
    $core.Iterable<TraveledDistanceGranularDataProto>? traveledDistanceGranularData,
    $core.double? floorsClimbed,
    $core.Iterable<FloorsClimbedGranularDataProto>? floorsClimbedGranularData,
    $core.double? elevationAvgAltitudeMeters,
    $core.double? elevationMinimumAltitudeMeters,
    $core.double? elevationMaximumAltitudeMeters,
    $core.double? elevationLossActualAltitudeMeters,
    $core.double? elevationGainActualAltitudeMeters,
    $core.double? elevationPlannedGainMeters,
    $core.Iterable<ElevationGranularDataProto>? elevationGranularData,
    $core.int? swimmingNumStrokes,
    $core.int? swimmingNumLaps,
    $core.double? swimmingPoolLengthMeters,
    $core.double? swimmingTotalDistanceMeters,
    $core.Iterable<SwimmingDistanceGranularDataProto>? swimmingDistanceGranularData,
    $core.int? hrMaximumBpm,
    $core.int? hrMinimumBpm,
    $core.int? hrAvgBpm,
    $core.int? hrRestingBpm,
    $core.Iterable<HrGranularDataProto>? hrGranularData,
    $core.double? hrvAvgRmssd,
    $core.double? hrvAvgSdnn,
    $core.Iterable<HrvSdnnGranularDataProto>? hrvSdnnGranularData,
    $core.Iterable<HrvRmssdGranularDataProto>? hrvRmssdGranularData,
    $core.double? saturationAvgPercentage,
    $core.Iterable<SaturationGranularDataProto>? saturationGranularData,
    $core.double? vo2MaxMlPerMinPerKg,
    $core.Iterable<Vo2GranularDataProto>? vo2GranularData,
    $core.int? stressAtRestDurationSeconds,
    $core.int? stressDurationSeconds,
    $core.int? lowStressDurationSeconds,
    $core.int? mediumStressDurationSeconds,
    $core.int? highStressDurationSeconds,
    $core.Iterable<StressGranularDataProto>? stressGranularData,
    $core.int? stressAvgLevel,
    $core.int? stressMaximumLevel,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (sourceOfData != null) result.sourceOfData = sourceOfData;
    if (wasTheUserUnderPhysicalActivity != null) result.wasTheUserUnderPhysicalActivity = wasTheUserUnderPhysicalActivity;
    if (activeSeconds != null) result.activeSeconds = activeSeconds;
    if (restSeconds != null) result.restSeconds = restSeconds;
    if (lowIntensitySeconds != null) result.lowIntensitySeconds = lowIntensitySeconds;
    if (moderateIntensitySeconds != null) result.moderateIntensitySeconds = moderateIntensitySeconds;
    if (vigorousIntensitySeconds != null) result.vigorousIntensitySeconds = vigorousIntensitySeconds;
    if (inactivitySeconds != null) result.inactivitySeconds = inactivitySeconds;
    if (activityLevelGranularData != null) result.activityLevelGranularData.addAll(activityLevelGranularData);
    if (continuousInactivePeriods != null) result.continuousInactivePeriods = continuousInactivePeriods;
    if (caloriesNetIntakeKcal != null) result.caloriesNetIntakeKcal = caloriesNetIntakeKcal;
    if (caloriesExpenditureKcal != null) result.caloriesExpenditureKcal = caloriesExpenditureKcal;
    if (caloriesNetActiveKcal != null) result.caloriesNetActiveKcal = caloriesNetActiveKcal;
    if (caloriesBasalMetabolicRateKcal != null) result.caloriesBasalMetabolicRateKcal = caloriesBasalMetabolicRateKcal;
    if (steps != null) result.steps = steps;
    if (stepsGranularData != null) result.stepsGranularData.addAll(stepsGranularData);
    if (activeSteps != null) result.activeSteps = activeSteps;
    if (activeStepsGranularData != null) result.activeStepsGranularData.addAll(activeStepsGranularData);
    if (walkedDistanceMeters != null) result.walkedDistanceMeters = walkedDistanceMeters;
    if (traveledDistanceMeters != null) result.traveledDistanceMeters = traveledDistanceMeters;
    if (traveledDistanceGranularData != null) result.traveledDistanceGranularData.addAll(traveledDistanceGranularData);
    if (floorsClimbed != null) result.floorsClimbed = floorsClimbed;
    if (floorsClimbedGranularData != null) result.floorsClimbedGranularData.addAll(floorsClimbedGranularData);
    if (elevationAvgAltitudeMeters != null) result.elevationAvgAltitudeMeters = elevationAvgAltitudeMeters;
    if (elevationMinimumAltitudeMeters != null) result.elevationMinimumAltitudeMeters = elevationMinimumAltitudeMeters;
    if (elevationMaximumAltitudeMeters != null) result.elevationMaximumAltitudeMeters = elevationMaximumAltitudeMeters;
    if (elevationLossActualAltitudeMeters != null) result.elevationLossActualAltitudeMeters = elevationLossActualAltitudeMeters;
    if (elevationGainActualAltitudeMeters != null) result.elevationGainActualAltitudeMeters = elevationGainActualAltitudeMeters;
    if (elevationPlannedGainMeters != null) result.elevationPlannedGainMeters = elevationPlannedGainMeters;
    if (elevationGranularData != null) result.elevationGranularData.addAll(elevationGranularData);
    if (swimmingNumStrokes != null) result.swimmingNumStrokes = swimmingNumStrokes;
    if (swimmingNumLaps != null) result.swimmingNumLaps = swimmingNumLaps;
    if (swimmingPoolLengthMeters != null) result.swimmingPoolLengthMeters = swimmingPoolLengthMeters;
    if (swimmingTotalDistanceMeters != null) result.swimmingTotalDistanceMeters = swimmingTotalDistanceMeters;
    if (swimmingDistanceGranularData != null) result.swimmingDistanceGranularData.addAll(swimmingDistanceGranularData);
    if (hrMaximumBpm != null) result.hrMaximumBpm = hrMaximumBpm;
    if (hrMinimumBpm != null) result.hrMinimumBpm = hrMinimumBpm;
    if (hrAvgBpm != null) result.hrAvgBpm = hrAvgBpm;
    if (hrRestingBpm != null) result.hrRestingBpm = hrRestingBpm;
    if (hrGranularData != null) result.hrGranularData.addAll(hrGranularData);
    if (hrvAvgRmssd != null) result.hrvAvgRmssd = hrvAvgRmssd;
    if (hrvAvgSdnn != null) result.hrvAvgSdnn = hrvAvgSdnn;
    if (hrvSdnnGranularData != null) result.hrvSdnnGranularData.addAll(hrvSdnnGranularData);
    if (hrvRmssdGranularData != null) result.hrvRmssdGranularData.addAll(hrvRmssdGranularData);
    if (saturationAvgPercentage != null) result.saturationAvgPercentage = saturationAvgPercentage;
    if (saturationGranularData != null) result.saturationGranularData.addAll(saturationGranularData);
    if (vo2MaxMlPerMinPerKg != null) result.vo2MaxMlPerMinPerKg = vo2MaxMlPerMinPerKg;
    if (vo2GranularData != null) result.vo2GranularData.addAll(vo2GranularData);
    if (stressAtRestDurationSeconds != null) result.stressAtRestDurationSeconds = stressAtRestDurationSeconds;
    if (stressDurationSeconds != null) result.stressDurationSeconds = stressDurationSeconds;
    if (lowStressDurationSeconds != null) result.lowStressDurationSeconds = lowStressDurationSeconds;
    if (mediumStressDurationSeconds != null) result.mediumStressDurationSeconds = mediumStressDurationSeconds;
    if (highStressDurationSeconds != null) result.highStressDurationSeconds = highStressDurationSeconds;
    if (stressGranularData != null) result.stressGranularData.addAll(stressGranularData);
    if (stressAvgLevel != null) result.stressAvgLevel = stressAvgLevel;
    if (stressMaximumLevel != null) result.stressMaximumLevel = stressMaximumLevel;
    return result;
  }

  PhysicalSummaryProto._();

  factory PhysicalSummaryProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory PhysicalSummaryProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PhysicalSummaryProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..aOS(2, _omitFieldNames ? '' : 'sourceOfData', protoName: 'sourceOfData')
    ..aOB(3, _omitFieldNames ? '' : 'wasTheUserUnderPhysicalActivity', protoName: 'wasTheUserUnderPhysicalActivity')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'activeSeconds', $pb.PbFieldType.OS3, protoName: 'activeSeconds')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'restSeconds', $pb.PbFieldType.OS3, protoName: 'restSeconds')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'lowIntensitySeconds', $pb.PbFieldType.OS3, protoName: 'lowIntensitySeconds')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'moderateIntensitySeconds', $pb.PbFieldType.OS3, protoName: 'moderateIntensitySeconds')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'vigorousIntensitySeconds', $pb.PbFieldType.OS3, protoName: 'vigorousIntensitySeconds')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'inactivitySeconds', $pb.PbFieldType.OS3, protoName: 'inactivitySeconds')
    ..pc<ActivityLevelGranularDataProto>(10, _omitFieldNames ? '' : 'activityLevelGranularData', $pb.PbFieldType.PM, protoName: 'activityLevelGranularData', subBuilder: ActivityLevelGranularDataProto.create)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'continuousInactivePeriods', $pb.PbFieldType.OS3, protoName: 'continuousInactivePeriods')
    ..a<$core.double>(12, _omitFieldNames ? '' : 'caloriesNetIntakeKcal', $pb.PbFieldType.OD, protoName: 'caloriesNetIntakeKcal')
    ..a<$core.double>(13, _omitFieldNames ? '' : 'caloriesExpenditureKcal', $pb.PbFieldType.OD, protoName: 'caloriesExpenditureKcal')
    ..a<$core.double>(14, _omitFieldNames ? '' : 'caloriesNetActiveKcal', $pb.PbFieldType.OD, protoName: 'caloriesNetActiveKcal')
    ..a<$core.double>(15, _omitFieldNames ? '' : 'caloriesBasalMetabolicRateKcal', $pb.PbFieldType.OD, protoName: 'caloriesBasalMetabolicRateKcal')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'steps', $pb.PbFieldType.OS3)
    ..pc<StepsGranularDataProto>(17, _omitFieldNames ? '' : 'stepsGranularData', $pb.PbFieldType.PM, protoName: 'stepsGranularData', subBuilder: StepsGranularDataProto.create)
    ..a<$core.int>(18, _omitFieldNames ? '' : 'activeSteps', $pb.PbFieldType.OS3, protoName: 'activeSteps')
    ..pc<ActiveStepsGranularDataProto>(19, _omitFieldNames ? '' : 'activeStepsGranularData', $pb.PbFieldType.PM, protoName: 'activeStepsGranularData', subBuilder: ActiveStepsGranularDataProto.create)
    ..a<$core.double>(20, _omitFieldNames ? '' : 'walkedDistanceMeters', $pb.PbFieldType.OD, protoName: 'walkedDistanceMeters')
    ..a<$core.double>(21, _omitFieldNames ? '' : 'traveledDistanceMeters', $pb.PbFieldType.OD, protoName: 'traveledDistanceMeters')
    ..pc<TraveledDistanceGranularDataProto>(22, _omitFieldNames ? '' : 'traveledDistanceGranularData', $pb.PbFieldType.PM, protoName: 'traveledDistanceGranularData', subBuilder: TraveledDistanceGranularDataProto.create)
    ..a<$core.double>(23, _omitFieldNames ? '' : 'floorsClimbed', $pb.PbFieldType.OD, protoName: 'floorsClimbed')
    ..pc<FloorsClimbedGranularDataProto>(24, _omitFieldNames ? '' : 'floorsClimbedGranularData', $pb.PbFieldType.PM, protoName: 'floorsClimbedGranularData', subBuilder: FloorsClimbedGranularDataProto.create)
    ..a<$core.double>(25, _omitFieldNames ? '' : 'elevationAvgAltitudeMeters', $pb.PbFieldType.OD, protoName: 'elevationAvgAltitudeMeters')
    ..a<$core.double>(26, _omitFieldNames ? '' : 'elevationMinimumAltitudeMeters', $pb.PbFieldType.OD, protoName: 'elevationMinimumAltitudeMeters')
    ..a<$core.double>(27, _omitFieldNames ? '' : 'elevationMaximumAltitudeMeters', $pb.PbFieldType.OD, protoName: 'elevationMaximumAltitudeMeters')
    ..a<$core.double>(28, _omitFieldNames ? '' : 'elevationLossActualAltitudeMeters', $pb.PbFieldType.OD, protoName: 'elevationLossActualAltitudeMeters')
    ..a<$core.double>(29, _omitFieldNames ? '' : 'elevationGainActualAltitudeMeters', $pb.PbFieldType.OD, protoName: 'elevationGainActualAltitudeMeters')
    ..a<$core.double>(30, _omitFieldNames ? '' : 'elevationPlannedGainMeters', $pb.PbFieldType.OD, protoName: 'elevationPlannedGainMeters')
    ..pc<ElevationGranularDataProto>(31, _omitFieldNames ? '' : 'elevationGranularData', $pb.PbFieldType.PM, protoName: 'elevationGranularData', subBuilder: ElevationGranularDataProto.create)
    ..a<$core.int>(32, _omitFieldNames ? '' : 'swimmingNumStrokes', $pb.PbFieldType.OS3, protoName: 'swimmingNumStrokes')
    ..a<$core.int>(33, _omitFieldNames ? '' : 'swimmingNumLaps', $pb.PbFieldType.OS3, protoName: 'swimmingNumLaps')
    ..a<$core.double>(34, _omitFieldNames ? '' : 'swimmingPoolLengthMeters', $pb.PbFieldType.OD, protoName: 'swimmingPoolLengthMeters')
    ..a<$core.double>(35, _omitFieldNames ? '' : 'swimmingTotalDistanceMeters', $pb.PbFieldType.OD, protoName: 'swimmingTotalDistanceMeters')
    ..pc<SwimmingDistanceGranularDataProto>(36, _omitFieldNames ? '' : 'swimmingDistanceGranularData', $pb.PbFieldType.PM, protoName: 'swimmingDistanceGranularData', subBuilder: SwimmingDistanceGranularDataProto.create)
    ..a<$core.int>(37, _omitFieldNames ? '' : 'hrMaximumBpm', $pb.PbFieldType.OS3, protoName: 'hrMaximumBpm')
    ..a<$core.int>(38, _omitFieldNames ? '' : 'hrMinimumBpm', $pb.PbFieldType.OS3, protoName: 'hrMinimumBpm')
    ..a<$core.int>(39, _omitFieldNames ? '' : 'hrAvgBpm', $pb.PbFieldType.OS3, protoName: 'hrAvgBpm')
    ..a<$core.int>(40, _omitFieldNames ? '' : 'hrRestingBpm', $pb.PbFieldType.OS3, protoName: 'hrRestingBpm')
    ..pc<HrGranularDataProto>(41, _omitFieldNames ? '' : 'hrGranularData', $pb.PbFieldType.PM, protoName: 'hrGranularData', subBuilder: HrGranularDataProto.create)
    ..a<$core.double>(42, _omitFieldNames ? '' : 'hrvAvgRmssd', $pb.PbFieldType.OD, protoName: 'hrvAvgRmssd')
    ..a<$core.double>(43, _omitFieldNames ? '' : 'hrvAvgSdnn', $pb.PbFieldType.OD, protoName: 'hrvAvgSdnn')
    ..pc<HrvSdnnGranularDataProto>(44, _omitFieldNames ? '' : 'hrvSdnnGranularData', $pb.PbFieldType.PM, protoName: 'hrvSdnnGranularData', subBuilder: HrvSdnnGranularDataProto.create)
    ..pc<HrvRmssdGranularDataProto>(45, _omitFieldNames ? '' : 'hrvRmssdGranularData', $pb.PbFieldType.PM, protoName: 'hrvRmssdGranularData', subBuilder: HrvRmssdGranularDataProto.create)
    ..a<$core.double>(46, _omitFieldNames ? '' : 'saturationAvgPercentage', $pb.PbFieldType.OD, protoName: 'saturationAvgPercentage')
    ..pc<SaturationGranularDataProto>(47, _omitFieldNames ? '' : 'saturationGranularData', $pb.PbFieldType.PM, protoName: 'saturationGranularData', subBuilder: SaturationGranularDataProto.create)
    ..a<$core.double>(48, _omitFieldNames ? '' : 'vo2MaxMlPerMinPerKg', $pb.PbFieldType.OD, protoName: 'vo2MaxMlPerMinPerKg')
    ..pc<Vo2GranularDataProto>(49, _omitFieldNames ? '' : 'vo2GranularData', $pb.PbFieldType.PM, protoName: 'vo2GranularData', subBuilder: Vo2GranularDataProto.create)
    ..a<$core.int>(50, _omitFieldNames ? '' : 'stressAtRestDurationSeconds', $pb.PbFieldType.OS3, protoName: 'stressAtRestDurationSeconds')
    ..a<$core.int>(51, _omitFieldNames ? '' : 'stressDurationSeconds', $pb.PbFieldType.OS3, protoName: 'stressDurationSeconds')
    ..a<$core.int>(52, _omitFieldNames ? '' : 'lowStressDurationSeconds', $pb.PbFieldType.OS3, protoName: 'lowStressDurationSeconds')
    ..a<$core.int>(53, _omitFieldNames ? '' : 'mediumStressDurationSeconds', $pb.PbFieldType.OS3, protoName: 'mediumStressDurationSeconds')
    ..a<$core.int>(54, _omitFieldNames ? '' : 'highStressDurationSeconds', $pb.PbFieldType.OS3, protoName: 'highStressDurationSeconds')
    ..pc<StressGranularDataProto>(55, _omitFieldNames ? '' : 'stressGranularData', $pb.PbFieldType.PM, protoName: 'stressGranularData', subBuilder: StressGranularDataProto.create)
    ..a<$core.int>(56, _omitFieldNames ? '' : 'stressAvgLevel', $pb.PbFieldType.OS3, protoName: 'stressAvgLevel')
    ..a<$core.int>(57, _omitFieldNames ? '' : 'stressMaximumLevel', $pb.PbFieldType.OS3, protoName: 'stressMaximumLevel')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhysicalSummaryProto clone() => PhysicalSummaryProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhysicalSummaryProto copyWith(void Function(PhysicalSummaryProto) updates) => super.copyWith((message) => updates(message as PhysicalSummaryProto)) as PhysicalSummaryProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhysicalSummaryProto create() => PhysicalSummaryProto._();
  @$core.override
  PhysicalSummaryProto createEmptyInstance() => create();
  static $pb.PbList<PhysicalSummaryProto> createRepeated() => $pb.PbList<PhysicalSummaryProto>();
  @$core.pragma('dart2js:noInline')
  static PhysicalSummaryProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PhysicalSummaryProto>(create);
  static PhysicalSummaryProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sourceOfData => $_getSZ(1);
  @$pb.TagNumber(2)
  set sourceOfData($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSourceOfData() => $_has(1);
  @$pb.TagNumber(2)
  void clearSourceOfData() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get wasTheUserUnderPhysicalActivity => $_getBF(2);
  @$pb.TagNumber(3)
  set wasTheUserUnderPhysicalActivity($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWasTheUserUnderPhysicalActivity() => $_has(2);
  @$pb.TagNumber(3)
  void clearWasTheUserUnderPhysicalActivity() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get activeSeconds => $_getIZ(3);
  @$pb.TagNumber(4)
  set activeSeconds($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasActiveSeconds() => $_has(3);
  @$pb.TagNumber(4)
  void clearActiveSeconds() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get restSeconds => $_getIZ(4);
  @$pb.TagNumber(5)
  set restSeconds($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRestSeconds() => $_has(4);
  @$pb.TagNumber(5)
  void clearRestSeconds() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get lowIntensitySeconds => $_getIZ(5);
  @$pb.TagNumber(6)
  set lowIntensitySeconds($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLowIntensitySeconds() => $_has(5);
  @$pb.TagNumber(6)
  void clearLowIntensitySeconds() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get moderateIntensitySeconds => $_getIZ(6);
  @$pb.TagNumber(7)
  set moderateIntensitySeconds($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasModerateIntensitySeconds() => $_has(6);
  @$pb.TagNumber(7)
  void clearModerateIntensitySeconds() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get vigorousIntensitySeconds => $_getIZ(7);
  @$pb.TagNumber(8)
  set vigorousIntensitySeconds($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasVigorousIntensitySeconds() => $_has(7);
  @$pb.TagNumber(8)
  void clearVigorousIntensitySeconds() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get inactivitySeconds => $_getIZ(8);
  @$pb.TagNumber(9)
  set inactivitySeconds($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasInactivitySeconds() => $_has(8);
  @$pb.TagNumber(9)
  void clearInactivitySeconds() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<ActivityLevelGranularDataProto> get activityLevelGranularData => $_getList(9);

  @$pb.TagNumber(11)
  $core.int get continuousInactivePeriods => $_getIZ(10);
  @$pb.TagNumber(11)
  set continuousInactivePeriods($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasContinuousInactivePeriods() => $_has(10);
  @$pb.TagNumber(11)
  void clearContinuousInactivePeriods() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.double get caloriesNetIntakeKcal => $_getN(11);
  @$pb.TagNumber(12)
  set caloriesNetIntakeKcal($core.double value) => $_setDouble(11, value);
  @$pb.TagNumber(12)
  $core.bool hasCaloriesNetIntakeKcal() => $_has(11);
  @$pb.TagNumber(12)
  void clearCaloriesNetIntakeKcal() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.double get caloriesExpenditureKcal => $_getN(12);
  @$pb.TagNumber(13)
  set caloriesExpenditureKcal($core.double value) => $_setDouble(12, value);
  @$pb.TagNumber(13)
  $core.bool hasCaloriesExpenditureKcal() => $_has(12);
  @$pb.TagNumber(13)
  void clearCaloriesExpenditureKcal() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.double get caloriesNetActiveKcal => $_getN(13);
  @$pb.TagNumber(14)
  set caloriesNetActiveKcal($core.double value) => $_setDouble(13, value);
  @$pb.TagNumber(14)
  $core.bool hasCaloriesNetActiveKcal() => $_has(13);
  @$pb.TagNumber(14)
  void clearCaloriesNetActiveKcal() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.double get caloriesBasalMetabolicRateKcal => $_getN(14);
  @$pb.TagNumber(15)
  set caloriesBasalMetabolicRateKcal($core.double value) => $_setDouble(14, value);
  @$pb.TagNumber(15)
  $core.bool hasCaloriesBasalMetabolicRateKcal() => $_has(14);
  @$pb.TagNumber(15)
  void clearCaloriesBasalMetabolicRateKcal() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get steps => $_getIZ(15);
  @$pb.TagNumber(16)
  set steps($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasSteps() => $_has(15);
  @$pb.TagNumber(16)
  void clearSteps() => $_clearField(16);

  @$pb.TagNumber(17)
  $pb.PbList<StepsGranularDataProto> get stepsGranularData => $_getList(16);

  @$pb.TagNumber(18)
  $core.int get activeSteps => $_getIZ(17);
  @$pb.TagNumber(18)
  set activeSteps($core.int value) => $_setSignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasActiveSteps() => $_has(17);
  @$pb.TagNumber(18)
  void clearActiveSteps() => $_clearField(18);

  @$pb.TagNumber(19)
  $pb.PbList<ActiveStepsGranularDataProto> get activeStepsGranularData => $_getList(18);

  @$pb.TagNumber(20)
  $core.double get walkedDistanceMeters => $_getN(19);
  @$pb.TagNumber(20)
  set walkedDistanceMeters($core.double value) => $_setDouble(19, value);
  @$pb.TagNumber(20)
  $core.bool hasWalkedDistanceMeters() => $_has(19);
  @$pb.TagNumber(20)
  void clearWalkedDistanceMeters() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.double get traveledDistanceMeters => $_getN(20);
  @$pb.TagNumber(21)
  set traveledDistanceMeters($core.double value) => $_setDouble(20, value);
  @$pb.TagNumber(21)
  $core.bool hasTraveledDistanceMeters() => $_has(20);
  @$pb.TagNumber(21)
  void clearTraveledDistanceMeters() => $_clearField(21);

  @$pb.TagNumber(22)
  $pb.PbList<TraveledDistanceGranularDataProto> get traveledDistanceGranularData => $_getList(21);

  @$pb.TagNumber(23)
  $core.double get floorsClimbed => $_getN(22);
  @$pb.TagNumber(23)
  set floorsClimbed($core.double value) => $_setDouble(22, value);
  @$pb.TagNumber(23)
  $core.bool hasFloorsClimbed() => $_has(22);
  @$pb.TagNumber(23)
  void clearFloorsClimbed() => $_clearField(23);

  @$pb.TagNumber(24)
  $pb.PbList<FloorsClimbedGranularDataProto> get floorsClimbedGranularData => $_getList(23);

  @$pb.TagNumber(25)
  $core.double get elevationAvgAltitudeMeters => $_getN(24);
  @$pb.TagNumber(25)
  set elevationAvgAltitudeMeters($core.double value) => $_setDouble(24, value);
  @$pb.TagNumber(25)
  $core.bool hasElevationAvgAltitudeMeters() => $_has(24);
  @$pb.TagNumber(25)
  void clearElevationAvgAltitudeMeters() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.double get elevationMinimumAltitudeMeters => $_getN(25);
  @$pb.TagNumber(26)
  set elevationMinimumAltitudeMeters($core.double value) => $_setDouble(25, value);
  @$pb.TagNumber(26)
  $core.bool hasElevationMinimumAltitudeMeters() => $_has(25);
  @$pb.TagNumber(26)
  void clearElevationMinimumAltitudeMeters() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.double get elevationMaximumAltitudeMeters => $_getN(26);
  @$pb.TagNumber(27)
  set elevationMaximumAltitudeMeters($core.double value) => $_setDouble(26, value);
  @$pb.TagNumber(27)
  $core.bool hasElevationMaximumAltitudeMeters() => $_has(26);
  @$pb.TagNumber(27)
  void clearElevationMaximumAltitudeMeters() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.double get elevationLossActualAltitudeMeters => $_getN(27);
  @$pb.TagNumber(28)
  set elevationLossActualAltitudeMeters($core.double value) => $_setDouble(27, value);
  @$pb.TagNumber(28)
  $core.bool hasElevationLossActualAltitudeMeters() => $_has(27);
  @$pb.TagNumber(28)
  void clearElevationLossActualAltitudeMeters() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.double get elevationGainActualAltitudeMeters => $_getN(28);
  @$pb.TagNumber(29)
  set elevationGainActualAltitudeMeters($core.double value) => $_setDouble(28, value);
  @$pb.TagNumber(29)
  $core.bool hasElevationGainActualAltitudeMeters() => $_has(28);
  @$pb.TagNumber(29)
  void clearElevationGainActualAltitudeMeters() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.double get elevationPlannedGainMeters => $_getN(29);
  @$pb.TagNumber(30)
  set elevationPlannedGainMeters($core.double value) => $_setDouble(29, value);
  @$pb.TagNumber(30)
  $core.bool hasElevationPlannedGainMeters() => $_has(29);
  @$pb.TagNumber(30)
  void clearElevationPlannedGainMeters() => $_clearField(30);

  @$pb.TagNumber(31)
  $pb.PbList<ElevationGranularDataProto> get elevationGranularData => $_getList(30);

  @$pb.TagNumber(32)
  $core.int get swimmingNumStrokes => $_getIZ(31);
  @$pb.TagNumber(32)
  set swimmingNumStrokes($core.int value) => $_setSignedInt32(31, value);
  @$pb.TagNumber(32)
  $core.bool hasSwimmingNumStrokes() => $_has(31);
  @$pb.TagNumber(32)
  void clearSwimmingNumStrokes() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.int get swimmingNumLaps => $_getIZ(32);
  @$pb.TagNumber(33)
  set swimmingNumLaps($core.int value) => $_setSignedInt32(32, value);
  @$pb.TagNumber(33)
  $core.bool hasSwimmingNumLaps() => $_has(32);
  @$pb.TagNumber(33)
  void clearSwimmingNumLaps() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.double get swimmingPoolLengthMeters => $_getN(33);
  @$pb.TagNumber(34)
  set swimmingPoolLengthMeters($core.double value) => $_setDouble(33, value);
  @$pb.TagNumber(34)
  $core.bool hasSwimmingPoolLengthMeters() => $_has(33);
  @$pb.TagNumber(34)
  void clearSwimmingPoolLengthMeters() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.double get swimmingTotalDistanceMeters => $_getN(34);
  @$pb.TagNumber(35)
  set swimmingTotalDistanceMeters($core.double value) => $_setDouble(34, value);
  @$pb.TagNumber(35)
  $core.bool hasSwimmingTotalDistanceMeters() => $_has(34);
  @$pb.TagNumber(35)
  void clearSwimmingTotalDistanceMeters() => $_clearField(35);

  @$pb.TagNumber(36)
  $pb.PbList<SwimmingDistanceGranularDataProto> get swimmingDistanceGranularData => $_getList(35);

  @$pb.TagNumber(37)
  $core.int get hrMaximumBpm => $_getIZ(36);
  @$pb.TagNumber(37)
  set hrMaximumBpm($core.int value) => $_setSignedInt32(36, value);
  @$pb.TagNumber(37)
  $core.bool hasHrMaximumBpm() => $_has(36);
  @$pb.TagNumber(37)
  void clearHrMaximumBpm() => $_clearField(37);

  @$pb.TagNumber(38)
  $core.int get hrMinimumBpm => $_getIZ(37);
  @$pb.TagNumber(38)
  set hrMinimumBpm($core.int value) => $_setSignedInt32(37, value);
  @$pb.TagNumber(38)
  $core.bool hasHrMinimumBpm() => $_has(37);
  @$pb.TagNumber(38)
  void clearHrMinimumBpm() => $_clearField(38);

  @$pb.TagNumber(39)
  $core.int get hrAvgBpm => $_getIZ(38);
  @$pb.TagNumber(39)
  set hrAvgBpm($core.int value) => $_setSignedInt32(38, value);
  @$pb.TagNumber(39)
  $core.bool hasHrAvgBpm() => $_has(38);
  @$pb.TagNumber(39)
  void clearHrAvgBpm() => $_clearField(39);

  @$pb.TagNumber(40)
  $core.int get hrRestingBpm => $_getIZ(39);
  @$pb.TagNumber(40)
  set hrRestingBpm($core.int value) => $_setSignedInt32(39, value);
  @$pb.TagNumber(40)
  $core.bool hasHrRestingBpm() => $_has(39);
  @$pb.TagNumber(40)
  void clearHrRestingBpm() => $_clearField(40);

  @$pb.TagNumber(41)
  $pb.PbList<HrGranularDataProto> get hrGranularData => $_getList(40);

  @$pb.TagNumber(42)
  $core.double get hrvAvgRmssd => $_getN(41);
  @$pb.TagNumber(42)
  set hrvAvgRmssd($core.double value) => $_setDouble(41, value);
  @$pb.TagNumber(42)
  $core.bool hasHrvAvgRmssd() => $_has(41);
  @$pb.TagNumber(42)
  void clearHrvAvgRmssd() => $_clearField(42);

  @$pb.TagNumber(43)
  $core.double get hrvAvgSdnn => $_getN(42);
  @$pb.TagNumber(43)
  set hrvAvgSdnn($core.double value) => $_setDouble(42, value);
  @$pb.TagNumber(43)
  $core.bool hasHrvAvgSdnn() => $_has(42);
  @$pb.TagNumber(43)
  void clearHrvAvgSdnn() => $_clearField(43);

  @$pb.TagNumber(44)
  $pb.PbList<HrvSdnnGranularDataProto> get hrvSdnnGranularData => $_getList(43);

  @$pb.TagNumber(45)
  $pb.PbList<HrvRmssdGranularDataProto> get hrvRmssdGranularData => $_getList(44);

  @$pb.TagNumber(46)
  $core.double get saturationAvgPercentage => $_getN(45);
  @$pb.TagNumber(46)
  set saturationAvgPercentage($core.double value) => $_setDouble(45, value);
  @$pb.TagNumber(46)
  $core.bool hasSaturationAvgPercentage() => $_has(45);
  @$pb.TagNumber(46)
  void clearSaturationAvgPercentage() => $_clearField(46);

  @$pb.TagNumber(47)
  $pb.PbList<SaturationGranularDataProto> get saturationGranularData => $_getList(46);

  @$pb.TagNumber(48)
  $core.double get vo2MaxMlPerMinPerKg => $_getN(47);
  @$pb.TagNumber(48)
  set vo2MaxMlPerMinPerKg($core.double value) => $_setDouble(47, value);
  @$pb.TagNumber(48)
  $core.bool hasVo2MaxMlPerMinPerKg() => $_has(47);
  @$pb.TagNumber(48)
  void clearVo2MaxMlPerMinPerKg() => $_clearField(48);

  @$pb.TagNumber(49)
  $pb.PbList<Vo2GranularDataProto> get vo2GranularData => $_getList(48);

  @$pb.TagNumber(50)
  $core.int get stressAtRestDurationSeconds => $_getIZ(49);
  @$pb.TagNumber(50)
  set stressAtRestDurationSeconds($core.int value) => $_setSignedInt32(49, value);
  @$pb.TagNumber(50)
  $core.bool hasStressAtRestDurationSeconds() => $_has(49);
  @$pb.TagNumber(50)
  void clearStressAtRestDurationSeconds() => $_clearField(50);

  @$pb.TagNumber(51)
  $core.int get stressDurationSeconds => $_getIZ(50);
  @$pb.TagNumber(51)
  set stressDurationSeconds($core.int value) => $_setSignedInt32(50, value);
  @$pb.TagNumber(51)
  $core.bool hasStressDurationSeconds() => $_has(50);
  @$pb.TagNumber(51)
  void clearStressDurationSeconds() => $_clearField(51);

  @$pb.TagNumber(52)
  $core.int get lowStressDurationSeconds => $_getIZ(51);
  @$pb.TagNumber(52)
  set lowStressDurationSeconds($core.int value) => $_setSignedInt32(51, value);
  @$pb.TagNumber(52)
  $core.bool hasLowStressDurationSeconds() => $_has(51);
  @$pb.TagNumber(52)
  void clearLowStressDurationSeconds() => $_clearField(52);

  @$pb.TagNumber(53)
  $core.int get mediumStressDurationSeconds => $_getIZ(52);
  @$pb.TagNumber(53)
  set mediumStressDurationSeconds($core.int value) => $_setSignedInt32(52, value);
  @$pb.TagNumber(53)
  $core.bool hasMediumStressDurationSeconds() => $_has(52);
  @$pb.TagNumber(53)
  void clearMediumStressDurationSeconds() => $_clearField(53);

  @$pb.TagNumber(54)
  $core.int get highStressDurationSeconds => $_getIZ(53);
  @$pb.TagNumber(54)
  set highStressDurationSeconds($core.int value) => $_setSignedInt32(53, value);
  @$pb.TagNumber(54)
  $core.bool hasHighStressDurationSeconds() => $_has(53);
  @$pb.TagNumber(54)
  void clearHighStressDurationSeconds() => $_clearField(54);

  @$pb.TagNumber(55)
  $pb.PbList<StressGranularDataProto> get stressGranularData => $_getList(54);

  @$pb.TagNumber(56)
  $core.int get stressAvgLevel => $_getIZ(55);
  @$pb.TagNumber(56)
  set stressAvgLevel($core.int value) => $_setSignedInt32(55, value);
  @$pb.TagNumber(56)
  $core.bool hasStressAvgLevel() => $_has(55);
  @$pb.TagNumber(56)
  void clearStressAvgLevel() => $_clearField(56);

  @$pb.TagNumber(57)
  $core.int get stressMaximumLevel => $_getIZ(56);
  @$pb.TagNumber(57)
  set stressMaximumLevel($core.int value) => $_setSignedInt32(56, value);
  @$pb.TagNumber(57)
  $core.bool hasStressMaximumLevel() => $_has(56);
  @$pb.TagNumber(57)
  void clearStressMaximumLevel() => $_clearField(57);
}

enum PhysicalSummaryResultProto_Result {
  success, 
  failure, 
  notSet
}

class PhysicalSummaryResultProto extends $pb.GeneratedMessage {
  factory PhysicalSummaryResultProto({
    PhysicalSummaryProto? success,
    SDKExceptionProto? failure,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (failure != null) result.failure = failure;
    return result;
  }

  PhysicalSummaryResultProto._();

  factory PhysicalSummaryResultProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory PhysicalSummaryResultProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PhysicalSummaryResultProto_Result> _PhysicalSummaryResultProto_ResultByTag = {
    1 : PhysicalSummaryResultProto_Result.success,
    2 : PhysicalSummaryResultProto_Result.failure,
    0 : PhysicalSummaryResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PhysicalSummaryResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PhysicalSummaryProto>(1, _omitFieldNames ? '' : 'success', subBuilder: PhysicalSummaryProto.create)
    ..aOM<SDKExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: SDKExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhysicalSummaryResultProto clone() => PhysicalSummaryResultProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhysicalSummaryResultProto copyWith(void Function(PhysicalSummaryResultProto) updates) => super.copyWith((message) => updates(message as PhysicalSummaryResultProto)) as PhysicalSummaryResultProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhysicalSummaryResultProto create() => PhysicalSummaryResultProto._();
  @$core.override
  PhysicalSummaryResultProto createEmptyInstance() => create();
  static $pb.PbList<PhysicalSummaryResultProto> createRepeated() => $pb.PbList<PhysicalSummaryResultProto>();
  @$core.pragma('dart2js:noInline')
  static PhysicalSummaryResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PhysicalSummaryResultProto>(create);
  static PhysicalSummaryResultProto? _defaultInstance;

  PhysicalSummaryResultProto_Result whichResult() => _PhysicalSummaryResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PhysicalSummaryProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(PhysicalSummaryProto value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
  @$pb.TagNumber(1)
  PhysicalSummaryProto ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  SDKExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(SDKExceptionProto value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => $_clearField(2);
  @$pb.TagNumber(2)
  SDKExceptionProto ensureFailure() => $_ensure(1);
}

enum BodySummaryProto_IsAPredictedCycle {
  isAPredictedCycleValue, 
  isAPredictedCycleUnknown, 
  notSet
}

class BodySummaryProto extends $pb.GeneratedMessage {
  factory BodySummaryProto({
    $core.String? dateTime,
    $core.String? sourceOfData,
    $core.bool? wasTheUserUnderPhysicalActivity,
    $core.double? waistCircumferenceCm,
    $core.double? hipCircumferenceCm,
    $core.double? chestCircumferenceCm,
    $core.double? boneCompositionPercentage,
    $core.double? muscleCompositionPercentage,
    $core.double? waterCompositionPercentage,
    $core.double? weightKg,
    $core.double? heightCm,
    $core.double? bmi,
    $core.double? bloodGlucoseAvgMgPerDl,
    $core.Iterable<BloodGlucoseGranularDataProto>? bloodGlucoseGranularData,
    $core.Iterable<BloodPressureObjectProto>? bloodPressureAvg,
    $core.Iterable<BloodPressureGranularDataProto>? bloodPressureGranularData,
    $core.double? waterTotalConsumptionMl,
    $core.Iterable<HydrationAmountGranularDataProto>? hydrationAmountGranularData,
    $core.Iterable<HydrationLevelGranularDataProto>? hydrationLevelGranularData,
    $core.int? hrMaximumBpm,
    $core.int? hrMinimumBpm,
    $core.int? hrAvgBpm,
    $core.int? hrRestingBpm,
    $core.Iterable<HrGranularDataProto>? hrGranularData,
    $core.double? hrvAvgRmssd,
    $core.double? hrvAvgSdnn,
    $core.Iterable<HrvSdnnGranularDataProto>? hrvSdnnGranularData,
    $core.Iterable<HrvRmssdGranularDataProto>? hrvRmssdGranularData,
    $core.double? moodMinimumScale,
    $core.double? moodAvgScale,
    $core.double? moodMaximumScale,
    $core.Iterable<MoodGranularDataProto>? moodGranularData,
    $core.double? moodDeltaScale,
    $core.double? foodIntake,
    $core.double? caloriesIntakeKcal,
    $core.double? proteinIntakeG,
    $core.double? sugarIntakeG,
    $core.double? fatIntakeG,
    $core.double? transFatIntakeG,
    $core.double? carbohydratesIntakeG,
    $core.double? fiberIntakeG,
    $core.double? alcoholIntakeG,
    $core.double? sodiumIntakeMg,
    $core.double? cholesterolIntakeMg,
    $core.double? saturationAvgPercentage,
    $core.Iterable<SaturationGranularDataProto>? saturationGranularData,
    $core.double? vo2MaxMlPerMinPerKg,
    $core.Iterable<Vo2GranularDataProto>? vo2GranularData,
    $core.Iterable<TemperatureObjectProto>? temperatureMinimum,
    $core.Iterable<TemperatureObjectProto>? temperatureAvg,
    $core.Iterable<TemperatureObjectProto>? temperatureMaximum,
    $core.Iterable<TemperatureGranularDataProto>? temperatureGranularData,
    $core.Iterable<TemperatureObjectProto>? temperatureDelta,
    $core.String? lastUpdatedDatetime,
    $core.String? periodStartDate,
    $core.int? cycleDay,
    $core.int? cycleLengthDays,
    $core.int? predictedCycleLengthDays,
    $core.String? currentPhase,
    $core.int? lengthOfCurrentPhaseDays,
    $core.int? daysUntilNextPhase,
    $core.bool? isAPredictedCycleValue,
    $core.bool? isAPredictedCycleUnknown,
    $core.Iterable<MenstruationFlowGranularDataProto>? menstruationFlowGranularData,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (sourceOfData != null) result.sourceOfData = sourceOfData;
    if (wasTheUserUnderPhysicalActivity != null) result.wasTheUserUnderPhysicalActivity = wasTheUserUnderPhysicalActivity;
    if (waistCircumferenceCm != null) result.waistCircumferenceCm = waistCircumferenceCm;
    if (hipCircumferenceCm != null) result.hipCircumferenceCm = hipCircumferenceCm;
    if (chestCircumferenceCm != null) result.chestCircumferenceCm = chestCircumferenceCm;
    if (boneCompositionPercentage != null) result.boneCompositionPercentage = boneCompositionPercentage;
    if (muscleCompositionPercentage != null) result.muscleCompositionPercentage = muscleCompositionPercentage;
    if (waterCompositionPercentage != null) result.waterCompositionPercentage = waterCompositionPercentage;
    if (weightKg != null) result.weightKg = weightKg;
    if (heightCm != null) result.heightCm = heightCm;
    if (bmi != null) result.bmi = bmi;
    if (bloodGlucoseAvgMgPerDl != null) result.bloodGlucoseAvgMgPerDl = bloodGlucoseAvgMgPerDl;
    if (bloodGlucoseGranularData != null) result.bloodGlucoseGranularData.addAll(bloodGlucoseGranularData);
    if (bloodPressureAvg != null) result.bloodPressureAvg.addAll(bloodPressureAvg);
    if (bloodPressureGranularData != null) result.bloodPressureGranularData.addAll(bloodPressureGranularData);
    if (waterTotalConsumptionMl != null) result.waterTotalConsumptionMl = waterTotalConsumptionMl;
    if (hydrationAmountGranularData != null) result.hydrationAmountGranularData.addAll(hydrationAmountGranularData);
    if (hydrationLevelGranularData != null) result.hydrationLevelGranularData.addAll(hydrationLevelGranularData);
    if (hrMaximumBpm != null) result.hrMaximumBpm = hrMaximumBpm;
    if (hrMinimumBpm != null) result.hrMinimumBpm = hrMinimumBpm;
    if (hrAvgBpm != null) result.hrAvgBpm = hrAvgBpm;
    if (hrRestingBpm != null) result.hrRestingBpm = hrRestingBpm;
    if (hrGranularData != null) result.hrGranularData.addAll(hrGranularData);
    if (hrvAvgRmssd != null) result.hrvAvgRmssd = hrvAvgRmssd;
    if (hrvAvgSdnn != null) result.hrvAvgSdnn = hrvAvgSdnn;
    if (hrvSdnnGranularData != null) result.hrvSdnnGranularData.addAll(hrvSdnnGranularData);
    if (hrvRmssdGranularData != null) result.hrvRmssdGranularData.addAll(hrvRmssdGranularData);
    if (moodMinimumScale != null) result.moodMinimumScale = moodMinimumScale;
    if (moodAvgScale != null) result.moodAvgScale = moodAvgScale;
    if (moodMaximumScale != null) result.moodMaximumScale = moodMaximumScale;
    if (moodGranularData != null) result.moodGranularData.addAll(moodGranularData);
    if (moodDeltaScale != null) result.moodDeltaScale = moodDeltaScale;
    if (foodIntake != null) result.foodIntake = foodIntake;
    if (caloriesIntakeKcal != null) result.caloriesIntakeKcal = caloriesIntakeKcal;
    if (proteinIntakeG != null) result.proteinIntakeG = proteinIntakeG;
    if (sugarIntakeG != null) result.sugarIntakeG = sugarIntakeG;
    if (fatIntakeG != null) result.fatIntakeG = fatIntakeG;
    if (transFatIntakeG != null) result.transFatIntakeG = transFatIntakeG;
    if (carbohydratesIntakeG != null) result.carbohydratesIntakeG = carbohydratesIntakeG;
    if (fiberIntakeG != null) result.fiberIntakeG = fiberIntakeG;
    if (alcoholIntakeG != null) result.alcoholIntakeG = alcoholIntakeG;
    if (sodiumIntakeMg != null) result.sodiumIntakeMg = sodiumIntakeMg;
    if (cholesterolIntakeMg != null) result.cholesterolIntakeMg = cholesterolIntakeMg;
    if (saturationAvgPercentage != null) result.saturationAvgPercentage = saturationAvgPercentage;
    if (saturationGranularData != null) result.saturationGranularData.addAll(saturationGranularData);
    if (vo2MaxMlPerMinPerKg != null) result.vo2MaxMlPerMinPerKg = vo2MaxMlPerMinPerKg;
    if (vo2GranularData != null) result.vo2GranularData.addAll(vo2GranularData);
    if (temperatureMinimum != null) result.temperatureMinimum.addAll(temperatureMinimum);
    if (temperatureAvg != null) result.temperatureAvg.addAll(temperatureAvg);
    if (temperatureMaximum != null) result.temperatureMaximum.addAll(temperatureMaximum);
    if (temperatureGranularData != null) result.temperatureGranularData.addAll(temperatureGranularData);
    if (temperatureDelta != null) result.temperatureDelta.addAll(temperatureDelta);
    if (lastUpdatedDatetime != null) result.lastUpdatedDatetime = lastUpdatedDatetime;
    if (periodStartDate != null) result.periodStartDate = periodStartDate;
    if (cycleDay != null) result.cycleDay = cycleDay;
    if (cycleLengthDays != null) result.cycleLengthDays = cycleLengthDays;
    if (predictedCycleLengthDays != null) result.predictedCycleLengthDays = predictedCycleLengthDays;
    if (currentPhase != null) result.currentPhase = currentPhase;
    if (lengthOfCurrentPhaseDays != null) result.lengthOfCurrentPhaseDays = lengthOfCurrentPhaseDays;
    if (daysUntilNextPhase != null) result.daysUntilNextPhase = daysUntilNextPhase;
    if (isAPredictedCycleValue != null) result.isAPredictedCycleValue = isAPredictedCycleValue;
    if (isAPredictedCycleUnknown != null) result.isAPredictedCycleUnknown = isAPredictedCycleUnknown;
    if (menstruationFlowGranularData != null) result.menstruationFlowGranularData.addAll(menstruationFlowGranularData);
    return result;
  }

  BodySummaryProto._();

  factory BodySummaryProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory BodySummaryProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BodySummaryProto_IsAPredictedCycle> _BodySummaryProto_IsAPredictedCycleByTag = {
    62 : BodySummaryProto_IsAPredictedCycle.isAPredictedCycleValue,
    63 : BodySummaryProto_IsAPredictedCycle.isAPredictedCycleUnknown,
    0 : BodySummaryProto_IsAPredictedCycle.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BodySummaryProto', createEmptyInstance: create)
    ..oo(0, [62, 63])
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..aOS(2, _omitFieldNames ? '' : 'sourceOfData', protoName: 'sourceOfData')
    ..aOB(3, _omitFieldNames ? '' : 'wasTheUserUnderPhysicalActivity', protoName: 'wasTheUserUnderPhysicalActivity')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'waistCircumferenceCm', $pb.PbFieldType.OD, protoName: 'waistCircumferenceCm')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'hipCircumferenceCm', $pb.PbFieldType.OD, protoName: 'hipCircumferenceCm')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'chestCircumferenceCm', $pb.PbFieldType.OD, protoName: 'chestCircumferenceCm')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'boneCompositionPercentage', $pb.PbFieldType.OD, protoName: 'boneCompositionPercentage')
    ..a<$core.double>(8, _omitFieldNames ? '' : 'muscleCompositionPercentage', $pb.PbFieldType.OD, protoName: 'muscleCompositionPercentage')
    ..a<$core.double>(9, _omitFieldNames ? '' : 'waterCompositionPercentage', $pb.PbFieldType.OD, protoName: 'waterCompositionPercentage')
    ..a<$core.double>(10, _omitFieldNames ? '' : 'weightKg', $pb.PbFieldType.OD, protoName: 'weightKg')
    ..a<$core.double>(11, _omitFieldNames ? '' : 'heightCm', $pb.PbFieldType.OD, protoName: 'heightCm')
    ..a<$core.double>(12, _omitFieldNames ? '' : 'bmi', $pb.PbFieldType.OD)
    ..a<$core.double>(13, _omitFieldNames ? '' : 'bloodGlucoseAvgMgPerDl', $pb.PbFieldType.OD, protoName: 'bloodGlucoseAvgMgPerDl')
    ..pc<BloodGlucoseGranularDataProto>(14, _omitFieldNames ? '' : 'bloodGlucoseGranularData', $pb.PbFieldType.PM, protoName: 'bloodGlucoseGranularData', subBuilder: BloodGlucoseGranularDataProto.create)
    ..pc<BloodPressureObjectProto>(15, _omitFieldNames ? '' : 'bloodPressureAvg', $pb.PbFieldType.PM, protoName: 'bloodPressureAvg', subBuilder: BloodPressureObjectProto.create)
    ..pc<BloodPressureGranularDataProto>(16, _omitFieldNames ? '' : 'bloodPressureGranularData', $pb.PbFieldType.PM, protoName: 'bloodPressureGranularData', subBuilder: BloodPressureGranularDataProto.create)
    ..a<$core.double>(17, _omitFieldNames ? '' : 'waterTotalConsumptionMl', $pb.PbFieldType.OD, protoName: 'waterTotalConsumptionMl')
    ..pc<HydrationAmountGranularDataProto>(18, _omitFieldNames ? '' : 'hydrationAmountGranularData', $pb.PbFieldType.PM, protoName: 'hydrationAmountGranularData', subBuilder: HydrationAmountGranularDataProto.create)
    ..pc<HydrationLevelGranularDataProto>(19, _omitFieldNames ? '' : 'hydrationLevelGranularData', $pb.PbFieldType.PM, protoName: 'hydrationLevelGranularData', subBuilder: HydrationLevelGranularDataProto.create)
    ..a<$core.int>(20, _omitFieldNames ? '' : 'hrMaximumBpm', $pb.PbFieldType.OS3, protoName: 'hrMaximumBpm')
    ..a<$core.int>(21, _omitFieldNames ? '' : 'hrMinimumBpm', $pb.PbFieldType.OS3, protoName: 'hrMinimumBpm')
    ..a<$core.int>(22, _omitFieldNames ? '' : 'hrAvgBpm', $pb.PbFieldType.OS3, protoName: 'hrAvgBpm')
    ..a<$core.int>(23, _omitFieldNames ? '' : 'hrRestingBpm', $pb.PbFieldType.OS3, protoName: 'hrRestingBpm')
    ..pc<HrGranularDataProto>(24, _omitFieldNames ? '' : 'hrGranularData', $pb.PbFieldType.PM, protoName: 'hrGranularData', subBuilder: HrGranularDataProto.create)
    ..a<$core.double>(25, _omitFieldNames ? '' : 'hrvAvgRmssd', $pb.PbFieldType.OD, protoName: 'hrvAvgRmssd')
    ..a<$core.double>(26, _omitFieldNames ? '' : 'hrvAvgSdnn', $pb.PbFieldType.OD, protoName: 'hrvAvgSdnn')
    ..pc<HrvSdnnGranularDataProto>(27, _omitFieldNames ? '' : 'hrvSdnnGranularData', $pb.PbFieldType.PM, protoName: 'hrvSdnnGranularData', subBuilder: HrvSdnnGranularDataProto.create)
    ..pc<HrvRmssdGranularDataProto>(28, _omitFieldNames ? '' : 'hrvRmssdGranularData', $pb.PbFieldType.PM, protoName: 'hrvRmssdGranularData', subBuilder: HrvRmssdGranularDataProto.create)
    ..a<$core.double>(29, _omitFieldNames ? '' : 'moodMinimumScale', $pb.PbFieldType.OD, protoName: 'moodMinimumScale')
    ..a<$core.double>(30, _omitFieldNames ? '' : 'moodAvgScale', $pb.PbFieldType.OD, protoName: 'moodAvgScale')
    ..a<$core.double>(31, _omitFieldNames ? '' : 'moodMaximumScale', $pb.PbFieldType.OD, protoName: 'moodMaximumScale')
    ..pc<MoodGranularDataProto>(32, _omitFieldNames ? '' : 'moodGranularData', $pb.PbFieldType.PM, protoName: 'moodGranularData', subBuilder: MoodGranularDataProto.create)
    ..a<$core.double>(33, _omitFieldNames ? '' : 'moodDeltaScale', $pb.PbFieldType.OD, protoName: 'moodDeltaScale')
    ..a<$core.double>(34, _omitFieldNames ? '' : 'foodIntake', $pb.PbFieldType.OD, protoName: 'foodIntake')
    ..a<$core.double>(35, _omitFieldNames ? '' : 'caloriesIntakeKcal', $pb.PbFieldType.OD, protoName: 'caloriesIntakeKcal')
    ..a<$core.double>(36, _omitFieldNames ? '' : 'proteinIntakeG', $pb.PbFieldType.OD, protoName: 'proteinIntakeG')
    ..a<$core.double>(37, _omitFieldNames ? '' : 'sugarIntakeG', $pb.PbFieldType.OD, protoName: 'sugarIntakeG')
    ..a<$core.double>(38, _omitFieldNames ? '' : 'fatIntakeG', $pb.PbFieldType.OD, protoName: 'fatIntakeG')
    ..a<$core.double>(39, _omitFieldNames ? '' : 'transFatIntakeG', $pb.PbFieldType.OD, protoName: 'transFatIntakeG')
    ..a<$core.double>(40, _omitFieldNames ? '' : 'carbohydratesIntakeG', $pb.PbFieldType.OD, protoName: 'carbohydratesIntakeG')
    ..a<$core.double>(41, _omitFieldNames ? '' : 'fiberIntakeG', $pb.PbFieldType.OD, protoName: 'fiberIntakeG')
    ..a<$core.double>(42, _omitFieldNames ? '' : 'alcoholIntakeG', $pb.PbFieldType.OD, protoName: 'alcoholIntakeG')
    ..a<$core.double>(43, _omitFieldNames ? '' : 'sodiumIntakeMg', $pb.PbFieldType.OD, protoName: 'sodiumIntakeMg')
    ..a<$core.double>(44, _omitFieldNames ? '' : 'cholesterolIntakeMg', $pb.PbFieldType.OD, protoName: 'cholesterolIntakeMg')
    ..a<$core.double>(45, _omitFieldNames ? '' : 'saturationAvgPercentage', $pb.PbFieldType.OD, protoName: 'saturationAvgPercentage')
    ..pc<SaturationGranularDataProto>(46, _omitFieldNames ? '' : 'saturationGranularData', $pb.PbFieldType.PM, protoName: 'saturationGranularData', subBuilder: SaturationGranularDataProto.create)
    ..a<$core.double>(47, _omitFieldNames ? '' : 'vo2MaxMlPerMinPerKg', $pb.PbFieldType.OD, protoName: 'vo2MaxMlPerMinPerKg')
    ..pc<Vo2GranularDataProto>(48, _omitFieldNames ? '' : 'vo2GranularData', $pb.PbFieldType.PM, protoName: 'vo2GranularData', subBuilder: Vo2GranularDataProto.create)
    ..pc<TemperatureObjectProto>(49, _omitFieldNames ? '' : 'temperatureMinimum', $pb.PbFieldType.PM, protoName: 'temperatureMinimum', subBuilder: TemperatureObjectProto.create)
    ..pc<TemperatureObjectProto>(50, _omitFieldNames ? '' : 'temperatureAvg', $pb.PbFieldType.PM, protoName: 'temperatureAvg', subBuilder: TemperatureObjectProto.create)
    ..pc<TemperatureObjectProto>(51, _omitFieldNames ? '' : 'temperatureMaximum', $pb.PbFieldType.PM, protoName: 'temperatureMaximum', subBuilder: TemperatureObjectProto.create)
    ..pc<TemperatureGranularDataProto>(52, _omitFieldNames ? '' : 'temperatureGranularData', $pb.PbFieldType.PM, protoName: 'temperatureGranularData', subBuilder: TemperatureGranularDataProto.create)
    ..pc<TemperatureObjectProto>(53, _omitFieldNames ? '' : 'temperatureDelta', $pb.PbFieldType.PM, protoName: 'temperatureDelta', subBuilder: TemperatureObjectProto.create)
    ..aOS(54, _omitFieldNames ? '' : 'lastUpdatedDatetime', protoName: 'lastUpdatedDatetime')
    ..aOS(55, _omitFieldNames ? '' : 'periodStartDate', protoName: 'periodStartDate')
    ..a<$core.int>(56, _omitFieldNames ? '' : 'cycleDay', $pb.PbFieldType.OS3, protoName: 'cycleDay')
    ..a<$core.int>(57, _omitFieldNames ? '' : 'cycleLengthDays', $pb.PbFieldType.OS3, protoName: 'cycleLengthDays')
    ..a<$core.int>(58, _omitFieldNames ? '' : 'predictedCycleLengthDays', $pb.PbFieldType.OS3, protoName: 'predictedCycleLengthDays')
    ..aOS(59, _omitFieldNames ? '' : 'currentPhase', protoName: 'currentPhase')
    ..a<$core.int>(60, _omitFieldNames ? '' : 'lengthOfCurrentPhaseDays', $pb.PbFieldType.OS3, protoName: 'lengthOfCurrentPhaseDays')
    ..a<$core.int>(61, _omitFieldNames ? '' : 'daysUntilNextPhase', $pb.PbFieldType.OS3, protoName: 'daysUntilNextPhase')
    ..aOB(62, _omitFieldNames ? '' : 'isAPredictedCycleValue', protoName: 'isAPredictedCycleValue')
    ..aOB(63, _omitFieldNames ? '' : 'isAPredictedCycleUnknown', protoName: 'isAPredictedCycleUnknown')
    ..pc<MenstruationFlowGranularDataProto>(64, _omitFieldNames ? '' : 'menstruationFlowGranularData', $pb.PbFieldType.PM, protoName: 'menstruationFlowGranularData', subBuilder: MenstruationFlowGranularDataProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BodySummaryProto clone() => BodySummaryProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BodySummaryProto copyWith(void Function(BodySummaryProto) updates) => super.copyWith((message) => updates(message as BodySummaryProto)) as BodySummaryProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BodySummaryProto create() => BodySummaryProto._();
  @$core.override
  BodySummaryProto createEmptyInstance() => create();
  static $pb.PbList<BodySummaryProto> createRepeated() => $pb.PbList<BodySummaryProto>();
  @$core.pragma('dart2js:noInline')
  static BodySummaryProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BodySummaryProto>(create);
  static BodySummaryProto? _defaultInstance;

  BodySummaryProto_IsAPredictedCycle whichIsAPredictedCycle() => _BodySummaryProto_IsAPredictedCycleByTag[$_whichOneof(0)]!;
  void clearIsAPredictedCycle() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sourceOfData => $_getSZ(1);
  @$pb.TagNumber(2)
  set sourceOfData($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSourceOfData() => $_has(1);
  @$pb.TagNumber(2)
  void clearSourceOfData() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get wasTheUserUnderPhysicalActivity => $_getBF(2);
  @$pb.TagNumber(3)
  set wasTheUserUnderPhysicalActivity($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWasTheUserUnderPhysicalActivity() => $_has(2);
  @$pb.TagNumber(3)
  void clearWasTheUserUnderPhysicalActivity() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get waistCircumferenceCm => $_getN(3);
  @$pb.TagNumber(4)
  set waistCircumferenceCm($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWaistCircumferenceCm() => $_has(3);
  @$pb.TagNumber(4)
  void clearWaistCircumferenceCm() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get hipCircumferenceCm => $_getN(4);
  @$pb.TagNumber(5)
  set hipCircumferenceCm($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHipCircumferenceCm() => $_has(4);
  @$pb.TagNumber(5)
  void clearHipCircumferenceCm() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get chestCircumferenceCm => $_getN(5);
  @$pb.TagNumber(6)
  set chestCircumferenceCm($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasChestCircumferenceCm() => $_has(5);
  @$pb.TagNumber(6)
  void clearChestCircumferenceCm() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get boneCompositionPercentage => $_getN(6);
  @$pb.TagNumber(7)
  set boneCompositionPercentage($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBoneCompositionPercentage() => $_has(6);
  @$pb.TagNumber(7)
  void clearBoneCompositionPercentage() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get muscleCompositionPercentage => $_getN(7);
  @$pb.TagNumber(8)
  set muscleCompositionPercentage($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMuscleCompositionPercentage() => $_has(7);
  @$pb.TagNumber(8)
  void clearMuscleCompositionPercentage() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get waterCompositionPercentage => $_getN(8);
  @$pb.TagNumber(9)
  set waterCompositionPercentage($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasWaterCompositionPercentage() => $_has(8);
  @$pb.TagNumber(9)
  void clearWaterCompositionPercentage() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get weightKg => $_getN(9);
  @$pb.TagNumber(10)
  set weightKg($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(10)
  $core.bool hasWeightKg() => $_has(9);
  @$pb.TagNumber(10)
  void clearWeightKg() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.double get heightCm => $_getN(10);
  @$pb.TagNumber(11)
  set heightCm($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasHeightCm() => $_has(10);
  @$pb.TagNumber(11)
  void clearHeightCm() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.double get bmi => $_getN(11);
  @$pb.TagNumber(12)
  set bmi($core.double value) => $_setDouble(11, value);
  @$pb.TagNumber(12)
  $core.bool hasBmi() => $_has(11);
  @$pb.TagNumber(12)
  void clearBmi() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.double get bloodGlucoseAvgMgPerDl => $_getN(12);
  @$pb.TagNumber(13)
  set bloodGlucoseAvgMgPerDl($core.double value) => $_setDouble(12, value);
  @$pb.TagNumber(13)
  $core.bool hasBloodGlucoseAvgMgPerDl() => $_has(12);
  @$pb.TagNumber(13)
  void clearBloodGlucoseAvgMgPerDl() => $_clearField(13);

  @$pb.TagNumber(14)
  $pb.PbList<BloodGlucoseGranularDataProto> get bloodGlucoseGranularData => $_getList(13);

  @$pb.TagNumber(15)
  $pb.PbList<BloodPressureObjectProto> get bloodPressureAvg => $_getList(14);

  @$pb.TagNumber(16)
  $pb.PbList<BloodPressureGranularDataProto> get bloodPressureGranularData => $_getList(15);

  @$pb.TagNumber(17)
  $core.double get waterTotalConsumptionMl => $_getN(16);
  @$pb.TagNumber(17)
  set waterTotalConsumptionMl($core.double value) => $_setDouble(16, value);
  @$pb.TagNumber(17)
  $core.bool hasWaterTotalConsumptionMl() => $_has(16);
  @$pb.TagNumber(17)
  void clearWaterTotalConsumptionMl() => $_clearField(17);

  @$pb.TagNumber(18)
  $pb.PbList<HydrationAmountGranularDataProto> get hydrationAmountGranularData => $_getList(17);

  @$pb.TagNumber(19)
  $pb.PbList<HydrationLevelGranularDataProto> get hydrationLevelGranularData => $_getList(18);

  @$pb.TagNumber(20)
  $core.int get hrMaximumBpm => $_getIZ(19);
  @$pb.TagNumber(20)
  set hrMaximumBpm($core.int value) => $_setSignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasHrMaximumBpm() => $_has(19);
  @$pb.TagNumber(20)
  void clearHrMaximumBpm() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get hrMinimumBpm => $_getIZ(20);
  @$pb.TagNumber(21)
  set hrMinimumBpm($core.int value) => $_setSignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasHrMinimumBpm() => $_has(20);
  @$pb.TagNumber(21)
  void clearHrMinimumBpm() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get hrAvgBpm => $_getIZ(21);
  @$pb.TagNumber(22)
  set hrAvgBpm($core.int value) => $_setSignedInt32(21, value);
  @$pb.TagNumber(22)
  $core.bool hasHrAvgBpm() => $_has(21);
  @$pb.TagNumber(22)
  void clearHrAvgBpm() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get hrRestingBpm => $_getIZ(22);
  @$pb.TagNumber(23)
  set hrRestingBpm($core.int value) => $_setSignedInt32(22, value);
  @$pb.TagNumber(23)
  $core.bool hasHrRestingBpm() => $_has(22);
  @$pb.TagNumber(23)
  void clearHrRestingBpm() => $_clearField(23);

  @$pb.TagNumber(24)
  $pb.PbList<HrGranularDataProto> get hrGranularData => $_getList(23);

  @$pb.TagNumber(25)
  $core.double get hrvAvgRmssd => $_getN(24);
  @$pb.TagNumber(25)
  set hrvAvgRmssd($core.double value) => $_setDouble(24, value);
  @$pb.TagNumber(25)
  $core.bool hasHrvAvgRmssd() => $_has(24);
  @$pb.TagNumber(25)
  void clearHrvAvgRmssd() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.double get hrvAvgSdnn => $_getN(25);
  @$pb.TagNumber(26)
  set hrvAvgSdnn($core.double value) => $_setDouble(25, value);
  @$pb.TagNumber(26)
  $core.bool hasHrvAvgSdnn() => $_has(25);
  @$pb.TagNumber(26)
  void clearHrvAvgSdnn() => $_clearField(26);

  @$pb.TagNumber(27)
  $pb.PbList<HrvSdnnGranularDataProto> get hrvSdnnGranularData => $_getList(26);

  @$pb.TagNumber(28)
  $pb.PbList<HrvRmssdGranularDataProto> get hrvRmssdGranularData => $_getList(27);

  @$pb.TagNumber(29)
  $core.double get moodMinimumScale => $_getN(28);
  @$pb.TagNumber(29)
  set moodMinimumScale($core.double value) => $_setDouble(28, value);
  @$pb.TagNumber(29)
  $core.bool hasMoodMinimumScale() => $_has(28);
  @$pb.TagNumber(29)
  void clearMoodMinimumScale() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.double get moodAvgScale => $_getN(29);
  @$pb.TagNumber(30)
  set moodAvgScale($core.double value) => $_setDouble(29, value);
  @$pb.TagNumber(30)
  $core.bool hasMoodAvgScale() => $_has(29);
  @$pb.TagNumber(30)
  void clearMoodAvgScale() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.double get moodMaximumScale => $_getN(30);
  @$pb.TagNumber(31)
  set moodMaximumScale($core.double value) => $_setDouble(30, value);
  @$pb.TagNumber(31)
  $core.bool hasMoodMaximumScale() => $_has(30);
  @$pb.TagNumber(31)
  void clearMoodMaximumScale() => $_clearField(31);

  @$pb.TagNumber(32)
  $pb.PbList<MoodGranularDataProto> get moodGranularData => $_getList(31);

  @$pb.TagNumber(33)
  $core.double get moodDeltaScale => $_getN(32);
  @$pb.TagNumber(33)
  set moodDeltaScale($core.double value) => $_setDouble(32, value);
  @$pb.TagNumber(33)
  $core.bool hasMoodDeltaScale() => $_has(32);
  @$pb.TagNumber(33)
  void clearMoodDeltaScale() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.double get foodIntake => $_getN(33);
  @$pb.TagNumber(34)
  set foodIntake($core.double value) => $_setDouble(33, value);
  @$pb.TagNumber(34)
  $core.bool hasFoodIntake() => $_has(33);
  @$pb.TagNumber(34)
  void clearFoodIntake() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.double get caloriesIntakeKcal => $_getN(34);
  @$pb.TagNumber(35)
  set caloriesIntakeKcal($core.double value) => $_setDouble(34, value);
  @$pb.TagNumber(35)
  $core.bool hasCaloriesIntakeKcal() => $_has(34);
  @$pb.TagNumber(35)
  void clearCaloriesIntakeKcal() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.double get proteinIntakeG => $_getN(35);
  @$pb.TagNumber(36)
  set proteinIntakeG($core.double value) => $_setDouble(35, value);
  @$pb.TagNumber(36)
  $core.bool hasProteinIntakeG() => $_has(35);
  @$pb.TagNumber(36)
  void clearProteinIntakeG() => $_clearField(36);

  @$pb.TagNumber(37)
  $core.double get sugarIntakeG => $_getN(36);
  @$pb.TagNumber(37)
  set sugarIntakeG($core.double value) => $_setDouble(36, value);
  @$pb.TagNumber(37)
  $core.bool hasSugarIntakeG() => $_has(36);
  @$pb.TagNumber(37)
  void clearSugarIntakeG() => $_clearField(37);

  @$pb.TagNumber(38)
  $core.double get fatIntakeG => $_getN(37);
  @$pb.TagNumber(38)
  set fatIntakeG($core.double value) => $_setDouble(37, value);
  @$pb.TagNumber(38)
  $core.bool hasFatIntakeG() => $_has(37);
  @$pb.TagNumber(38)
  void clearFatIntakeG() => $_clearField(38);

  @$pb.TagNumber(39)
  $core.double get transFatIntakeG => $_getN(38);
  @$pb.TagNumber(39)
  set transFatIntakeG($core.double value) => $_setDouble(38, value);
  @$pb.TagNumber(39)
  $core.bool hasTransFatIntakeG() => $_has(38);
  @$pb.TagNumber(39)
  void clearTransFatIntakeG() => $_clearField(39);

  @$pb.TagNumber(40)
  $core.double get carbohydratesIntakeG => $_getN(39);
  @$pb.TagNumber(40)
  set carbohydratesIntakeG($core.double value) => $_setDouble(39, value);
  @$pb.TagNumber(40)
  $core.bool hasCarbohydratesIntakeG() => $_has(39);
  @$pb.TagNumber(40)
  void clearCarbohydratesIntakeG() => $_clearField(40);

  @$pb.TagNumber(41)
  $core.double get fiberIntakeG => $_getN(40);
  @$pb.TagNumber(41)
  set fiberIntakeG($core.double value) => $_setDouble(40, value);
  @$pb.TagNumber(41)
  $core.bool hasFiberIntakeG() => $_has(40);
  @$pb.TagNumber(41)
  void clearFiberIntakeG() => $_clearField(41);

  @$pb.TagNumber(42)
  $core.double get alcoholIntakeG => $_getN(41);
  @$pb.TagNumber(42)
  set alcoholIntakeG($core.double value) => $_setDouble(41, value);
  @$pb.TagNumber(42)
  $core.bool hasAlcoholIntakeG() => $_has(41);
  @$pb.TagNumber(42)
  void clearAlcoholIntakeG() => $_clearField(42);

  @$pb.TagNumber(43)
  $core.double get sodiumIntakeMg => $_getN(42);
  @$pb.TagNumber(43)
  set sodiumIntakeMg($core.double value) => $_setDouble(42, value);
  @$pb.TagNumber(43)
  $core.bool hasSodiumIntakeMg() => $_has(42);
  @$pb.TagNumber(43)
  void clearSodiumIntakeMg() => $_clearField(43);

  @$pb.TagNumber(44)
  $core.double get cholesterolIntakeMg => $_getN(43);
  @$pb.TagNumber(44)
  set cholesterolIntakeMg($core.double value) => $_setDouble(43, value);
  @$pb.TagNumber(44)
  $core.bool hasCholesterolIntakeMg() => $_has(43);
  @$pb.TagNumber(44)
  void clearCholesterolIntakeMg() => $_clearField(44);

  @$pb.TagNumber(45)
  $core.double get saturationAvgPercentage => $_getN(44);
  @$pb.TagNumber(45)
  set saturationAvgPercentage($core.double value) => $_setDouble(44, value);
  @$pb.TagNumber(45)
  $core.bool hasSaturationAvgPercentage() => $_has(44);
  @$pb.TagNumber(45)
  void clearSaturationAvgPercentage() => $_clearField(45);

  @$pb.TagNumber(46)
  $pb.PbList<SaturationGranularDataProto> get saturationGranularData => $_getList(45);

  @$pb.TagNumber(47)
  $core.double get vo2MaxMlPerMinPerKg => $_getN(46);
  @$pb.TagNumber(47)
  set vo2MaxMlPerMinPerKg($core.double value) => $_setDouble(46, value);
  @$pb.TagNumber(47)
  $core.bool hasVo2MaxMlPerMinPerKg() => $_has(46);
  @$pb.TagNumber(47)
  void clearVo2MaxMlPerMinPerKg() => $_clearField(47);

  @$pb.TagNumber(48)
  $pb.PbList<Vo2GranularDataProto> get vo2GranularData => $_getList(47);

  @$pb.TagNumber(49)
  $pb.PbList<TemperatureObjectProto> get temperatureMinimum => $_getList(48);

  @$pb.TagNumber(50)
  $pb.PbList<TemperatureObjectProto> get temperatureAvg => $_getList(49);

  @$pb.TagNumber(51)
  $pb.PbList<TemperatureObjectProto> get temperatureMaximum => $_getList(50);

  @$pb.TagNumber(52)
  $pb.PbList<TemperatureGranularDataProto> get temperatureGranularData => $_getList(51);

  @$pb.TagNumber(53)
  $pb.PbList<TemperatureObjectProto> get temperatureDelta => $_getList(52);

  @$pb.TagNumber(54)
  $core.String get lastUpdatedDatetime => $_getSZ(53);
  @$pb.TagNumber(54)
  set lastUpdatedDatetime($core.String value) => $_setString(53, value);
  @$pb.TagNumber(54)
  $core.bool hasLastUpdatedDatetime() => $_has(53);
  @$pb.TagNumber(54)
  void clearLastUpdatedDatetime() => $_clearField(54);

  @$pb.TagNumber(55)
  $core.String get periodStartDate => $_getSZ(54);
  @$pb.TagNumber(55)
  set periodStartDate($core.String value) => $_setString(54, value);
  @$pb.TagNumber(55)
  $core.bool hasPeriodStartDate() => $_has(54);
  @$pb.TagNumber(55)
  void clearPeriodStartDate() => $_clearField(55);

  @$pb.TagNumber(56)
  $core.int get cycleDay => $_getIZ(55);
  @$pb.TagNumber(56)
  set cycleDay($core.int value) => $_setSignedInt32(55, value);
  @$pb.TagNumber(56)
  $core.bool hasCycleDay() => $_has(55);
  @$pb.TagNumber(56)
  void clearCycleDay() => $_clearField(56);

  @$pb.TagNumber(57)
  $core.int get cycleLengthDays => $_getIZ(56);
  @$pb.TagNumber(57)
  set cycleLengthDays($core.int value) => $_setSignedInt32(56, value);
  @$pb.TagNumber(57)
  $core.bool hasCycleLengthDays() => $_has(56);
  @$pb.TagNumber(57)
  void clearCycleLengthDays() => $_clearField(57);

  @$pb.TagNumber(58)
  $core.int get predictedCycleLengthDays => $_getIZ(57);
  @$pb.TagNumber(58)
  set predictedCycleLengthDays($core.int value) => $_setSignedInt32(57, value);
  @$pb.TagNumber(58)
  $core.bool hasPredictedCycleLengthDays() => $_has(57);
  @$pb.TagNumber(58)
  void clearPredictedCycleLengthDays() => $_clearField(58);

  @$pb.TagNumber(59)
  $core.String get currentPhase => $_getSZ(58);
  @$pb.TagNumber(59)
  set currentPhase($core.String value) => $_setString(58, value);
  @$pb.TagNumber(59)
  $core.bool hasCurrentPhase() => $_has(58);
  @$pb.TagNumber(59)
  void clearCurrentPhase() => $_clearField(59);

  @$pb.TagNumber(60)
  $core.int get lengthOfCurrentPhaseDays => $_getIZ(59);
  @$pb.TagNumber(60)
  set lengthOfCurrentPhaseDays($core.int value) => $_setSignedInt32(59, value);
  @$pb.TagNumber(60)
  $core.bool hasLengthOfCurrentPhaseDays() => $_has(59);
  @$pb.TagNumber(60)
  void clearLengthOfCurrentPhaseDays() => $_clearField(60);

  @$pb.TagNumber(61)
  $core.int get daysUntilNextPhase => $_getIZ(60);
  @$pb.TagNumber(61)
  set daysUntilNextPhase($core.int value) => $_setSignedInt32(60, value);
  @$pb.TagNumber(61)
  $core.bool hasDaysUntilNextPhase() => $_has(60);
  @$pb.TagNumber(61)
  void clearDaysUntilNextPhase() => $_clearField(61);

  @$pb.TagNumber(62)
  $core.bool get isAPredictedCycleValue => $_getBF(61);
  @$pb.TagNumber(62)
  set isAPredictedCycleValue($core.bool value) => $_setBool(61, value);
  @$pb.TagNumber(62)
  $core.bool hasIsAPredictedCycleValue() => $_has(61);
  @$pb.TagNumber(62)
  void clearIsAPredictedCycleValue() => $_clearField(62);

  @$pb.TagNumber(63)
  $core.bool get isAPredictedCycleUnknown => $_getBF(62);
  @$pb.TagNumber(63)
  set isAPredictedCycleUnknown($core.bool value) => $_setBool(62, value);
  @$pb.TagNumber(63)
  $core.bool hasIsAPredictedCycleUnknown() => $_has(62);
  @$pb.TagNumber(63)
  void clearIsAPredictedCycleUnknown() => $_clearField(63);

  @$pb.TagNumber(64)
  $pb.PbList<MenstruationFlowGranularDataProto> get menstruationFlowGranularData => $_getList(63);
}

enum BodySummaryResultProto_Result {
  success, 
  failure, 
  notSet
}

class BodySummaryResultProto extends $pb.GeneratedMessage {
  factory BodySummaryResultProto({
    BodySummaryProto? success,
    SDKExceptionProto? failure,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (failure != null) result.failure = failure;
    return result;
  }

  BodySummaryResultProto._();

  factory BodySummaryResultProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory BodySummaryResultProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BodySummaryResultProto_Result> _BodySummaryResultProto_ResultByTag = {
    1 : BodySummaryResultProto_Result.success,
    2 : BodySummaryResultProto_Result.failure,
    0 : BodySummaryResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BodySummaryResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<BodySummaryProto>(1, _omitFieldNames ? '' : 'success', subBuilder: BodySummaryProto.create)
    ..aOM<SDKExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: SDKExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BodySummaryResultProto clone() => BodySummaryResultProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BodySummaryResultProto copyWith(void Function(BodySummaryResultProto) updates) => super.copyWith((message) => updates(message as BodySummaryResultProto)) as BodySummaryResultProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BodySummaryResultProto create() => BodySummaryResultProto._();
  @$core.override
  BodySummaryResultProto createEmptyInstance() => create();
  static $pb.PbList<BodySummaryResultProto> createRepeated() => $pb.PbList<BodySummaryResultProto>();
  @$core.pragma('dart2js:noInline')
  static BodySummaryResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BodySummaryResultProto>(create);
  static BodySummaryResultProto? _defaultInstance;

  BodySummaryResultProto_Result whichResult() => _BodySummaryResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BodySummaryProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(BodySummaryProto value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
  @$pb.TagNumber(1)
  BodySummaryProto ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  SDKExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(SDKExceptionProto value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => $_clearField(2);
  @$pb.TagNumber(2)
  SDKExceptionProto ensureFailure() => $_ensure(1);
}

class ActivityEventProto extends $pb.GeneratedMessage {
  factory ActivityEventProto({
    $core.String? dateTime,
    $core.String? sourceOfData,
    $core.bool? wasTheUserUnderPhysicalActivity,
    $core.String? activityStartDateTime,
    $core.String? activityEndDateTime,
    $core.int? activityDurationSeconds,
    $core.String? activityTypeName,
    $core.int? activeSeconds,
    $core.int? restSeconds,
    $core.int? lowIntensitySeconds,
    $core.int? moderateIntensitySeconds,
    $core.int? vigorousIntensitySeconds,
    $core.int? inactivitySeconds,
    $core.Iterable<ActivityLevelGranularDataProto>? activityLevelGranularData,
    $core.int? continuousInactivePeriods,
    $core.int? activityStrainLevel,
    $core.double? activityWorkKilojoules,
    $core.double? activityEnergyKilojoules,
    $core.double? activityEnergyPlannedKilojoules,
    $core.double? caloriesNetIntakeKcal,
    $core.double? caloriesExpenditureKcal,
    $core.double? caloriesNetActiveKcal,
    $core.double? caloriesBasalMetabolicRateKcal,
    $core.double? fatPercentageOfCalories,
    $core.double? carbohydratePercentageOfCalories,
    $core.double? proteinPercentageOfCalories,
    $core.int? steps,
    $core.Iterable<StepsGranularDataProto>? stepsGranularData,
    $core.double? walkedDistanceMeters,
    $core.double? traveledDistanceMeters,
    $core.Iterable<TraveledDistanceGranularDataProto>? traveledDistanceGranularData,
    $core.double? floorsClimbed,
    $core.Iterable<FloorsClimbedGranularDataProto>? floorsClimbedGranularData,
    $core.double? elevationAvgAltitudeMeters,
    $core.double? elevationMinimumAltitudeMeters,
    $core.double? elevationMaximumAltitudeMeters,
    $core.double? elevationLossActualAltitudeMeters,
    $core.double? elevationGainActualAltitudeMeters,
    $core.double? elevationPlannedGainMeters,
    $core.Iterable<ElevationGranularDataProto>? elevationGranularData,
    $core.int? swimmingNumStrokes,
    $core.int? swimmingNumLaps,
    $core.double? swimmingPoolLengthMeters,
    $core.double? swimmingTotalDistanceMeters,
    $core.Iterable<SwimmingDistanceGranularDataProto>? swimmingDistanceGranularData,
    $core.int? hrMaximumBpm,
    $core.int? hrMinimumBpm,
    $core.int? hrAvgBpm,
    $core.int? hrRestingBpm,
    $core.Iterable<HrGranularDataProto>? hrGranularData,
    $core.double? hrvAvgRmssd,
    $core.double? hrvAvgSdnn,
    $core.Iterable<HrvSdnnGranularDataProto>? hrvSdnnGranularData,
    $core.Iterable<HrvRmssdGranularDataProto>? hrvRmssdGranularData,
    $core.double? speedNormalizedMetersPerSecond,
    $core.double? speedAvgMetersPerSecond,
    $core.double? speedMaximumMetersPerSecond,
    $core.Iterable<SpeedGranularDataProto>? speedGranularData,
    $core.Iterable<VelocityObjectProto>? velocityAvg,
    $core.Iterable<VelocityObjectProto>? velocityMaximum,
    $core.double? paceAvgMinPerKm,
    $core.double? paceMaximumMinPerKm,
    $core.double? cadenceAvgRpm,
    $core.double? cadenceMaximumRpm,
    $core.Iterable<CadenceGranularDataProto>? cadenceGranularData,
    $core.double? torqueAvgNewtonMeters,
    $core.double? torqueMaximumNewtonMeters,
    $core.Iterable<TorqueGranularDataProto>? torqueGranularData,
    $core.Iterable<LapGranularDataProto>? lapGranularData,
    $core.double? saturationAvgPercentage,
    $core.Iterable<SaturationGranularDataProto>? saturationGranularData,
    $core.double? vo2MaxMlPerMinPerKg,
    $core.Iterable<Vo2GranularDataProto>? vo2GranularData,
    $core.Iterable<PositionObjectProto>? positionStart,
    $core.Iterable<PositionObjectProto>? positionCentroid,
    $core.Iterable<PositionObjectProto>? positionEnd,
    $core.Iterable<PositionGranularDataProto>? positionGranularData,
    $core.String? positionPolylineMapDataSummary,
    $core.double? powerAvgWatts,
    $core.double? powerMaximumWatts,
    $core.Iterable<PowerGranularDataProto>? powerGranularData,
    $core.int? stressAtRestDurationSeconds,
    $core.int? stressDurationSeconds,
    $core.int? lowStressDurationSeconds,
    $core.int? mediumStressDurationSeconds,
    $core.int? highStressDurationSeconds,
    $core.Iterable<TssGranularDataProto>? tssGranularData,
    $core.int? stressAvgLevel,
    $core.int? stressMaximumLevel,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (sourceOfData != null) result.sourceOfData = sourceOfData;
    if (wasTheUserUnderPhysicalActivity != null) result.wasTheUserUnderPhysicalActivity = wasTheUserUnderPhysicalActivity;
    if (activityStartDateTime != null) result.activityStartDateTime = activityStartDateTime;
    if (activityEndDateTime != null) result.activityEndDateTime = activityEndDateTime;
    if (activityDurationSeconds != null) result.activityDurationSeconds = activityDurationSeconds;
    if (activityTypeName != null) result.activityTypeName = activityTypeName;
    if (activeSeconds != null) result.activeSeconds = activeSeconds;
    if (restSeconds != null) result.restSeconds = restSeconds;
    if (lowIntensitySeconds != null) result.lowIntensitySeconds = lowIntensitySeconds;
    if (moderateIntensitySeconds != null) result.moderateIntensitySeconds = moderateIntensitySeconds;
    if (vigorousIntensitySeconds != null) result.vigorousIntensitySeconds = vigorousIntensitySeconds;
    if (inactivitySeconds != null) result.inactivitySeconds = inactivitySeconds;
    if (activityLevelGranularData != null) result.activityLevelGranularData.addAll(activityLevelGranularData);
    if (continuousInactivePeriods != null) result.continuousInactivePeriods = continuousInactivePeriods;
    if (activityStrainLevel != null) result.activityStrainLevel = activityStrainLevel;
    if (activityWorkKilojoules != null) result.activityWorkKilojoules = activityWorkKilojoules;
    if (activityEnergyKilojoules != null) result.activityEnergyKilojoules = activityEnergyKilojoules;
    if (activityEnergyPlannedKilojoules != null) result.activityEnergyPlannedKilojoules = activityEnergyPlannedKilojoules;
    if (caloriesNetIntakeKcal != null) result.caloriesNetIntakeKcal = caloriesNetIntakeKcal;
    if (caloriesExpenditureKcal != null) result.caloriesExpenditureKcal = caloriesExpenditureKcal;
    if (caloriesNetActiveKcal != null) result.caloriesNetActiveKcal = caloriesNetActiveKcal;
    if (caloriesBasalMetabolicRateKcal != null) result.caloriesBasalMetabolicRateKcal = caloriesBasalMetabolicRateKcal;
    if (fatPercentageOfCalories != null) result.fatPercentageOfCalories = fatPercentageOfCalories;
    if (carbohydratePercentageOfCalories != null) result.carbohydratePercentageOfCalories = carbohydratePercentageOfCalories;
    if (proteinPercentageOfCalories != null) result.proteinPercentageOfCalories = proteinPercentageOfCalories;
    if (steps != null) result.steps = steps;
    if (stepsGranularData != null) result.stepsGranularData.addAll(stepsGranularData);
    if (walkedDistanceMeters != null) result.walkedDistanceMeters = walkedDistanceMeters;
    if (traveledDistanceMeters != null) result.traveledDistanceMeters = traveledDistanceMeters;
    if (traveledDistanceGranularData != null) result.traveledDistanceGranularData.addAll(traveledDistanceGranularData);
    if (floorsClimbed != null) result.floorsClimbed = floorsClimbed;
    if (floorsClimbedGranularData != null) result.floorsClimbedGranularData.addAll(floorsClimbedGranularData);
    if (elevationAvgAltitudeMeters != null) result.elevationAvgAltitudeMeters = elevationAvgAltitudeMeters;
    if (elevationMinimumAltitudeMeters != null) result.elevationMinimumAltitudeMeters = elevationMinimumAltitudeMeters;
    if (elevationMaximumAltitudeMeters != null) result.elevationMaximumAltitudeMeters = elevationMaximumAltitudeMeters;
    if (elevationLossActualAltitudeMeters != null) result.elevationLossActualAltitudeMeters = elevationLossActualAltitudeMeters;
    if (elevationGainActualAltitudeMeters != null) result.elevationGainActualAltitudeMeters = elevationGainActualAltitudeMeters;
    if (elevationPlannedGainMeters != null) result.elevationPlannedGainMeters = elevationPlannedGainMeters;
    if (elevationGranularData != null) result.elevationGranularData.addAll(elevationGranularData);
    if (swimmingNumStrokes != null) result.swimmingNumStrokes = swimmingNumStrokes;
    if (swimmingNumLaps != null) result.swimmingNumLaps = swimmingNumLaps;
    if (swimmingPoolLengthMeters != null) result.swimmingPoolLengthMeters = swimmingPoolLengthMeters;
    if (swimmingTotalDistanceMeters != null) result.swimmingTotalDistanceMeters = swimmingTotalDistanceMeters;
    if (swimmingDistanceGranularData != null) result.swimmingDistanceGranularData.addAll(swimmingDistanceGranularData);
    if (hrMaximumBpm != null) result.hrMaximumBpm = hrMaximumBpm;
    if (hrMinimumBpm != null) result.hrMinimumBpm = hrMinimumBpm;
    if (hrAvgBpm != null) result.hrAvgBpm = hrAvgBpm;
    if (hrRestingBpm != null) result.hrRestingBpm = hrRestingBpm;
    if (hrGranularData != null) result.hrGranularData.addAll(hrGranularData);
    if (hrvAvgRmssd != null) result.hrvAvgRmssd = hrvAvgRmssd;
    if (hrvAvgSdnn != null) result.hrvAvgSdnn = hrvAvgSdnn;
    if (hrvSdnnGranularData != null) result.hrvSdnnGranularData.addAll(hrvSdnnGranularData);
    if (hrvRmssdGranularData != null) result.hrvRmssdGranularData.addAll(hrvRmssdGranularData);
    if (speedNormalizedMetersPerSecond != null) result.speedNormalizedMetersPerSecond = speedNormalizedMetersPerSecond;
    if (speedAvgMetersPerSecond != null) result.speedAvgMetersPerSecond = speedAvgMetersPerSecond;
    if (speedMaximumMetersPerSecond != null) result.speedMaximumMetersPerSecond = speedMaximumMetersPerSecond;
    if (speedGranularData != null) result.speedGranularData.addAll(speedGranularData);
    if (velocityAvg != null) result.velocityAvg.addAll(velocityAvg);
    if (velocityMaximum != null) result.velocityMaximum.addAll(velocityMaximum);
    if (paceAvgMinPerKm != null) result.paceAvgMinPerKm = paceAvgMinPerKm;
    if (paceMaximumMinPerKm != null) result.paceMaximumMinPerKm = paceMaximumMinPerKm;
    if (cadenceAvgRpm != null) result.cadenceAvgRpm = cadenceAvgRpm;
    if (cadenceMaximumRpm != null) result.cadenceMaximumRpm = cadenceMaximumRpm;
    if (cadenceGranularData != null) result.cadenceGranularData.addAll(cadenceGranularData);
    if (torqueAvgNewtonMeters != null) result.torqueAvgNewtonMeters = torqueAvgNewtonMeters;
    if (torqueMaximumNewtonMeters != null) result.torqueMaximumNewtonMeters = torqueMaximumNewtonMeters;
    if (torqueGranularData != null) result.torqueGranularData.addAll(torqueGranularData);
    if (lapGranularData != null) result.lapGranularData.addAll(lapGranularData);
    if (saturationAvgPercentage != null) result.saturationAvgPercentage = saturationAvgPercentage;
    if (saturationGranularData != null) result.saturationGranularData.addAll(saturationGranularData);
    if (vo2MaxMlPerMinPerKg != null) result.vo2MaxMlPerMinPerKg = vo2MaxMlPerMinPerKg;
    if (vo2GranularData != null) result.vo2GranularData.addAll(vo2GranularData);
    if (positionStart != null) result.positionStart.addAll(positionStart);
    if (positionCentroid != null) result.positionCentroid.addAll(positionCentroid);
    if (positionEnd != null) result.positionEnd.addAll(positionEnd);
    if (positionGranularData != null) result.positionGranularData.addAll(positionGranularData);
    if (positionPolylineMapDataSummary != null) result.positionPolylineMapDataSummary = positionPolylineMapDataSummary;
    if (powerAvgWatts != null) result.powerAvgWatts = powerAvgWatts;
    if (powerMaximumWatts != null) result.powerMaximumWatts = powerMaximumWatts;
    if (powerGranularData != null) result.powerGranularData.addAll(powerGranularData);
    if (stressAtRestDurationSeconds != null) result.stressAtRestDurationSeconds = stressAtRestDurationSeconds;
    if (stressDurationSeconds != null) result.stressDurationSeconds = stressDurationSeconds;
    if (lowStressDurationSeconds != null) result.lowStressDurationSeconds = lowStressDurationSeconds;
    if (mediumStressDurationSeconds != null) result.mediumStressDurationSeconds = mediumStressDurationSeconds;
    if (highStressDurationSeconds != null) result.highStressDurationSeconds = highStressDurationSeconds;
    if (tssGranularData != null) result.tssGranularData.addAll(tssGranularData);
    if (stressAvgLevel != null) result.stressAvgLevel = stressAvgLevel;
    if (stressMaximumLevel != null) result.stressMaximumLevel = stressMaximumLevel;
    return result;
  }

  ActivityEventProto._();

  factory ActivityEventProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ActivityEventProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivityEventProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..aOS(2, _omitFieldNames ? '' : 'sourceOfData', protoName: 'sourceOfData')
    ..aOB(3, _omitFieldNames ? '' : 'wasTheUserUnderPhysicalActivity', protoName: 'wasTheUserUnderPhysicalActivity')
    ..aOS(4, _omitFieldNames ? '' : 'activityStartDateTime', protoName: 'activityStartDateTime')
    ..aOS(5, _omitFieldNames ? '' : 'activityEndDateTime', protoName: 'activityEndDateTime')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'activityDurationSeconds', $pb.PbFieldType.OS3, protoName: 'activityDurationSeconds')
    ..aOS(7, _omitFieldNames ? '' : 'activityTypeName', protoName: 'activityTypeName')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'activeSeconds', $pb.PbFieldType.OS3, protoName: 'activeSeconds')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'restSeconds', $pb.PbFieldType.OS3, protoName: 'restSeconds')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'lowIntensitySeconds', $pb.PbFieldType.OS3, protoName: 'lowIntensitySeconds')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'moderateIntensitySeconds', $pb.PbFieldType.OS3, protoName: 'moderateIntensitySeconds')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'vigorousIntensitySeconds', $pb.PbFieldType.OS3, protoName: 'vigorousIntensitySeconds')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'inactivitySeconds', $pb.PbFieldType.OS3, protoName: 'inactivitySeconds')
    ..pc<ActivityLevelGranularDataProto>(14, _omitFieldNames ? '' : 'activityLevelGranularData', $pb.PbFieldType.PM, protoName: 'activityLevelGranularData', subBuilder: ActivityLevelGranularDataProto.create)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'continuousInactivePeriods', $pb.PbFieldType.OS3, protoName: 'continuousInactivePeriods')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'activityStrainLevel', $pb.PbFieldType.OS3, protoName: 'activityStrainLevel')
    ..a<$core.double>(17, _omitFieldNames ? '' : 'activityWorkKilojoules', $pb.PbFieldType.OD, protoName: 'activityWorkKilojoules')
    ..a<$core.double>(18, _omitFieldNames ? '' : 'activityEnergyKilojoules', $pb.PbFieldType.OD, protoName: 'activityEnergyKilojoules')
    ..a<$core.double>(19, _omitFieldNames ? '' : 'activityEnergyPlannedKilojoules', $pb.PbFieldType.OD, protoName: 'activityEnergyPlannedKilojoules')
    ..a<$core.double>(20, _omitFieldNames ? '' : 'caloriesNetIntakeKcal', $pb.PbFieldType.OD, protoName: 'caloriesNetIntakeKcal')
    ..a<$core.double>(21, _omitFieldNames ? '' : 'caloriesExpenditureKcal', $pb.PbFieldType.OD, protoName: 'caloriesExpenditureKcal')
    ..a<$core.double>(22, _omitFieldNames ? '' : 'caloriesNetActiveKcal', $pb.PbFieldType.OD, protoName: 'caloriesNetActiveKcal')
    ..a<$core.double>(23, _omitFieldNames ? '' : 'caloriesBasalMetabolicRateKcal', $pb.PbFieldType.OD, protoName: 'caloriesBasalMetabolicRateKcal')
    ..a<$core.double>(24, _omitFieldNames ? '' : 'fatPercentageOfCalories', $pb.PbFieldType.OD, protoName: 'fatPercentageOfCalories')
    ..a<$core.double>(25, _omitFieldNames ? '' : 'carbohydratePercentageOfCalories', $pb.PbFieldType.OD, protoName: 'carbohydratePercentageOfCalories')
    ..a<$core.double>(26, _omitFieldNames ? '' : 'proteinPercentageOfCalories', $pb.PbFieldType.OD, protoName: 'proteinPercentageOfCalories')
    ..a<$core.int>(27, _omitFieldNames ? '' : 'steps', $pb.PbFieldType.OS3)
    ..pc<StepsGranularDataProto>(28, _omitFieldNames ? '' : 'stepsGranularData', $pb.PbFieldType.PM, protoName: 'stepsGranularData', subBuilder: StepsGranularDataProto.create)
    ..a<$core.double>(29, _omitFieldNames ? '' : 'walkedDistanceMeters', $pb.PbFieldType.OD, protoName: 'walkedDistanceMeters')
    ..a<$core.double>(30, _omitFieldNames ? '' : 'traveledDistanceMeters', $pb.PbFieldType.OD, protoName: 'traveledDistanceMeters')
    ..pc<TraveledDistanceGranularDataProto>(31, _omitFieldNames ? '' : 'traveledDistanceGranularData', $pb.PbFieldType.PM, protoName: 'traveledDistanceGranularData', subBuilder: TraveledDistanceGranularDataProto.create)
    ..a<$core.double>(32, _omitFieldNames ? '' : 'floorsClimbed', $pb.PbFieldType.OD, protoName: 'floorsClimbed')
    ..pc<FloorsClimbedGranularDataProto>(33, _omitFieldNames ? '' : 'floorsClimbedGranularData', $pb.PbFieldType.PM, protoName: 'floorsClimbedGranularData', subBuilder: FloorsClimbedGranularDataProto.create)
    ..a<$core.double>(34, _omitFieldNames ? '' : 'elevationAvgAltitudeMeters', $pb.PbFieldType.OD, protoName: 'elevationAvgAltitudeMeters')
    ..a<$core.double>(35, _omitFieldNames ? '' : 'elevationMinimumAltitudeMeters', $pb.PbFieldType.OD, protoName: 'elevationMinimumAltitudeMeters')
    ..a<$core.double>(36, _omitFieldNames ? '' : 'elevationMaximumAltitudeMeters', $pb.PbFieldType.OD, protoName: 'elevationMaximumAltitudeMeters')
    ..a<$core.double>(37, _omitFieldNames ? '' : 'elevationLossActualAltitudeMeters', $pb.PbFieldType.OD, protoName: 'elevationLossActualAltitudeMeters')
    ..a<$core.double>(38, _omitFieldNames ? '' : 'elevationGainActualAltitudeMeters', $pb.PbFieldType.OD, protoName: 'elevationGainActualAltitudeMeters')
    ..a<$core.double>(39, _omitFieldNames ? '' : 'elevationPlannedGainMeters', $pb.PbFieldType.OD, protoName: 'elevationPlannedGainMeters')
    ..pc<ElevationGranularDataProto>(40, _omitFieldNames ? '' : 'elevationGranularData', $pb.PbFieldType.PM, protoName: 'elevationGranularData', subBuilder: ElevationGranularDataProto.create)
    ..a<$core.int>(41, _omitFieldNames ? '' : 'swimmingNumStrokes', $pb.PbFieldType.OS3, protoName: 'swimmingNumStrokes')
    ..a<$core.int>(42, _omitFieldNames ? '' : 'swimmingNumLaps', $pb.PbFieldType.OS3, protoName: 'swimmingNumLaps')
    ..a<$core.double>(43, _omitFieldNames ? '' : 'swimmingPoolLengthMeters', $pb.PbFieldType.OD, protoName: 'swimmingPoolLengthMeters')
    ..a<$core.double>(44, _omitFieldNames ? '' : 'swimmingTotalDistanceMeters', $pb.PbFieldType.OD, protoName: 'swimmingTotalDistanceMeters')
    ..pc<SwimmingDistanceGranularDataProto>(45, _omitFieldNames ? '' : 'swimmingDistanceGranularData', $pb.PbFieldType.PM, protoName: 'swimmingDistanceGranularData', subBuilder: SwimmingDistanceGranularDataProto.create)
    ..a<$core.int>(46, _omitFieldNames ? '' : 'hrMaximumBpm', $pb.PbFieldType.OS3, protoName: 'hrMaximumBpm')
    ..a<$core.int>(47, _omitFieldNames ? '' : 'hrMinimumBpm', $pb.PbFieldType.OS3, protoName: 'hrMinimumBpm')
    ..a<$core.int>(48, _omitFieldNames ? '' : 'hrAvgBpm', $pb.PbFieldType.OS3, protoName: 'hrAvgBpm')
    ..a<$core.int>(49, _omitFieldNames ? '' : 'hrRestingBpm', $pb.PbFieldType.OS3, protoName: 'hrRestingBpm')
    ..pc<HrGranularDataProto>(50, _omitFieldNames ? '' : 'hrGranularData', $pb.PbFieldType.PM, protoName: 'hrGranularData', subBuilder: HrGranularDataProto.create)
    ..a<$core.double>(51, _omitFieldNames ? '' : 'hrvAvgRmssd', $pb.PbFieldType.OD, protoName: 'hrvAvgRmssd')
    ..a<$core.double>(52, _omitFieldNames ? '' : 'hrvAvgSdnn', $pb.PbFieldType.OD, protoName: 'hrvAvgSdnn')
    ..pc<HrvSdnnGranularDataProto>(53, _omitFieldNames ? '' : 'hrvSdnnGranularData', $pb.PbFieldType.PM, protoName: 'hrvSdnnGranularData', subBuilder: HrvSdnnGranularDataProto.create)
    ..pc<HrvRmssdGranularDataProto>(54, _omitFieldNames ? '' : 'hrvRmssdGranularData', $pb.PbFieldType.PM, protoName: 'hrvRmssdGranularData', subBuilder: HrvRmssdGranularDataProto.create)
    ..a<$core.double>(55, _omitFieldNames ? '' : 'speedNormalizedMetersPerSecond', $pb.PbFieldType.OD, protoName: 'speedNormalizedMetersPerSecond')
    ..a<$core.double>(56, _omitFieldNames ? '' : 'speedAvgMetersPerSecond', $pb.PbFieldType.OD, protoName: 'speedAvgMetersPerSecond')
    ..a<$core.double>(57, _omitFieldNames ? '' : 'speedMaximumMetersPerSecond', $pb.PbFieldType.OD, protoName: 'speedMaximumMetersPerSecond')
    ..pc<SpeedGranularDataProto>(58, _omitFieldNames ? '' : 'speedGranularData', $pb.PbFieldType.PM, protoName: 'speedGranularData', subBuilder: SpeedGranularDataProto.create)
    ..pc<VelocityObjectProto>(59, _omitFieldNames ? '' : 'velocityAvg', $pb.PbFieldType.PM, protoName: 'velocityAvg', subBuilder: VelocityObjectProto.create)
    ..pc<VelocityObjectProto>(60, _omitFieldNames ? '' : 'velocityMaximum', $pb.PbFieldType.PM, protoName: 'velocityMaximum', subBuilder: VelocityObjectProto.create)
    ..a<$core.double>(61, _omitFieldNames ? '' : 'paceAvgMinPerKm', $pb.PbFieldType.OD, protoName: 'paceAvgMinPerKm')
    ..a<$core.double>(62, _omitFieldNames ? '' : 'paceMaximumMinPerKm', $pb.PbFieldType.OD, protoName: 'paceMaximumMinPerKm')
    ..a<$core.double>(63, _omitFieldNames ? '' : 'cadenceAvgRpm', $pb.PbFieldType.OD, protoName: 'cadenceAvgRpm')
    ..a<$core.double>(64, _omitFieldNames ? '' : 'cadenceMaximumRpm', $pb.PbFieldType.OD, protoName: 'cadenceMaximumRpm')
    ..pc<CadenceGranularDataProto>(65, _omitFieldNames ? '' : 'cadenceGranularData', $pb.PbFieldType.PM, protoName: 'cadenceGranularData', subBuilder: CadenceGranularDataProto.create)
    ..a<$core.double>(66, _omitFieldNames ? '' : 'torqueAvgNewtonMeters', $pb.PbFieldType.OD, protoName: 'torqueAvgNewtonMeters')
    ..a<$core.double>(67, _omitFieldNames ? '' : 'torqueMaximumNewtonMeters', $pb.PbFieldType.OD, protoName: 'torqueMaximumNewtonMeters')
    ..pc<TorqueGranularDataProto>(68, _omitFieldNames ? '' : 'torqueGranularData', $pb.PbFieldType.PM, protoName: 'torqueGranularData', subBuilder: TorqueGranularDataProto.create)
    ..pc<LapGranularDataProto>(69, _omitFieldNames ? '' : 'lapGranularData', $pb.PbFieldType.PM, protoName: 'lapGranularData', subBuilder: LapGranularDataProto.create)
    ..a<$core.double>(70, _omitFieldNames ? '' : 'saturationAvgPercentage', $pb.PbFieldType.OD, protoName: 'saturationAvgPercentage')
    ..pc<SaturationGranularDataProto>(71, _omitFieldNames ? '' : 'saturationGranularData', $pb.PbFieldType.PM, protoName: 'saturationGranularData', subBuilder: SaturationGranularDataProto.create)
    ..a<$core.double>(72, _omitFieldNames ? '' : 'vo2MaxMlPerMinPerKg', $pb.PbFieldType.OD, protoName: 'vo2MaxMlPerMinPerKg')
    ..pc<Vo2GranularDataProto>(73, _omitFieldNames ? '' : 'vo2GranularData', $pb.PbFieldType.PM, protoName: 'vo2GranularData', subBuilder: Vo2GranularDataProto.create)
    ..pc<PositionObjectProto>(74, _omitFieldNames ? '' : 'positionStart', $pb.PbFieldType.PM, protoName: 'positionStart', subBuilder: PositionObjectProto.create)
    ..pc<PositionObjectProto>(75, _omitFieldNames ? '' : 'positionCentroid', $pb.PbFieldType.PM, protoName: 'positionCentroid', subBuilder: PositionObjectProto.create)
    ..pc<PositionObjectProto>(76, _omitFieldNames ? '' : 'positionEnd', $pb.PbFieldType.PM, protoName: 'positionEnd', subBuilder: PositionObjectProto.create)
    ..pc<PositionGranularDataProto>(77, _omitFieldNames ? '' : 'positionGranularData', $pb.PbFieldType.PM, protoName: 'positionGranularData', subBuilder: PositionGranularDataProto.create)
    ..aOS(78, _omitFieldNames ? '' : 'positionPolylineMapDataSummary', protoName: 'positionPolylineMapDataSummary')
    ..a<$core.double>(79, _omitFieldNames ? '' : 'powerAvgWatts', $pb.PbFieldType.OD, protoName: 'powerAvgWatts')
    ..a<$core.double>(80, _omitFieldNames ? '' : 'powerMaximumWatts', $pb.PbFieldType.OD, protoName: 'powerMaximumWatts')
    ..pc<PowerGranularDataProto>(81, _omitFieldNames ? '' : 'powerGranularData', $pb.PbFieldType.PM, protoName: 'powerGranularData', subBuilder: PowerGranularDataProto.create)
    ..a<$core.int>(82, _omitFieldNames ? '' : 'stressAtRestDurationSeconds', $pb.PbFieldType.OS3, protoName: 'stressAtRestDurationSeconds')
    ..a<$core.int>(83, _omitFieldNames ? '' : 'stressDurationSeconds', $pb.PbFieldType.OS3, protoName: 'stressDurationSeconds')
    ..a<$core.int>(84, _omitFieldNames ? '' : 'lowStressDurationSeconds', $pb.PbFieldType.OS3, protoName: 'lowStressDurationSeconds')
    ..a<$core.int>(85, _omitFieldNames ? '' : 'mediumStressDurationSeconds', $pb.PbFieldType.OS3, protoName: 'mediumStressDurationSeconds')
    ..a<$core.int>(86, _omitFieldNames ? '' : 'highStressDurationSeconds', $pb.PbFieldType.OS3, protoName: 'highStressDurationSeconds')
    ..pc<TssGranularDataProto>(87, _omitFieldNames ? '' : 'tssGranularData', $pb.PbFieldType.PM, protoName: 'tssGranularData', subBuilder: TssGranularDataProto.create)
    ..a<$core.int>(88, _omitFieldNames ? '' : 'stressAvgLevel', $pb.PbFieldType.OS3, protoName: 'stressAvgLevel')
    ..a<$core.int>(89, _omitFieldNames ? '' : 'stressMaximumLevel', $pb.PbFieldType.OS3, protoName: 'stressMaximumLevel')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityEventProto clone() => ActivityEventProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityEventProto copyWith(void Function(ActivityEventProto) updates) => super.copyWith((message) => updates(message as ActivityEventProto)) as ActivityEventProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityEventProto create() => ActivityEventProto._();
  @$core.override
  ActivityEventProto createEmptyInstance() => create();
  static $pb.PbList<ActivityEventProto> createRepeated() => $pb.PbList<ActivityEventProto>();
  @$core.pragma('dart2js:noInline')
  static ActivityEventProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivityEventProto>(create);
  static ActivityEventProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sourceOfData => $_getSZ(1);
  @$pb.TagNumber(2)
  set sourceOfData($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSourceOfData() => $_has(1);
  @$pb.TagNumber(2)
  void clearSourceOfData() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get wasTheUserUnderPhysicalActivity => $_getBF(2);
  @$pb.TagNumber(3)
  set wasTheUserUnderPhysicalActivity($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWasTheUserUnderPhysicalActivity() => $_has(2);
  @$pb.TagNumber(3)
  void clearWasTheUserUnderPhysicalActivity() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get activityStartDateTime => $_getSZ(3);
  @$pb.TagNumber(4)
  set activityStartDateTime($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasActivityStartDateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearActivityStartDateTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get activityEndDateTime => $_getSZ(4);
  @$pb.TagNumber(5)
  set activityEndDateTime($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasActivityEndDateTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearActivityEndDateTime() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get activityDurationSeconds => $_getIZ(5);
  @$pb.TagNumber(6)
  set activityDurationSeconds($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasActivityDurationSeconds() => $_has(5);
  @$pb.TagNumber(6)
  void clearActivityDurationSeconds() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get activityTypeName => $_getSZ(6);
  @$pb.TagNumber(7)
  set activityTypeName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasActivityTypeName() => $_has(6);
  @$pb.TagNumber(7)
  void clearActivityTypeName() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get activeSeconds => $_getIZ(7);
  @$pb.TagNumber(8)
  set activeSeconds($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasActiveSeconds() => $_has(7);
  @$pb.TagNumber(8)
  void clearActiveSeconds() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get restSeconds => $_getIZ(8);
  @$pb.TagNumber(9)
  set restSeconds($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasRestSeconds() => $_has(8);
  @$pb.TagNumber(9)
  void clearRestSeconds() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get lowIntensitySeconds => $_getIZ(9);
  @$pb.TagNumber(10)
  set lowIntensitySeconds($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasLowIntensitySeconds() => $_has(9);
  @$pb.TagNumber(10)
  void clearLowIntensitySeconds() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get moderateIntensitySeconds => $_getIZ(10);
  @$pb.TagNumber(11)
  set moderateIntensitySeconds($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasModerateIntensitySeconds() => $_has(10);
  @$pb.TagNumber(11)
  void clearModerateIntensitySeconds() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get vigorousIntensitySeconds => $_getIZ(11);
  @$pb.TagNumber(12)
  set vigorousIntensitySeconds($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasVigorousIntensitySeconds() => $_has(11);
  @$pb.TagNumber(12)
  void clearVigorousIntensitySeconds() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get inactivitySeconds => $_getIZ(12);
  @$pb.TagNumber(13)
  set inactivitySeconds($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasInactivitySeconds() => $_has(12);
  @$pb.TagNumber(13)
  void clearInactivitySeconds() => $_clearField(13);

  @$pb.TagNumber(14)
  $pb.PbList<ActivityLevelGranularDataProto> get activityLevelGranularData => $_getList(13);

  @$pb.TagNumber(15)
  $core.int get continuousInactivePeriods => $_getIZ(14);
  @$pb.TagNumber(15)
  set continuousInactivePeriods($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasContinuousInactivePeriods() => $_has(14);
  @$pb.TagNumber(15)
  void clearContinuousInactivePeriods() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get activityStrainLevel => $_getIZ(15);
  @$pb.TagNumber(16)
  set activityStrainLevel($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasActivityStrainLevel() => $_has(15);
  @$pb.TagNumber(16)
  void clearActivityStrainLevel() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.double get activityWorkKilojoules => $_getN(16);
  @$pb.TagNumber(17)
  set activityWorkKilojoules($core.double value) => $_setDouble(16, value);
  @$pb.TagNumber(17)
  $core.bool hasActivityWorkKilojoules() => $_has(16);
  @$pb.TagNumber(17)
  void clearActivityWorkKilojoules() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.double get activityEnergyKilojoules => $_getN(17);
  @$pb.TagNumber(18)
  set activityEnergyKilojoules($core.double value) => $_setDouble(17, value);
  @$pb.TagNumber(18)
  $core.bool hasActivityEnergyKilojoules() => $_has(17);
  @$pb.TagNumber(18)
  void clearActivityEnergyKilojoules() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.double get activityEnergyPlannedKilojoules => $_getN(18);
  @$pb.TagNumber(19)
  set activityEnergyPlannedKilojoules($core.double value) => $_setDouble(18, value);
  @$pb.TagNumber(19)
  $core.bool hasActivityEnergyPlannedKilojoules() => $_has(18);
  @$pb.TagNumber(19)
  void clearActivityEnergyPlannedKilojoules() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.double get caloriesNetIntakeKcal => $_getN(19);
  @$pb.TagNumber(20)
  set caloriesNetIntakeKcal($core.double value) => $_setDouble(19, value);
  @$pb.TagNumber(20)
  $core.bool hasCaloriesNetIntakeKcal() => $_has(19);
  @$pb.TagNumber(20)
  void clearCaloriesNetIntakeKcal() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.double get caloriesExpenditureKcal => $_getN(20);
  @$pb.TagNumber(21)
  set caloriesExpenditureKcal($core.double value) => $_setDouble(20, value);
  @$pb.TagNumber(21)
  $core.bool hasCaloriesExpenditureKcal() => $_has(20);
  @$pb.TagNumber(21)
  void clearCaloriesExpenditureKcal() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.double get caloriesNetActiveKcal => $_getN(21);
  @$pb.TagNumber(22)
  set caloriesNetActiveKcal($core.double value) => $_setDouble(21, value);
  @$pb.TagNumber(22)
  $core.bool hasCaloriesNetActiveKcal() => $_has(21);
  @$pb.TagNumber(22)
  void clearCaloriesNetActiveKcal() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.double get caloriesBasalMetabolicRateKcal => $_getN(22);
  @$pb.TagNumber(23)
  set caloriesBasalMetabolicRateKcal($core.double value) => $_setDouble(22, value);
  @$pb.TagNumber(23)
  $core.bool hasCaloriesBasalMetabolicRateKcal() => $_has(22);
  @$pb.TagNumber(23)
  void clearCaloriesBasalMetabolicRateKcal() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.double get fatPercentageOfCalories => $_getN(23);
  @$pb.TagNumber(24)
  set fatPercentageOfCalories($core.double value) => $_setDouble(23, value);
  @$pb.TagNumber(24)
  $core.bool hasFatPercentageOfCalories() => $_has(23);
  @$pb.TagNumber(24)
  void clearFatPercentageOfCalories() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.double get carbohydratePercentageOfCalories => $_getN(24);
  @$pb.TagNumber(25)
  set carbohydratePercentageOfCalories($core.double value) => $_setDouble(24, value);
  @$pb.TagNumber(25)
  $core.bool hasCarbohydratePercentageOfCalories() => $_has(24);
  @$pb.TagNumber(25)
  void clearCarbohydratePercentageOfCalories() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.double get proteinPercentageOfCalories => $_getN(25);
  @$pb.TagNumber(26)
  set proteinPercentageOfCalories($core.double value) => $_setDouble(25, value);
  @$pb.TagNumber(26)
  $core.bool hasProteinPercentageOfCalories() => $_has(25);
  @$pb.TagNumber(26)
  void clearProteinPercentageOfCalories() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.int get steps => $_getIZ(26);
  @$pb.TagNumber(27)
  set steps($core.int value) => $_setSignedInt32(26, value);
  @$pb.TagNumber(27)
  $core.bool hasSteps() => $_has(26);
  @$pb.TagNumber(27)
  void clearSteps() => $_clearField(27);

  @$pb.TagNumber(28)
  $pb.PbList<StepsGranularDataProto> get stepsGranularData => $_getList(27);

  @$pb.TagNumber(29)
  $core.double get walkedDistanceMeters => $_getN(28);
  @$pb.TagNumber(29)
  set walkedDistanceMeters($core.double value) => $_setDouble(28, value);
  @$pb.TagNumber(29)
  $core.bool hasWalkedDistanceMeters() => $_has(28);
  @$pb.TagNumber(29)
  void clearWalkedDistanceMeters() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.double get traveledDistanceMeters => $_getN(29);
  @$pb.TagNumber(30)
  set traveledDistanceMeters($core.double value) => $_setDouble(29, value);
  @$pb.TagNumber(30)
  $core.bool hasTraveledDistanceMeters() => $_has(29);
  @$pb.TagNumber(30)
  void clearTraveledDistanceMeters() => $_clearField(30);

  @$pb.TagNumber(31)
  $pb.PbList<TraveledDistanceGranularDataProto> get traveledDistanceGranularData => $_getList(30);

  @$pb.TagNumber(32)
  $core.double get floorsClimbed => $_getN(31);
  @$pb.TagNumber(32)
  set floorsClimbed($core.double value) => $_setDouble(31, value);
  @$pb.TagNumber(32)
  $core.bool hasFloorsClimbed() => $_has(31);
  @$pb.TagNumber(32)
  void clearFloorsClimbed() => $_clearField(32);

  @$pb.TagNumber(33)
  $pb.PbList<FloorsClimbedGranularDataProto> get floorsClimbedGranularData => $_getList(32);

  @$pb.TagNumber(34)
  $core.double get elevationAvgAltitudeMeters => $_getN(33);
  @$pb.TagNumber(34)
  set elevationAvgAltitudeMeters($core.double value) => $_setDouble(33, value);
  @$pb.TagNumber(34)
  $core.bool hasElevationAvgAltitudeMeters() => $_has(33);
  @$pb.TagNumber(34)
  void clearElevationAvgAltitudeMeters() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.double get elevationMinimumAltitudeMeters => $_getN(34);
  @$pb.TagNumber(35)
  set elevationMinimumAltitudeMeters($core.double value) => $_setDouble(34, value);
  @$pb.TagNumber(35)
  $core.bool hasElevationMinimumAltitudeMeters() => $_has(34);
  @$pb.TagNumber(35)
  void clearElevationMinimumAltitudeMeters() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.double get elevationMaximumAltitudeMeters => $_getN(35);
  @$pb.TagNumber(36)
  set elevationMaximumAltitudeMeters($core.double value) => $_setDouble(35, value);
  @$pb.TagNumber(36)
  $core.bool hasElevationMaximumAltitudeMeters() => $_has(35);
  @$pb.TagNumber(36)
  void clearElevationMaximumAltitudeMeters() => $_clearField(36);

  @$pb.TagNumber(37)
  $core.double get elevationLossActualAltitudeMeters => $_getN(36);
  @$pb.TagNumber(37)
  set elevationLossActualAltitudeMeters($core.double value) => $_setDouble(36, value);
  @$pb.TagNumber(37)
  $core.bool hasElevationLossActualAltitudeMeters() => $_has(36);
  @$pb.TagNumber(37)
  void clearElevationLossActualAltitudeMeters() => $_clearField(37);

  @$pb.TagNumber(38)
  $core.double get elevationGainActualAltitudeMeters => $_getN(37);
  @$pb.TagNumber(38)
  set elevationGainActualAltitudeMeters($core.double value) => $_setDouble(37, value);
  @$pb.TagNumber(38)
  $core.bool hasElevationGainActualAltitudeMeters() => $_has(37);
  @$pb.TagNumber(38)
  void clearElevationGainActualAltitudeMeters() => $_clearField(38);

  @$pb.TagNumber(39)
  $core.double get elevationPlannedGainMeters => $_getN(38);
  @$pb.TagNumber(39)
  set elevationPlannedGainMeters($core.double value) => $_setDouble(38, value);
  @$pb.TagNumber(39)
  $core.bool hasElevationPlannedGainMeters() => $_has(38);
  @$pb.TagNumber(39)
  void clearElevationPlannedGainMeters() => $_clearField(39);

  @$pb.TagNumber(40)
  $pb.PbList<ElevationGranularDataProto> get elevationGranularData => $_getList(39);

  @$pb.TagNumber(41)
  $core.int get swimmingNumStrokes => $_getIZ(40);
  @$pb.TagNumber(41)
  set swimmingNumStrokes($core.int value) => $_setSignedInt32(40, value);
  @$pb.TagNumber(41)
  $core.bool hasSwimmingNumStrokes() => $_has(40);
  @$pb.TagNumber(41)
  void clearSwimmingNumStrokes() => $_clearField(41);

  @$pb.TagNumber(42)
  $core.int get swimmingNumLaps => $_getIZ(41);
  @$pb.TagNumber(42)
  set swimmingNumLaps($core.int value) => $_setSignedInt32(41, value);
  @$pb.TagNumber(42)
  $core.bool hasSwimmingNumLaps() => $_has(41);
  @$pb.TagNumber(42)
  void clearSwimmingNumLaps() => $_clearField(42);

  @$pb.TagNumber(43)
  $core.double get swimmingPoolLengthMeters => $_getN(42);
  @$pb.TagNumber(43)
  set swimmingPoolLengthMeters($core.double value) => $_setDouble(42, value);
  @$pb.TagNumber(43)
  $core.bool hasSwimmingPoolLengthMeters() => $_has(42);
  @$pb.TagNumber(43)
  void clearSwimmingPoolLengthMeters() => $_clearField(43);

  @$pb.TagNumber(44)
  $core.double get swimmingTotalDistanceMeters => $_getN(43);
  @$pb.TagNumber(44)
  set swimmingTotalDistanceMeters($core.double value) => $_setDouble(43, value);
  @$pb.TagNumber(44)
  $core.bool hasSwimmingTotalDistanceMeters() => $_has(43);
  @$pb.TagNumber(44)
  void clearSwimmingTotalDistanceMeters() => $_clearField(44);

  @$pb.TagNumber(45)
  $pb.PbList<SwimmingDistanceGranularDataProto> get swimmingDistanceGranularData => $_getList(44);

  @$pb.TagNumber(46)
  $core.int get hrMaximumBpm => $_getIZ(45);
  @$pb.TagNumber(46)
  set hrMaximumBpm($core.int value) => $_setSignedInt32(45, value);
  @$pb.TagNumber(46)
  $core.bool hasHrMaximumBpm() => $_has(45);
  @$pb.TagNumber(46)
  void clearHrMaximumBpm() => $_clearField(46);

  @$pb.TagNumber(47)
  $core.int get hrMinimumBpm => $_getIZ(46);
  @$pb.TagNumber(47)
  set hrMinimumBpm($core.int value) => $_setSignedInt32(46, value);
  @$pb.TagNumber(47)
  $core.bool hasHrMinimumBpm() => $_has(46);
  @$pb.TagNumber(47)
  void clearHrMinimumBpm() => $_clearField(47);

  @$pb.TagNumber(48)
  $core.int get hrAvgBpm => $_getIZ(47);
  @$pb.TagNumber(48)
  set hrAvgBpm($core.int value) => $_setSignedInt32(47, value);
  @$pb.TagNumber(48)
  $core.bool hasHrAvgBpm() => $_has(47);
  @$pb.TagNumber(48)
  void clearHrAvgBpm() => $_clearField(48);

  @$pb.TagNumber(49)
  $core.int get hrRestingBpm => $_getIZ(48);
  @$pb.TagNumber(49)
  set hrRestingBpm($core.int value) => $_setSignedInt32(48, value);
  @$pb.TagNumber(49)
  $core.bool hasHrRestingBpm() => $_has(48);
  @$pb.TagNumber(49)
  void clearHrRestingBpm() => $_clearField(49);

  @$pb.TagNumber(50)
  $pb.PbList<HrGranularDataProto> get hrGranularData => $_getList(49);

  @$pb.TagNumber(51)
  $core.double get hrvAvgRmssd => $_getN(50);
  @$pb.TagNumber(51)
  set hrvAvgRmssd($core.double value) => $_setDouble(50, value);
  @$pb.TagNumber(51)
  $core.bool hasHrvAvgRmssd() => $_has(50);
  @$pb.TagNumber(51)
  void clearHrvAvgRmssd() => $_clearField(51);

  @$pb.TagNumber(52)
  $core.double get hrvAvgSdnn => $_getN(51);
  @$pb.TagNumber(52)
  set hrvAvgSdnn($core.double value) => $_setDouble(51, value);
  @$pb.TagNumber(52)
  $core.bool hasHrvAvgSdnn() => $_has(51);
  @$pb.TagNumber(52)
  void clearHrvAvgSdnn() => $_clearField(52);

  @$pb.TagNumber(53)
  $pb.PbList<HrvSdnnGranularDataProto> get hrvSdnnGranularData => $_getList(52);

  @$pb.TagNumber(54)
  $pb.PbList<HrvRmssdGranularDataProto> get hrvRmssdGranularData => $_getList(53);

  @$pb.TagNumber(55)
  $core.double get speedNormalizedMetersPerSecond => $_getN(54);
  @$pb.TagNumber(55)
  set speedNormalizedMetersPerSecond($core.double value) => $_setDouble(54, value);
  @$pb.TagNumber(55)
  $core.bool hasSpeedNormalizedMetersPerSecond() => $_has(54);
  @$pb.TagNumber(55)
  void clearSpeedNormalizedMetersPerSecond() => $_clearField(55);

  @$pb.TagNumber(56)
  $core.double get speedAvgMetersPerSecond => $_getN(55);
  @$pb.TagNumber(56)
  set speedAvgMetersPerSecond($core.double value) => $_setDouble(55, value);
  @$pb.TagNumber(56)
  $core.bool hasSpeedAvgMetersPerSecond() => $_has(55);
  @$pb.TagNumber(56)
  void clearSpeedAvgMetersPerSecond() => $_clearField(56);

  @$pb.TagNumber(57)
  $core.double get speedMaximumMetersPerSecond => $_getN(56);
  @$pb.TagNumber(57)
  set speedMaximumMetersPerSecond($core.double value) => $_setDouble(56, value);
  @$pb.TagNumber(57)
  $core.bool hasSpeedMaximumMetersPerSecond() => $_has(56);
  @$pb.TagNumber(57)
  void clearSpeedMaximumMetersPerSecond() => $_clearField(57);

  @$pb.TagNumber(58)
  $pb.PbList<SpeedGranularDataProto> get speedGranularData => $_getList(57);

  @$pb.TagNumber(59)
  $pb.PbList<VelocityObjectProto> get velocityAvg => $_getList(58);

  @$pb.TagNumber(60)
  $pb.PbList<VelocityObjectProto> get velocityMaximum => $_getList(59);

  @$pb.TagNumber(61)
  $core.double get paceAvgMinPerKm => $_getN(60);
  @$pb.TagNumber(61)
  set paceAvgMinPerKm($core.double value) => $_setDouble(60, value);
  @$pb.TagNumber(61)
  $core.bool hasPaceAvgMinPerKm() => $_has(60);
  @$pb.TagNumber(61)
  void clearPaceAvgMinPerKm() => $_clearField(61);

  @$pb.TagNumber(62)
  $core.double get paceMaximumMinPerKm => $_getN(61);
  @$pb.TagNumber(62)
  set paceMaximumMinPerKm($core.double value) => $_setDouble(61, value);
  @$pb.TagNumber(62)
  $core.bool hasPaceMaximumMinPerKm() => $_has(61);
  @$pb.TagNumber(62)
  void clearPaceMaximumMinPerKm() => $_clearField(62);

  @$pb.TagNumber(63)
  $core.double get cadenceAvgRpm => $_getN(62);
  @$pb.TagNumber(63)
  set cadenceAvgRpm($core.double value) => $_setDouble(62, value);
  @$pb.TagNumber(63)
  $core.bool hasCadenceAvgRpm() => $_has(62);
  @$pb.TagNumber(63)
  void clearCadenceAvgRpm() => $_clearField(63);

  @$pb.TagNumber(64)
  $core.double get cadenceMaximumRpm => $_getN(63);
  @$pb.TagNumber(64)
  set cadenceMaximumRpm($core.double value) => $_setDouble(63, value);
  @$pb.TagNumber(64)
  $core.bool hasCadenceMaximumRpm() => $_has(63);
  @$pb.TagNumber(64)
  void clearCadenceMaximumRpm() => $_clearField(64);

  @$pb.TagNumber(65)
  $pb.PbList<CadenceGranularDataProto> get cadenceGranularData => $_getList(64);

  @$pb.TagNumber(66)
  $core.double get torqueAvgNewtonMeters => $_getN(65);
  @$pb.TagNumber(66)
  set torqueAvgNewtonMeters($core.double value) => $_setDouble(65, value);
  @$pb.TagNumber(66)
  $core.bool hasTorqueAvgNewtonMeters() => $_has(65);
  @$pb.TagNumber(66)
  void clearTorqueAvgNewtonMeters() => $_clearField(66);

  @$pb.TagNumber(67)
  $core.double get torqueMaximumNewtonMeters => $_getN(66);
  @$pb.TagNumber(67)
  set torqueMaximumNewtonMeters($core.double value) => $_setDouble(66, value);
  @$pb.TagNumber(67)
  $core.bool hasTorqueMaximumNewtonMeters() => $_has(66);
  @$pb.TagNumber(67)
  void clearTorqueMaximumNewtonMeters() => $_clearField(67);

  @$pb.TagNumber(68)
  $pb.PbList<TorqueGranularDataProto> get torqueGranularData => $_getList(67);

  @$pb.TagNumber(69)
  $pb.PbList<LapGranularDataProto> get lapGranularData => $_getList(68);

  @$pb.TagNumber(70)
  $core.double get saturationAvgPercentage => $_getN(69);
  @$pb.TagNumber(70)
  set saturationAvgPercentage($core.double value) => $_setDouble(69, value);
  @$pb.TagNumber(70)
  $core.bool hasSaturationAvgPercentage() => $_has(69);
  @$pb.TagNumber(70)
  void clearSaturationAvgPercentage() => $_clearField(70);

  @$pb.TagNumber(71)
  $pb.PbList<SaturationGranularDataProto> get saturationGranularData => $_getList(70);

  @$pb.TagNumber(72)
  $core.double get vo2MaxMlPerMinPerKg => $_getN(71);
  @$pb.TagNumber(72)
  set vo2MaxMlPerMinPerKg($core.double value) => $_setDouble(71, value);
  @$pb.TagNumber(72)
  $core.bool hasVo2MaxMlPerMinPerKg() => $_has(71);
  @$pb.TagNumber(72)
  void clearVo2MaxMlPerMinPerKg() => $_clearField(72);

  @$pb.TagNumber(73)
  $pb.PbList<Vo2GranularDataProto> get vo2GranularData => $_getList(72);

  @$pb.TagNumber(74)
  $pb.PbList<PositionObjectProto> get positionStart => $_getList(73);

  @$pb.TagNumber(75)
  $pb.PbList<PositionObjectProto> get positionCentroid => $_getList(74);

  @$pb.TagNumber(76)
  $pb.PbList<PositionObjectProto> get positionEnd => $_getList(75);

  @$pb.TagNumber(77)
  $pb.PbList<PositionGranularDataProto> get positionGranularData => $_getList(76);

  @$pb.TagNumber(78)
  $core.String get positionPolylineMapDataSummary => $_getSZ(77);
  @$pb.TagNumber(78)
  set positionPolylineMapDataSummary($core.String value) => $_setString(77, value);
  @$pb.TagNumber(78)
  $core.bool hasPositionPolylineMapDataSummary() => $_has(77);
  @$pb.TagNumber(78)
  void clearPositionPolylineMapDataSummary() => $_clearField(78);

  @$pb.TagNumber(79)
  $core.double get powerAvgWatts => $_getN(78);
  @$pb.TagNumber(79)
  set powerAvgWatts($core.double value) => $_setDouble(78, value);
  @$pb.TagNumber(79)
  $core.bool hasPowerAvgWatts() => $_has(78);
  @$pb.TagNumber(79)
  void clearPowerAvgWatts() => $_clearField(79);

  @$pb.TagNumber(80)
  $core.double get powerMaximumWatts => $_getN(79);
  @$pb.TagNumber(80)
  set powerMaximumWatts($core.double value) => $_setDouble(79, value);
  @$pb.TagNumber(80)
  $core.bool hasPowerMaximumWatts() => $_has(79);
  @$pb.TagNumber(80)
  void clearPowerMaximumWatts() => $_clearField(80);

  @$pb.TagNumber(81)
  $pb.PbList<PowerGranularDataProto> get powerGranularData => $_getList(80);

  @$pb.TagNumber(82)
  $core.int get stressAtRestDurationSeconds => $_getIZ(81);
  @$pb.TagNumber(82)
  set stressAtRestDurationSeconds($core.int value) => $_setSignedInt32(81, value);
  @$pb.TagNumber(82)
  $core.bool hasStressAtRestDurationSeconds() => $_has(81);
  @$pb.TagNumber(82)
  void clearStressAtRestDurationSeconds() => $_clearField(82);

  @$pb.TagNumber(83)
  $core.int get stressDurationSeconds => $_getIZ(82);
  @$pb.TagNumber(83)
  set stressDurationSeconds($core.int value) => $_setSignedInt32(82, value);
  @$pb.TagNumber(83)
  $core.bool hasStressDurationSeconds() => $_has(82);
  @$pb.TagNumber(83)
  void clearStressDurationSeconds() => $_clearField(83);

  @$pb.TagNumber(84)
  $core.int get lowStressDurationSeconds => $_getIZ(83);
  @$pb.TagNumber(84)
  set lowStressDurationSeconds($core.int value) => $_setSignedInt32(83, value);
  @$pb.TagNumber(84)
  $core.bool hasLowStressDurationSeconds() => $_has(83);
  @$pb.TagNumber(84)
  void clearLowStressDurationSeconds() => $_clearField(84);

  @$pb.TagNumber(85)
  $core.int get mediumStressDurationSeconds => $_getIZ(84);
  @$pb.TagNumber(85)
  set mediumStressDurationSeconds($core.int value) => $_setSignedInt32(84, value);
  @$pb.TagNumber(85)
  $core.bool hasMediumStressDurationSeconds() => $_has(84);
  @$pb.TagNumber(85)
  void clearMediumStressDurationSeconds() => $_clearField(85);

  @$pb.TagNumber(86)
  $core.int get highStressDurationSeconds => $_getIZ(85);
  @$pb.TagNumber(86)
  set highStressDurationSeconds($core.int value) => $_setSignedInt32(85, value);
  @$pb.TagNumber(86)
  $core.bool hasHighStressDurationSeconds() => $_has(85);
  @$pb.TagNumber(86)
  void clearHighStressDurationSeconds() => $_clearField(86);

  @$pb.TagNumber(87)
  $pb.PbList<TssGranularDataProto> get tssGranularData => $_getList(86);

  @$pb.TagNumber(88)
  $core.int get stressAvgLevel => $_getIZ(87);
  @$pb.TagNumber(88)
  set stressAvgLevel($core.int value) => $_setSignedInt32(87, value);
  @$pb.TagNumber(88)
  $core.bool hasStressAvgLevel() => $_has(87);
  @$pb.TagNumber(88)
  void clearStressAvgLevel() => $_clearField(88);

  @$pb.TagNumber(89)
  $core.int get stressMaximumLevel => $_getIZ(88);
  @$pb.TagNumber(89)
  set stressMaximumLevel($core.int value) => $_setSignedInt32(88, value);
  @$pb.TagNumber(89)
  $core.bool hasStressMaximumLevel() => $_has(88);
  @$pb.TagNumber(89)
  void clearStressMaximumLevel() => $_clearField(89);
}

class ActivityEventsProto extends $pb.GeneratedMessage {
  factory ActivityEventsProto({
    $core.Iterable<ActivityEventProto>? elements,
  }) {
    final result = create();
    if (elements != null) result.elements.addAll(elements);
    return result;
  }

  ActivityEventsProto._();

  factory ActivityEventsProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ActivityEventsProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivityEventsProto', createEmptyInstance: create)
    ..pc<ActivityEventProto>(1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PM, subBuilder: ActivityEventProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityEventsProto clone() => ActivityEventsProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityEventsProto copyWith(void Function(ActivityEventsProto) updates) => super.copyWith((message) => updates(message as ActivityEventsProto)) as ActivityEventsProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityEventsProto create() => ActivityEventsProto._();
  @$core.override
  ActivityEventsProto createEmptyInstance() => create();
  static $pb.PbList<ActivityEventsProto> createRepeated() => $pb.PbList<ActivityEventsProto>();
  @$core.pragma('dart2js:noInline')
  static ActivityEventsProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivityEventsProto>(create);
  static ActivityEventsProto? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ActivityEventProto> get elements => $_getList(0);
}

enum ActivityEventResultProto_Result {
  success, 
  failure, 
  notSet
}

class ActivityEventResultProto extends $pb.GeneratedMessage {
  factory ActivityEventResultProto({
    ActivityEventsProto? success,
    SDKExceptionProto? failure,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (failure != null) result.failure = failure;
    return result;
  }

  ActivityEventResultProto._();

  factory ActivityEventResultProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ActivityEventResultProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ActivityEventResultProto_Result> _ActivityEventResultProto_ResultByTag = {
    1 : ActivityEventResultProto_Result.success,
    2 : ActivityEventResultProto_Result.failure,
    0 : ActivityEventResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivityEventResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ActivityEventsProto>(1, _omitFieldNames ? '' : 'success', subBuilder: ActivityEventsProto.create)
    ..aOM<SDKExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: SDKExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityEventResultProto clone() => ActivityEventResultProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityEventResultProto copyWith(void Function(ActivityEventResultProto) updates) => super.copyWith((message) => updates(message as ActivityEventResultProto)) as ActivityEventResultProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityEventResultProto create() => ActivityEventResultProto._();
  @$core.override
  ActivityEventResultProto createEmptyInstance() => create();
  static $pb.PbList<ActivityEventResultProto> createRepeated() => $pb.PbList<ActivityEventResultProto>();
  @$core.pragma('dart2js:noInline')
  static ActivityEventResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivityEventResultProto>(create);
  static ActivityEventResultProto? _defaultInstance;

  ActivityEventResultProto_Result whichResult() => _ActivityEventResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ActivityEventsProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(ActivityEventsProto value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
  @$pb.TagNumber(1)
  ActivityEventsProto ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  SDKExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(SDKExceptionProto value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => $_clearField(2);
  @$pb.TagNumber(2)
  SDKExceptionProto ensureFailure() => $_ensure(1);
}

class ActiveStepsGranularDataProto extends $pb.GeneratedMessage {
  factory ActiveStepsGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.int? activeSteps,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (activeSteps != null) result.activeSteps = activeSteps;
    return result;
  }

  ActiveStepsGranularDataProto._();

  factory ActiveStepsGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ActiveStepsGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActiveStepsGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'activeSteps', $pb.PbFieldType.OS3, protoName: 'activeSteps')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActiveStepsGranularDataProto clone() => ActiveStepsGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActiveStepsGranularDataProto copyWith(void Function(ActiveStepsGranularDataProto) updates) => super.copyWith((message) => updates(message as ActiveStepsGranularDataProto)) as ActiveStepsGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActiveStepsGranularDataProto create() => ActiveStepsGranularDataProto._();
  @$core.override
  ActiveStepsGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<ActiveStepsGranularDataProto> createRepeated() => $pb.PbList<ActiveStepsGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static ActiveStepsGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActiveStepsGranularDataProto>(create);
  static ActiveStepsGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get activeSteps => $_getIZ(2);
  @$pb.TagNumber(3)
  set activeSteps($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasActiveSteps() => $_has(2);
  @$pb.TagNumber(3)
  void clearActiveSteps() => $_clearField(3);
}

class ActivityLevelGranularDataProto extends $pb.GeneratedMessage {
  factory ActivityLevelGranularDataProto({
    $core.String? dateTime,
    $core.int? activityLevel,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (activityLevel != null) result.activityLevel = activityLevel;
    return result;
  }

  ActivityLevelGranularDataProto._();

  factory ActivityLevelGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ActivityLevelGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivityLevelGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'activityLevel', $pb.PbFieldType.OS3, protoName: 'activityLevel')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityLevelGranularDataProto clone() => ActivityLevelGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityLevelGranularDataProto copyWith(void Function(ActivityLevelGranularDataProto) updates) => super.copyWith((message) => updates(message as ActivityLevelGranularDataProto)) as ActivityLevelGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityLevelGranularDataProto create() => ActivityLevelGranularDataProto._();
  @$core.override
  ActivityLevelGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<ActivityLevelGranularDataProto> createRepeated() => $pb.PbList<ActivityLevelGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static ActivityLevelGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivityLevelGranularDataProto>(create);
  static ActivityLevelGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get activityLevel => $_getIZ(1);
  @$pb.TagNumber(2)
  set activityLevel($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasActivityLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearActivityLevel() => $_clearField(2);
}

class BloodGlucoseGranularDataProto extends $pb.GeneratedMessage {
  factory BloodGlucoseGranularDataProto({
    $core.String? dateTime,
    $core.double? bloodGlucoseMgPerDl,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (bloodGlucoseMgPerDl != null) result.bloodGlucoseMgPerDl = bloodGlucoseMgPerDl;
    return result;
  }

  BloodGlucoseGranularDataProto._();

  factory BloodGlucoseGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory BloodGlucoseGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BloodGlucoseGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'bloodGlucoseMgPerDl', $pb.PbFieldType.OD, protoName: 'bloodGlucoseMgPerDl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BloodGlucoseGranularDataProto clone() => BloodGlucoseGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BloodGlucoseGranularDataProto copyWith(void Function(BloodGlucoseGranularDataProto) updates) => super.copyWith((message) => updates(message as BloodGlucoseGranularDataProto)) as BloodGlucoseGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BloodGlucoseGranularDataProto create() => BloodGlucoseGranularDataProto._();
  @$core.override
  BloodGlucoseGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<BloodGlucoseGranularDataProto> createRepeated() => $pb.PbList<BloodGlucoseGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static BloodGlucoseGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BloodGlucoseGranularDataProto>(create);
  static BloodGlucoseGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get bloodGlucoseMgPerDl => $_getN(1);
  @$pb.TagNumber(2)
  set bloodGlucoseMgPerDl($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBloodGlucoseMgPerDl() => $_has(1);
  @$pb.TagNumber(2)
  void clearBloodGlucoseMgPerDl() => $_clearField(2);
}

class BloodPressureGranularDataProto extends $pb.GeneratedMessage {
  factory BloodPressureGranularDataProto({
    $core.String? dateTime,
    $core.double? systolicMmHg,
    $core.double? diastolicMmHg,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (systolicMmHg != null) result.systolicMmHg = systolicMmHg;
    if (diastolicMmHg != null) result.diastolicMmHg = diastolicMmHg;
    return result;
  }

  BloodPressureGranularDataProto._();

  factory BloodPressureGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory BloodPressureGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BloodPressureGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'systolicMmHg', $pb.PbFieldType.OD, protoName: 'systolicMmHg')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'diastolicMmHg', $pb.PbFieldType.OD, protoName: 'diastolicMmHg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BloodPressureGranularDataProto clone() => BloodPressureGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BloodPressureGranularDataProto copyWith(void Function(BloodPressureGranularDataProto) updates) => super.copyWith((message) => updates(message as BloodPressureGranularDataProto)) as BloodPressureGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BloodPressureGranularDataProto create() => BloodPressureGranularDataProto._();
  @$core.override
  BloodPressureGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<BloodPressureGranularDataProto> createRepeated() => $pb.PbList<BloodPressureGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static BloodPressureGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BloodPressureGranularDataProto>(create);
  static BloodPressureGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get systolicMmHg => $_getN(1);
  @$pb.TagNumber(2)
  set systolicMmHg($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSystolicMmHg() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystolicMmHg() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get diastolicMmHg => $_getN(2);
  @$pb.TagNumber(3)
  set diastolicMmHg($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDiastolicMmHg() => $_has(2);
  @$pb.TagNumber(3)
  void clearDiastolicMmHg() => $_clearField(3);
}

class BreathingGranularDataProto extends $pb.GeneratedMessage {
  factory BreathingGranularDataProto({
    $core.String? dateTime,
    $core.double? breathsPerMin,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (breathsPerMin != null) result.breathsPerMin = breathsPerMin;
    return result;
  }

  BreathingGranularDataProto._();

  factory BreathingGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory BreathingGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BreathingGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'breathsPerMin', $pb.PbFieldType.OD, protoName: 'breathsPerMin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BreathingGranularDataProto clone() => BreathingGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BreathingGranularDataProto copyWith(void Function(BreathingGranularDataProto) updates) => super.copyWith((message) => updates(message as BreathingGranularDataProto)) as BreathingGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BreathingGranularDataProto create() => BreathingGranularDataProto._();
  @$core.override
  BreathingGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<BreathingGranularDataProto> createRepeated() => $pb.PbList<BreathingGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static BreathingGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BreathingGranularDataProto>(create);
  static BreathingGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get breathsPerMin => $_getN(1);
  @$pb.TagNumber(2)
  set breathsPerMin($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBreathsPerMin() => $_has(1);
  @$pb.TagNumber(2)
  void clearBreathsPerMin() => $_clearField(2);
}

class CadenceGranularDataProto extends $pb.GeneratedMessage {
  factory CadenceGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.double? cadenceRpm,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (cadenceRpm != null) result.cadenceRpm = cadenceRpm;
    return result;
  }

  CadenceGranularDataProto._();

  factory CadenceGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CadenceGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CadenceGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'cadenceRpm', $pb.PbFieldType.OD, protoName: 'cadenceRpm')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CadenceGranularDataProto clone() => CadenceGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CadenceGranularDataProto copyWith(void Function(CadenceGranularDataProto) updates) => super.copyWith((message) => updates(message as CadenceGranularDataProto)) as CadenceGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CadenceGranularDataProto create() => CadenceGranularDataProto._();
  @$core.override
  CadenceGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<CadenceGranularDataProto> createRepeated() => $pb.PbList<CadenceGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static CadenceGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CadenceGranularDataProto>(create);
  static CadenceGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get cadenceRpm => $_getN(2);
  @$pb.TagNumber(3)
  set cadenceRpm($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCadenceRpm() => $_has(2);
  @$pb.TagNumber(3)
  void clearCadenceRpm() => $_clearField(3);
}

class ElevationGranularDataProto extends $pb.GeneratedMessage {
  factory ElevationGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.double? elevationChangeMeters,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (elevationChangeMeters != null) result.elevationChangeMeters = elevationChangeMeters;
    return result;
  }

  ElevationGranularDataProto._();

  factory ElevationGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ElevationGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ElevationGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'elevationChangeMeters', $pb.PbFieldType.OD, protoName: 'elevationChangeMeters')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ElevationGranularDataProto clone() => ElevationGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ElevationGranularDataProto copyWith(void Function(ElevationGranularDataProto) updates) => super.copyWith((message) => updates(message as ElevationGranularDataProto)) as ElevationGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ElevationGranularDataProto create() => ElevationGranularDataProto._();
  @$core.override
  ElevationGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<ElevationGranularDataProto> createRepeated() => $pb.PbList<ElevationGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static ElevationGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ElevationGranularDataProto>(create);
  static ElevationGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get elevationChangeMeters => $_getN(2);
  @$pb.TagNumber(3)
  set elevationChangeMeters($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasElevationChangeMeters() => $_has(2);
  @$pb.TagNumber(3)
  void clearElevationChangeMeters() => $_clearField(3);
}

class FloorsClimbedGranularDataProto extends $pb.GeneratedMessage {
  factory FloorsClimbedGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.double? floorsClimbed,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (floorsClimbed != null) result.floorsClimbed = floorsClimbed;
    return result;
  }

  FloorsClimbedGranularDataProto._();

  factory FloorsClimbedGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory FloorsClimbedGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FloorsClimbedGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'floorsClimbed', $pb.PbFieldType.OD, protoName: 'floorsClimbed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloorsClimbedGranularDataProto clone() => FloorsClimbedGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloorsClimbedGranularDataProto copyWith(void Function(FloorsClimbedGranularDataProto) updates) => super.copyWith((message) => updates(message as FloorsClimbedGranularDataProto)) as FloorsClimbedGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloorsClimbedGranularDataProto create() => FloorsClimbedGranularDataProto._();
  @$core.override
  FloorsClimbedGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<FloorsClimbedGranularDataProto> createRepeated() => $pb.PbList<FloorsClimbedGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static FloorsClimbedGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloorsClimbedGranularDataProto>(create);
  static FloorsClimbedGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get floorsClimbed => $_getN(2);
  @$pb.TagNumber(3)
  set floorsClimbed($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFloorsClimbed() => $_has(2);
  @$pb.TagNumber(3)
  void clearFloorsClimbed() => $_clearField(3);
}

class HrGranularDataProto extends $pb.GeneratedMessage {
  factory HrGranularDataProto({
    $core.String? dateTime,
    $core.int? hrBpm,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (hrBpm != null) result.hrBpm = hrBpm;
    return result;
  }

  HrGranularDataProto._();

  factory HrGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory HrGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HrGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'hrBpm', $pb.PbFieldType.OS3, protoName: 'hrBpm')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HrGranularDataProto clone() => HrGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HrGranularDataProto copyWith(void Function(HrGranularDataProto) updates) => super.copyWith((message) => updates(message as HrGranularDataProto)) as HrGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HrGranularDataProto create() => HrGranularDataProto._();
  @$core.override
  HrGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<HrGranularDataProto> createRepeated() => $pb.PbList<HrGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static HrGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HrGranularDataProto>(create);
  static HrGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get hrBpm => $_getIZ(1);
  @$pb.TagNumber(2)
  set hrBpm($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHrBpm() => $_has(1);
  @$pb.TagNumber(2)
  void clearHrBpm() => $_clearField(2);
}

class HrvSdnnGranularDataProto extends $pb.GeneratedMessage {
  factory HrvSdnnGranularDataProto({
    $core.String? dateTime,
    $core.double? hrvSdnn,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (hrvSdnn != null) result.hrvSdnn = hrvSdnn;
    return result;
  }

  HrvSdnnGranularDataProto._();

  factory HrvSdnnGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory HrvSdnnGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HrvSdnnGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'hrvSdnn', $pb.PbFieldType.OD, protoName: 'hrvSdnn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HrvSdnnGranularDataProto clone() => HrvSdnnGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HrvSdnnGranularDataProto copyWith(void Function(HrvSdnnGranularDataProto) updates) => super.copyWith((message) => updates(message as HrvSdnnGranularDataProto)) as HrvSdnnGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HrvSdnnGranularDataProto create() => HrvSdnnGranularDataProto._();
  @$core.override
  HrvSdnnGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<HrvSdnnGranularDataProto> createRepeated() => $pb.PbList<HrvSdnnGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static HrvSdnnGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HrvSdnnGranularDataProto>(create);
  static HrvSdnnGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get hrvSdnn => $_getN(1);
  @$pb.TagNumber(2)
  set hrvSdnn($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHrvSdnn() => $_has(1);
  @$pb.TagNumber(2)
  void clearHrvSdnn() => $_clearField(2);
}

class MenstruationFlowGranularDataProto extends $pb.GeneratedMessage {
  factory MenstruationFlowGranularDataProto({
    $core.String? dateTime,
    $core.double? flowMl,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (flowMl != null) result.flowMl = flowMl;
    return result;
  }

  MenstruationFlowGranularDataProto._();

  factory MenstruationFlowGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory MenstruationFlowGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MenstruationFlowGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'flowMl', $pb.PbFieldType.OD, protoName: 'flowMl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MenstruationFlowGranularDataProto clone() => MenstruationFlowGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MenstruationFlowGranularDataProto copyWith(void Function(MenstruationFlowGranularDataProto) updates) => super.copyWith((message) => updates(message as MenstruationFlowGranularDataProto)) as MenstruationFlowGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MenstruationFlowGranularDataProto create() => MenstruationFlowGranularDataProto._();
  @$core.override
  MenstruationFlowGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<MenstruationFlowGranularDataProto> createRepeated() => $pb.PbList<MenstruationFlowGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static MenstruationFlowGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MenstruationFlowGranularDataProto>(create);
  static MenstruationFlowGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get flowMl => $_getN(1);
  @$pb.TagNumber(2)
  set flowMl($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFlowMl() => $_has(1);
  @$pb.TagNumber(2)
  void clearFlowMl() => $_clearField(2);
}

class MoodGranularDataProto extends $pb.GeneratedMessage {
  factory MoodGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.double? moodScale,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (moodScale != null) result.moodScale = moodScale;
    return result;
  }

  MoodGranularDataProto._();

  factory MoodGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory MoodGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MoodGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'moodScale', $pb.PbFieldType.OD, protoName: 'moodScale')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MoodGranularDataProto clone() => MoodGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MoodGranularDataProto copyWith(void Function(MoodGranularDataProto) updates) => super.copyWith((message) => updates(message as MoodGranularDataProto)) as MoodGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MoodGranularDataProto create() => MoodGranularDataProto._();
  @$core.override
  MoodGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<MoodGranularDataProto> createRepeated() => $pb.PbList<MoodGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static MoodGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoodGranularDataProto>(create);
  static MoodGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get moodScale => $_getN(2);
  @$pb.TagNumber(3)
  set moodScale($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMoodScale() => $_has(2);
  @$pb.TagNumber(3)
  void clearMoodScale() => $_clearField(3);
}

class LapGranularDataProto extends $pb.GeneratedMessage {
  factory LapGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.int? laps,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (laps != null) result.laps = laps;
    return result;
  }

  LapGranularDataProto._();

  factory LapGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LapGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LapGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'laps', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LapGranularDataProto clone() => LapGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LapGranularDataProto copyWith(void Function(LapGranularDataProto) updates) => super.copyWith((message) => updates(message as LapGranularDataProto)) as LapGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LapGranularDataProto create() => LapGranularDataProto._();
  @$core.override
  LapGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<LapGranularDataProto> createRepeated() => $pb.PbList<LapGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static LapGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LapGranularDataProto>(create);
  static LapGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get laps => $_getIZ(2);
  @$pb.TagNumber(3)
  set laps($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLaps() => $_has(2);
  @$pb.TagNumber(3)
  void clearLaps() => $_clearField(3);
}

class PowerGranularDataProto extends $pb.GeneratedMessage {
  factory PowerGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.double? powerWatts,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (powerWatts != null) result.powerWatts = powerWatts;
    return result;
  }

  PowerGranularDataProto._();

  factory PowerGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory PowerGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PowerGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'powerWatts', $pb.PbFieldType.OD, protoName: 'powerWatts')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PowerGranularDataProto clone() => PowerGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PowerGranularDataProto copyWith(void Function(PowerGranularDataProto) updates) => super.copyWith((message) => updates(message as PowerGranularDataProto)) as PowerGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PowerGranularDataProto create() => PowerGranularDataProto._();
  @$core.override
  PowerGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<PowerGranularDataProto> createRepeated() => $pb.PbList<PowerGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static PowerGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PowerGranularDataProto>(create);
  static PowerGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get powerWatts => $_getN(2);
  @$pb.TagNumber(3)
  set powerWatts($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPowerWatts() => $_has(2);
  @$pb.TagNumber(3)
  void clearPowerWatts() => $_clearField(3);
}

class PositionGranularDataProto extends $pb.GeneratedMessage {
  factory PositionGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.double? latDeg,
    $core.double? lngDeg,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (latDeg != null) result.latDeg = latDeg;
    if (lngDeg != null) result.lngDeg = lngDeg;
    return result;
  }

  PositionGranularDataProto._();

  factory PositionGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory PositionGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PositionGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'latDeg', $pb.PbFieldType.OD, protoName: 'latDeg')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'lngDeg', $pb.PbFieldType.OD, protoName: 'lngDeg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PositionGranularDataProto clone() => PositionGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PositionGranularDataProto copyWith(void Function(PositionGranularDataProto) updates) => super.copyWith((message) => updates(message as PositionGranularDataProto)) as PositionGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PositionGranularDataProto create() => PositionGranularDataProto._();
  @$core.override
  PositionGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<PositionGranularDataProto> createRepeated() => $pb.PbList<PositionGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static PositionGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PositionGranularDataProto>(create);
  static PositionGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get latDeg => $_getN(2);
  @$pb.TagNumber(3)
  set latDeg($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLatDeg() => $_has(2);
  @$pb.TagNumber(3)
  void clearLatDeg() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get lngDeg => $_getN(3);
  @$pb.TagNumber(4)
  set lngDeg($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLngDeg() => $_has(3);
  @$pb.TagNumber(4)
  void clearLngDeg() => $_clearField(4);
}

class HydrationAmountGranularDataProto extends $pb.GeneratedMessage {
  factory HydrationAmountGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.double? hydrationAmountMl,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (hydrationAmountMl != null) result.hydrationAmountMl = hydrationAmountMl;
    return result;
  }

  HydrationAmountGranularDataProto._();

  factory HydrationAmountGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory HydrationAmountGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HydrationAmountGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'hydrationAmountMl', $pb.PbFieldType.OD, protoName: 'hydrationAmountMl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HydrationAmountGranularDataProto clone() => HydrationAmountGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HydrationAmountGranularDataProto copyWith(void Function(HydrationAmountGranularDataProto) updates) => super.copyWith((message) => updates(message as HydrationAmountGranularDataProto)) as HydrationAmountGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HydrationAmountGranularDataProto create() => HydrationAmountGranularDataProto._();
  @$core.override
  HydrationAmountGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<HydrationAmountGranularDataProto> createRepeated() => $pb.PbList<HydrationAmountGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static HydrationAmountGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HydrationAmountGranularDataProto>(create);
  static HydrationAmountGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get hydrationAmountMl => $_getN(2);
  @$pb.TagNumber(3)
  set hydrationAmountMl($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHydrationAmountMl() => $_has(2);
  @$pb.TagNumber(3)
  void clearHydrationAmountMl() => $_clearField(3);
}

class SaturationGranularDataProto extends $pb.GeneratedMessage {
  factory SaturationGranularDataProto({
    $core.String? dateTime,
    $core.double? saturationPercentage,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (saturationPercentage != null) result.saturationPercentage = saturationPercentage;
    return result;
  }

  SaturationGranularDataProto._();

  factory SaturationGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SaturationGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SaturationGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'saturationPercentage', $pb.PbFieldType.OD, protoName: 'saturationPercentage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SaturationGranularDataProto clone() => SaturationGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SaturationGranularDataProto copyWith(void Function(SaturationGranularDataProto) updates) => super.copyWith((message) => updates(message as SaturationGranularDataProto)) as SaturationGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SaturationGranularDataProto create() => SaturationGranularDataProto._();
  @$core.override
  SaturationGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<SaturationGranularDataProto> createRepeated() => $pb.PbList<SaturationGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static SaturationGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaturationGranularDataProto>(create);
  static SaturationGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get saturationPercentage => $_getN(1);
  @$pb.TagNumber(2)
  set saturationPercentage($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSaturationPercentage() => $_has(1);
  @$pb.TagNumber(2)
  void clearSaturationPercentage() => $_clearField(2);
}

class HydrationLevelGranularDataProto extends $pb.GeneratedMessage {
  factory HydrationLevelGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.double? hydrationLevelPercentage,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (hydrationLevelPercentage != null) result.hydrationLevelPercentage = hydrationLevelPercentage;
    return result;
  }

  HydrationLevelGranularDataProto._();

  factory HydrationLevelGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory HydrationLevelGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HydrationLevelGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'hydrationLevelPercentage', $pb.PbFieldType.OD, protoName: 'hydrationLevelPercentage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HydrationLevelGranularDataProto clone() => HydrationLevelGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HydrationLevelGranularDataProto copyWith(void Function(HydrationLevelGranularDataProto) updates) => super.copyWith((message) => updates(message as HydrationLevelGranularDataProto)) as HydrationLevelGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HydrationLevelGranularDataProto create() => HydrationLevelGranularDataProto._();
  @$core.override
  HydrationLevelGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<HydrationLevelGranularDataProto> createRepeated() => $pb.PbList<HydrationLevelGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static HydrationLevelGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HydrationLevelGranularDataProto>(create);
  static HydrationLevelGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get hydrationLevelPercentage => $_getN(2);
  @$pb.TagNumber(3)
  set hydrationLevelPercentage($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHydrationLevelPercentage() => $_has(2);
  @$pb.TagNumber(3)
  void clearHydrationLevelPercentage() => $_clearField(3);
}

class HrvRmssdGranularDataProto extends $pb.GeneratedMessage {
  factory HrvRmssdGranularDataProto({
    $core.String? dateTime,
    $core.double? hrvRmssd,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (hrvRmssd != null) result.hrvRmssd = hrvRmssd;
    return result;
  }

  HrvRmssdGranularDataProto._();

  factory HrvRmssdGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory HrvRmssdGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HrvRmssdGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'hrvRmssd', $pb.PbFieldType.OD, protoName: 'hrvRmssd')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HrvRmssdGranularDataProto clone() => HrvRmssdGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HrvRmssdGranularDataProto copyWith(void Function(HrvRmssdGranularDataProto) updates) => super.copyWith((message) => updates(message as HrvRmssdGranularDataProto)) as HrvRmssdGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HrvRmssdGranularDataProto create() => HrvRmssdGranularDataProto._();
  @$core.override
  HrvRmssdGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<HrvRmssdGranularDataProto> createRepeated() => $pb.PbList<HrvRmssdGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static HrvRmssdGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HrvRmssdGranularDataProto>(create);
  static HrvRmssdGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get hrvRmssd => $_getN(1);
  @$pb.TagNumber(2)
  set hrvRmssd($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHrvRmssd() => $_has(1);
  @$pb.TagNumber(2)
  void clearHrvRmssd() => $_clearField(2);
}

class SnoringGranularDataProto extends $pb.GeneratedMessage {
  factory SnoringGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.int? snoringEventsCount,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (snoringEventsCount != null) result.snoringEventsCount = snoringEventsCount;
    return result;
  }

  SnoringGranularDataProto._();

  factory SnoringGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SnoringGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SnoringGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'snoringEventsCount', $pb.PbFieldType.OS3, protoName: 'snoringEventsCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SnoringGranularDataProto clone() => SnoringGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SnoringGranularDataProto copyWith(void Function(SnoringGranularDataProto) updates) => super.copyWith((message) => updates(message as SnoringGranularDataProto)) as SnoringGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SnoringGranularDataProto create() => SnoringGranularDataProto._();
  @$core.override
  SnoringGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<SnoringGranularDataProto> createRepeated() => $pb.PbList<SnoringGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static SnoringGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SnoringGranularDataProto>(create);
  static SnoringGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get snoringEventsCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set snoringEventsCount($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSnoringEventsCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearSnoringEventsCount() => $_clearField(3);
}

class SpeedGranularDataProto extends $pb.GeneratedMessage {
  factory SpeedGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.double? speedMetersPerSecond,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (speedMetersPerSecond != null) result.speedMetersPerSecond = speedMetersPerSecond;
    return result;
  }

  SpeedGranularDataProto._();

  factory SpeedGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SpeedGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SpeedGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'speedMetersPerSecond', $pb.PbFieldType.OD, protoName: 'speedMetersPerSecond')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeedGranularDataProto clone() => SpeedGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpeedGranularDataProto copyWith(void Function(SpeedGranularDataProto) updates) => super.copyWith((message) => updates(message as SpeedGranularDataProto)) as SpeedGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpeedGranularDataProto create() => SpeedGranularDataProto._();
  @$core.override
  SpeedGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<SpeedGranularDataProto> createRepeated() => $pb.PbList<SpeedGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static SpeedGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeedGranularDataProto>(create);
  static SpeedGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get speedMetersPerSecond => $_getN(2);
  @$pb.TagNumber(3)
  set speedMetersPerSecond($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSpeedMetersPerSecond() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpeedMetersPerSecond() => $_clearField(3);
}

class StepsGranularDataProto extends $pb.GeneratedMessage {
  factory StepsGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.int? steps,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (steps != null) result.steps = steps;
    return result;
  }

  StepsGranularDataProto._();

  factory StepsGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory StepsGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StepsGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'steps', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StepsGranularDataProto clone() => StepsGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StepsGranularDataProto copyWith(void Function(StepsGranularDataProto) updates) => super.copyWith((message) => updates(message as StepsGranularDataProto)) as StepsGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StepsGranularDataProto create() => StepsGranularDataProto._();
  @$core.override
  StepsGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<StepsGranularDataProto> createRepeated() => $pb.PbList<StepsGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static StepsGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StepsGranularDataProto>(create);
  static StepsGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get steps => $_getIZ(2);
  @$pb.TagNumber(3)
  set steps($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSteps() => $_has(2);
  @$pb.TagNumber(3)
  void clearSteps() => $_clearField(3);
}

class StressGranularDataProto extends $pb.GeneratedMessage {
  factory StressGranularDataProto({
    $core.String? dateTime,
    $core.int? stressScore,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (stressScore != null) result.stressScore = stressScore;
    return result;
  }

  StressGranularDataProto._();

  factory StressGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory StressGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StressGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'stressScore', $pb.PbFieldType.OS3, protoName: 'stressScore')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StressGranularDataProto clone() => StressGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StressGranularDataProto copyWith(void Function(StressGranularDataProto) updates) => super.copyWith((message) => updates(message as StressGranularDataProto)) as StressGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StressGranularDataProto create() => StressGranularDataProto._();
  @$core.override
  StressGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<StressGranularDataProto> createRepeated() => $pb.PbList<StressGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static StressGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StressGranularDataProto>(create);
  static StressGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get stressScore => $_getIZ(1);
  @$pb.TagNumber(2)
  set stressScore($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStressScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearStressScore() => $_clearField(2);
}

class SwimmingDistanceGranularDataProto extends $pb.GeneratedMessage {
  factory SwimmingDistanceGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.double? swimmingDistanceMeters,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (swimmingDistanceMeters != null) result.swimmingDistanceMeters = swimmingDistanceMeters;
    return result;
  }

  SwimmingDistanceGranularDataProto._();

  factory SwimmingDistanceGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SwimmingDistanceGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SwimmingDistanceGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'swimmingDistanceMeters', $pb.PbFieldType.OD, protoName: 'swimmingDistanceMeters')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SwimmingDistanceGranularDataProto clone() => SwimmingDistanceGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SwimmingDistanceGranularDataProto copyWith(void Function(SwimmingDistanceGranularDataProto) updates) => super.copyWith((message) => updates(message as SwimmingDistanceGranularDataProto)) as SwimmingDistanceGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SwimmingDistanceGranularDataProto create() => SwimmingDistanceGranularDataProto._();
  @$core.override
  SwimmingDistanceGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<SwimmingDistanceGranularDataProto> createRepeated() => $pb.PbList<SwimmingDistanceGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static SwimmingDistanceGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwimmingDistanceGranularDataProto>(create);
  static SwimmingDistanceGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get swimmingDistanceMeters => $_getN(2);
  @$pb.TagNumber(3)
  set swimmingDistanceMeters($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSwimmingDistanceMeters() => $_has(2);
  @$pb.TagNumber(3)
  void clearSwimmingDistanceMeters() => $_clearField(3);
}

class TemperatureGranularDataProto extends $pb.GeneratedMessage {
  factory TemperatureGranularDataProto({
    $core.String? dateTime,
    $core.double? temperatureCelsius,
    $core.String? measurementType,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (temperatureCelsius != null) result.temperatureCelsius = temperatureCelsius;
    if (measurementType != null) result.measurementType = measurementType;
    return result;
  }

  TemperatureGranularDataProto._();

  factory TemperatureGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory TemperatureGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TemperatureGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'temperatureCelsius', $pb.PbFieldType.OD, protoName: 'temperatureCelsius')
    ..aOS(3, _omitFieldNames ? '' : 'measurementType', protoName: 'measurementType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemperatureGranularDataProto clone() => TemperatureGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemperatureGranularDataProto copyWith(void Function(TemperatureGranularDataProto) updates) => super.copyWith((message) => updates(message as TemperatureGranularDataProto)) as TemperatureGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemperatureGranularDataProto create() => TemperatureGranularDataProto._();
  @$core.override
  TemperatureGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<TemperatureGranularDataProto> createRepeated() => $pb.PbList<TemperatureGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static TemperatureGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TemperatureGranularDataProto>(create);
  static TemperatureGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get temperatureCelsius => $_getN(1);
  @$pb.TagNumber(2)
  set temperatureCelsius($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTemperatureCelsius() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemperatureCelsius() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get measurementType => $_getSZ(2);
  @$pb.TagNumber(3)
  set measurementType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMeasurementType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMeasurementType() => $_clearField(3);
}

class TorqueGranularDataProto extends $pb.GeneratedMessage {
  factory TorqueGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.double? torqueNewtonMeters,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (torqueNewtonMeters != null) result.torqueNewtonMeters = torqueNewtonMeters;
    return result;
  }

  TorqueGranularDataProto._();

  factory TorqueGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory TorqueGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TorqueGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'torqueNewtonMeters', $pb.PbFieldType.OD, protoName: 'torqueNewtonMeters')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TorqueGranularDataProto clone() => TorqueGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TorqueGranularDataProto copyWith(void Function(TorqueGranularDataProto) updates) => super.copyWith((message) => updates(message as TorqueGranularDataProto)) as TorqueGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TorqueGranularDataProto create() => TorqueGranularDataProto._();
  @$core.override
  TorqueGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<TorqueGranularDataProto> createRepeated() => $pb.PbList<TorqueGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static TorqueGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TorqueGranularDataProto>(create);
  static TorqueGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get torqueNewtonMeters => $_getN(2);
  @$pb.TagNumber(3)
  set torqueNewtonMeters($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTorqueNewtonMeters() => $_has(2);
  @$pb.TagNumber(3)
  void clearTorqueNewtonMeters() => $_clearField(3);
}

class TraveledDistanceGranularDataProto extends $pb.GeneratedMessage {
  factory TraveledDistanceGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.double? traveledDistanceMeters,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (traveledDistanceMeters != null) result.traveledDistanceMeters = traveledDistanceMeters;
    return result;
  }

  TraveledDistanceGranularDataProto._();

  factory TraveledDistanceGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory TraveledDistanceGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TraveledDistanceGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'traveledDistanceMeters', $pb.PbFieldType.OD, protoName: 'traveledDistanceMeters')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TraveledDistanceGranularDataProto clone() => TraveledDistanceGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TraveledDistanceGranularDataProto copyWith(void Function(TraveledDistanceGranularDataProto) updates) => super.copyWith((message) => updates(message as TraveledDistanceGranularDataProto)) as TraveledDistanceGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TraveledDistanceGranularDataProto create() => TraveledDistanceGranularDataProto._();
  @$core.override
  TraveledDistanceGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<TraveledDistanceGranularDataProto> createRepeated() => $pb.PbList<TraveledDistanceGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static TraveledDistanceGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TraveledDistanceGranularDataProto>(create);
  static TraveledDistanceGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get traveledDistanceMeters => $_getN(2);
  @$pb.TagNumber(3)
  set traveledDistanceMeters($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTraveledDistanceMeters() => $_has(2);
  @$pb.TagNumber(3)
  void clearTraveledDistanceMeters() => $_clearField(3);
}

class TssGranularDataProto extends $pb.GeneratedMessage {
  factory TssGranularDataProto({
    $core.String? dateTime,
    $core.int? intervalDurationSeconds,
    $core.int? tssScore,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (intervalDurationSeconds != null) result.intervalDurationSeconds = intervalDurationSeconds;
    if (tssScore != null) result.tssScore = tssScore;
    return result;
  }

  TssGranularDataProto._();

  factory TssGranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory TssGranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TssGranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intervalDurationSeconds', $pb.PbFieldType.OS3, protoName: 'intervalDurationSeconds')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'tssScore', $pb.PbFieldType.OS3, protoName: 'tssScore')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TssGranularDataProto clone() => TssGranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TssGranularDataProto copyWith(void Function(TssGranularDataProto) updates) => super.copyWith((message) => updates(message as TssGranularDataProto)) as TssGranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TssGranularDataProto create() => TssGranularDataProto._();
  @$core.override
  TssGranularDataProto createEmptyInstance() => create();
  static $pb.PbList<TssGranularDataProto> createRepeated() => $pb.PbList<TssGranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static TssGranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TssGranularDataProto>(create);
  static TssGranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intervalDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set intervalDurationSeconds($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntervalDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntervalDurationSeconds() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get tssScore => $_getIZ(2);
  @$pb.TagNumber(3)
  set tssScore($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTssScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearTssScore() => $_clearField(3);
}

class Vo2GranularDataProto extends $pb.GeneratedMessage {
  factory Vo2GranularDataProto({
    $core.String? dateTime,
    $core.double? vo2MlPerMinPerKg,
  }) {
    final result = create();
    if (dateTime != null) result.dateTime = dateTime;
    if (vo2MlPerMinPerKg != null) result.vo2MlPerMinPerKg = vo2MlPerMinPerKg;
    return result;
  }

  Vo2GranularDataProto._();

  factory Vo2GranularDataProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Vo2GranularDataProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Vo2GranularDataProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'vo2MlPerMinPerKg', $pb.PbFieldType.OD, protoName: 'vo2MlPerMinPerKg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Vo2GranularDataProto clone() => Vo2GranularDataProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Vo2GranularDataProto copyWith(void Function(Vo2GranularDataProto) updates) => super.copyWith((message) => updates(message as Vo2GranularDataProto)) as Vo2GranularDataProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Vo2GranularDataProto create() => Vo2GranularDataProto._();
  @$core.override
  Vo2GranularDataProto createEmptyInstance() => create();
  static $pb.PbList<Vo2GranularDataProto> createRepeated() => $pb.PbList<Vo2GranularDataProto>();
  @$core.pragma('dart2js:noInline')
  static Vo2GranularDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vo2GranularDataProto>(create);
  static Vo2GranularDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateTime($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get vo2MlPerMinPerKg => $_getN(1);
  @$pb.TagNumber(2)
  set vo2MlPerMinPerKg($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVo2MlPerMinPerKg() => $_has(1);
  @$pb.TagNumber(2)
  void clearVo2MlPerMinPerKg() => $_clearField(2);
}

class BloodPressureObjectProto extends $pb.GeneratedMessage {
  factory BloodPressureObjectProto({
    $core.double? systolicMmHg,
    $core.double? diastolicMmHg,
  }) {
    final result = create();
    if (systolicMmHg != null) result.systolicMmHg = systolicMmHg;
    if (diastolicMmHg != null) result.diastolicMmHg = diastolicMmHg;
    return result;
  }

  BloodPressureObjectProto._();

  factory BloodPressureObjectProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory BloodPressureObjectProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BloodPressureObjectProto', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'systolicMmHg', $pb.PbFieldType.OD, protoName: 'systolicMmHg')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'diastolicMmHg', $pb.PbFieldType.OD, protoName: 'diastolicMmHg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BloodPressureObjectProto clone() => BloodPressureObjectProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BloodPressureObjectProto copyWith(void Function(BloodPressureObjectProto) updates) => super.copyWith((message) => updates(message as BloodPressureObjectProto)) as BloodPressureObjectProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BloodPressureObjectProto create() => BloodPressureObjectProto._();
  @$core.override
  BloodPressureObjectProto createEmptyInstance() => create();
  static $pb.PbList<BloodPressureObjectProto> createRepeated() => $pb.PbList<BloodPressureObjectProto>();
  @$core.pragma('dart2js:noInline')
  static BloodPressureObjectProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BloodPressureObjectProto>(create);
  static BloodPressureObjectProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get systolicMmHg => $_getN(0);
  @$pb.TagNumber(1)
  set systolicMmHg($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSystolicMmHg() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystolicMmHg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get diastolicMmHg => $_getN(1);
  @$pb.TagNumber(2)
  set diastolicMmHg($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDiastolicMmHg() => $_has(1);
  @$pb.TagNumber(2)
  void clearDiastolicMmHg() => $_clearField(2);
}

class PositionObjectProto extends $pb.GeneratedMessage {
  factory PositionObjectProto({
    $core.double? latDeg,
    $core.double? lngDeg,
  }) {
    final result = create();
    if (latDeg != null) result.latDeg = latDeg;
    if (lngDeg != null) result.lngDeg = lngDeg;
    return result;
  }

  PositionObjectProto._();

  factory PositionObjectProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory PositionObjectProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PositionObjectProto', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'latDeg', $pb.PbFieldType.OD, protoName: 'latDeg')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'lngDeg', $pb.PbFieldType.OD, protoName: 'lngDeg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PositionObjectProto clone() => PositionObjectProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PositionObjectProto copyWith(void Function(PositionObjectProto) updates) => super.copyWith((message) => updates(message as PositionObjectProto)) as PositionObjectProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PositionObjectProto create() => PositionObjectProto._();
  @$core.override
  PositionObjectProto createEmptyInstance() => create();
  static $pb.PbList<PositionObjectProto> createRepeated() => $pb.PbList<PositionObjectProto>();
  @$core.pragma('dart2js:noInline')
  static PositionObjectProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PositionObjectProto>(create);
  static PositionObjectProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get latDeg => $_getN(0);
  @$pb.TagNumber(1)
  set latDeg($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLatDeg() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatDeg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get lngDeg => $_getN(1);
  @$pb.TagNumber(2)
  set lngDeg($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLngDeg() => $_has(1);
  @$pb.TagNumber(2)
  void clearLngDeg() => $_clearField(2);
}

class TemperatureObjectProto extends $pb.GeneratedMessage {
  factory TemperatureObjectProto({
    $core.double? temperatureCelsius,
    $core.String? measurementType,
  }) {
    final result = create();
    if (temperatureCelsius != null) result.temperatureCelsius = temperatureCelsius;
    if (measurementType != null) result.measurementType = measurementType;
    return result;
  }

  TemperatureObjectProto._();

  factory TemperatureObjectProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory TemperatureObjectProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TemperatureObjectProto', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'temperatureCelsius', $pb.PbFieldType.OD, protoName: 'temperatureCelsius')
    ..aOS(2, _omitFieldNames ? '' : 'measurementType', protoName: 'measurementType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemperatureObjectProto clone() => TemperatureObjectProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemperatureObjectProto copyWith(void Function(TemperatureObjectProto) updates) => super.copyWith((message) => updates(message as TemperatureObjectProto)) as TemperatureObjectProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemperatureObjectProto create() => TemperatureObjectProto._();
  @$core.override
  TemperatureObjectProto createEmptyInstance() => create();
  static $pb.PbList<TemperatureObjectProto> createRepeated() => $pb.PbList<TemperatureObjectProto>();
  @$core.pragma('dart2js:noInline')
  static TemperatureObjectProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TemperatureObjectProto>(create);
  static TemperatureObjectProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get temperatureCelsius => $_getN(0);
  @$pb.TagNumber(1)
  set temperatureCelsius($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTemperatureCelsius() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemperatureCelsius() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get measurementType => $_getSZ(1);
  @$pb.TagNumber(2)
  set measurementType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMeasurementType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMeasurementType() => $_clearField(2);
}

class VelocityObjectProto extends $pb.GeneratedMessage {
  factory VelocityObjectProto({
    $core.double? speedMetersPerSecond,
    $core.String? direction,
  }) {
    final result = create();
    if (speedMetersPerSecond != null) result.speedMetersPerSecond = speedMetersPerSecond;
    if (direction != null) result.direction = direction;
    return result;
  }

  VelocityObjectProto._();

  factory VelocityObjectProto.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory VelocityObjectProto.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VelocityObjectProto', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'speedMetersPerSecond', $pb.PbFieldType.OD, protoName: 'speedMetersPerSecond')
    ..aOS(2, _omitFieldNames ? '' : 'direction')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VelocityObjectProto clone() => VelocityObjectProto()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VelocityObjectProto copyWith(void Function(VelocityObjectProto) updates) => super.copyWith((message) => updates(message as VelocityObjectProto)) as VelocityObjectProto;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VelocityObjectProto create() => VelocityObjectProto._();
  @$core.override
  VelocityObjectProto createEmptyInstance() => create();
  static $pb.PbList<VelocityObjectProto> createRepeated() => $pb.PbList<VelocityObjectProto>();
  @$core.pragma('dart2js:noInline')
  static VelocityObjectProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VelocityObjectProto>(create);
  static VelocityObjectProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get speedMetersPerSecond => $_getN(0);
  @$pb.TagNumber(1)
  set speedMetersPerSecond($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSpeedMetersPerSecond() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpeedMetersPerSecond() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get direction => $_getSZ(1);
  @$pb.TagNumber(2)
  set direction($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirection() => $_clearField(2);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
