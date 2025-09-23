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
  factory PluginExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PluginExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PluginExceptionProto', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OS3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OS3)
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PluginExceptionProto clone() => PluginExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PluginExceptionProto copyWith(void Function(PluginExceptionProto) updates) => super.copyWith((message) => updates(message as PluginExceptionProto)) as PluginExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PluginExceptionProto create() => PluginExceptionProto._();
  PluginExceptionProto createEmptyInstance() => create();
  static $pb.PbList<PluginExceptionProto> createRepeated() => $pb.PbList<PluginExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static PluginExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PluginExceptionProto>(create);
  static PluginExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

enum ResultBooleanProto_Result {
  success, 
  pluginExceptionProto, 
  notSet
}

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
  factory ResultBooleanProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultBooleanProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultBooleanProto_Result> _ResultBooleanProto_ResultByTag = {
    1 : ResultBooleanProto_Result.success,
    2 : ResultBooleanProto_Result.pluginExceptionProto,
    0 : ResultBooleanProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResultBooleanProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'pluginExceptionProto', protoName: 'pluginExceptionProto', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultBooleanProto clone() => ResultBooleanProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultBooleanProto copyWith(void Function(ResultBooleanProto) updates) => super.copyWith((message) => updates(message as ResultBooleanProto)) as ResultBooleanProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultBooleanProto create() => ResultBooleanProto._();
  ResultBooleanProto createEmptyInstance() => create();
  static $pb.PbList<ResultBooleanProto> createRepeated() => $pb.PbList<ResultBooleanProto>();
  @$core.pragma('dart2js:noInline')
  static ResultBooleanProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultBooleanProto>(create);
  static ResultBooleanProto? _defaultInstance;

  ResultBooleanProto_Result whichResult() => _ResultBooleanProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  PluginExceptionProto get pluginExceptionProto => $_getN(1);
  @$pb.TagNumber(2)
  set pluginExceptionProto(PluginExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPluginExceptionProto() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginExceptionProto() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensurePluginExceptionProto() => $_ensure(1);
}

enum ResultInt64Proto_Result {
  value, 
  pluginExceptionProto, 
  notSet
}

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
  factory ResultInt64Proto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultInt64Proto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultInt64Proto_Result> _ResultInt64Proto_ResultByTag = {
    1 : ResultInt64Proto_Result.value,
    2 : ResultInt64Proto_Result.pluginExceptionProto,
    0 : ResultInt64Proto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResultInt64Proto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aInt64(1, _omitFieldNames ? '' : 'value')
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'pluginExceptionProto', protoName: 'pluginExceptionProto', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultInt64Proto clone() => ResultInt64Proto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultInt64Proto copyWith(void Function(ResultInt64Proto) updates) => super.copyWith((message) => updates(message as ResultInt64Proto)) as ResultInt64Proto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultInt64Proto create() => ResultInt64Proto._();
  ResultInt64Proto createEmptyInstance() => create();
  static $pb.PbList<ResultInt64Proto> createRepeated() => $pb.PbList<ResultInt64Proto>();
  @$core.pragma('dart2js:noInline')
  static ResultInt64Proto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultInt64Proto>(create);
  static ResultInt64Proto? _defaultInstance;

  ResultInt64Proto_Result whichResult() => _ResultInt64Proto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  PluginExceptionProto get pluginExceptionProto => $_getN(1);
  @$pb.TagNumber(2)
  set pluginExceptionProto(PluginExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPluginExceptionProto() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginExceptionProto() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensurePluginExceptionProto() => $_ensure(1);
}

class ConfigurationProto extends $pb.GeneratedMessage {
  factory ConfigurationProto({
    $core.String? clientUUID,
    $core.String? secretKey,
    EnvironmentProto? environment,
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
  ConfigurationProto._() : super();
  factory ConfigurationProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfigurationProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConfigurationProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'clientUUID', protoName: 'clientUUID')
    ..aOS(2, _omitFieldNames ? '' : 'secretKey', protoName: 'secretKey')
    ..e<EnvironmentProto>(3, _omitFieldNames ? '' : 'environment', $pb.PbFieldType.OE, defaultOrMaker: EnvironmentProto.SANDBOX, valueOf: EnvironmentProto.valueOf, enumValues: EnvironmentProto.values)
    ..aOB(4, _omitFieldNames ? '' : 'enableBackgroundSync', protoName: 'enableBackgroundSync')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfigurationProto clone() => ConfigurationProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfigurationProto copyWith(void Function(ConfigurationProto) updates) => super.copyWith((message) => updates(message as ConfigurationProto)) as ConfigurationProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigurationProto create() => ConfigurationProto._();
  ConfigurationProto createEmptyInstance() => create();
  static $pb.PbList<ConfigurationProto> createRepeated() => $pb.PbList<ConfigurationProto>();
  @$core.pragma('dart2js:noInline')
  static ConfigurationProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfigurationProto>(create);
  static ConfigurationProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientUUID => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientUUID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientUUID() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientUUID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get secretKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set secretKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecretKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecretKey() => clearField(2);

  @$pb.TagNumber(3)
  EnvironmentProto get environment => $_getN(2);
  @$pb.TagNumber(3)
  set environment(EnvironmentProto v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEnvironment() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnvironment() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get enableBackgroundSync => $_getBF(3);
  @$pb.TagNumber(4)
  set enableBackgroundSync($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnableBackgroundSync() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnableBackgroundSync() => clearField(4);
}

enum RequestPermissionsStatusResultProto_Result {
  success, 
  failure, 
  notSet
}

class RequestPermissionsStatusResultProto extends $pb.GeneratedMessage {
  factory RequestPermissionsStatusResultProto({
    RequestPermissionsStatusProto? success,
    PluginExceptionProto? failure,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (failure != null) {
      $result.failure = failure;
    }
    return $result;
  }
  RequestPermissionsStatusResultProto._() : super();
  factory RequestPermissionsStatusResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestPermissionsStatusResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RequestPermissionsStatusResultProto_Result> _RequestPermissionsStatusResultProto_ResultByTag = {
    1 : RequestPermissionsStatusResultProto_Result.success,
    2 : RequestPermissionsStatusResultProto_Result.failure,
    0 : RequestPermissionsStatusResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RequestPermissionsStatusResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..e<RequestPermissionsStatusProto>(1, _omitFieldNames ? '' : 'success', $pb.PbFieldType.OE, defaultOrMaker: RequestPermissionsStatusProto.REQUEST_SENT, valueOf: RequestPermissionsStatusProto.valueOf, enumValues: RequestPermissionsStatusProto.values)
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestPermissionsStatusResultProto clone() => RequestPermissionsStatusResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestPermissionsStatusResultProto copyWith(void Function(RequestPermissionsStatusResultProto) updates) => super.copyWith((message) => updates(message as RequestPermissionsStatusResultProto)) as RequestPermissionsStatusResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestPermissionsStatusResultProto create() => RequestPermissionsStatusResultProto._();
  RequestPermissionsStatusResultProto createEmptyInstance() => create();
  static $pb.PbList<RequestPermissionsStatusResultProto> createRepeated() => $pb.PbList<RequestPermissionsStatusResultProto>();
  @$core.pragma('dart2js:noInline')
  static RequestPermissionsStatusResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestPermissionsStatusResultProto>(create);
  static RequestPermissionsStatusResultProto? _defaultInstance;

  RequestPermissionsStatusResultProto_Result whichResult() => _RequestPermissionsStatusResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RequestPermissionsStatusProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(RequestPermissionsStatusProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  PluginExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(PluginExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensureFailure() => $_ensure(1);
}

enum BackgroundReadStatusResultProto_Result {
  success, 
  failure, 
  notSet
}

class BackgroundReadStatusResultProto extends $pb.GeneratedMessage {
  factory BackgroundReadStatusResultProto({
    BackgroundReadStatusProto? success,
    PluginExceptionProto? failure,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (failure != null) {
      $result.failure = failure;
    }
    return $result;
  }
  BackgroundReadStatusResultProto._() : super();
  factory BackgroundReadStatusResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BackgroundReadStatusResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, BackgroundReadStatusResultProto_Result> _BackgroundReadStatusResultProto_ResultByTag = {
    1 : BackgroundReadStatusResultProto_Result.success,
    2 : BackgroundReadStatusResultProto_Result.failure,
    0 : BackgroundReadStatusResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BackgroundReadStatusResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..e<BackgroundReadStatusProto>(1, _omitFieldNames ? '' : 'success', $pb.PbFieldType.OE, defaultOrMaker: BackgroundReadStatusProto.UNAVAILABLE, valueOf: BackgroundReadStatusProto.valueOf, enumValues: BackgroundReadStatusProto.values)
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BackgroundReadStatusResultProto clone() => BackgroundReadStatusResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BackgroundReadStatusResultProto copyWith(void Function(BackgroundReadStatusResultProto) updates) => super.copyWith((message) => updates(message as BackgroundReadStatusResultProto)) as BackgroundReadStatusResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackgroundReadStatusResultProto create() => BackgroundReadStatusResultProto._();
  BackgroundReadStatusResultProto createEmptyInstance() => create();
  static $pb.PbList<BackgroundReadStatusResultProto> createRepeated() => $pb.PbList<BackgroundReadStatusResultProto>();
  @$core.pragma('dart2js:noInline')
  static BackgroundReadStatusResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BackgroundReadStatusResultProto>(create);
  static BackgroundReadStatusResultProto? _defaultInstance;

  BackgroundReadStatusResultProto_Result whichResult() => _BackgroundReadStatusResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BackgroundReadStatusProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(BackgroundReadStatusProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  PluginExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(PluginExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensureFailure() => $_ensure(1);
}

class HealthConnectPermissionsSummaryProto extends $pb.GeneratedMessage {
  factory HealthConnectPermissionsSummaryProto({
    $core.bool? dataTypesGranted,
    $core.bool? dataTypesPartiallyGranted,
    $core.bool? backgroundReadGranted,
  }) {
    final $result = create();
    if (dataTypesGranted != null) {
      $result.dataTypesGranted = dataTypesGranted;
    }
    if (dataTypesPartiallyGranted != null) {
      $result.dataTypesPartiallyGranted = dataTypesPartiallyGranted;
    }
    if (backgroundReadGranted != null) {
      $result.backgroundReadGranted = backgroundReadGranted;
    }
    return $result;
  }
  HealthConnectPermissionsSummaryProto._() : super();
  factory HealthConnectPermissionsSummaryProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthConnectPermissionsSummaryProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HealthConnectPermissionsSummaryProto', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'dataTypesGranted', protoName: 'dataTypesGranted')
    ..aOB(2, _omitFieldNames ? '' : 'dataTypesPartiallyGranted', protoName: 'dataTypesPartiallyGranted')
    ..aOB(3, _omitFieldNames ? '' : 'backgroundReadGranted', protoName: 'backgroundReadGranted')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HealthConnectPermissionsSummaryProto clone() => HealthConnectPermissionsSummaryProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HealthConnectPermissionsSummaryProto copyWith(void Function(HealthConnectPermissionsSummaryProto) updates) => super.copyWith((message) => updates(message as HealthConnectPermissionsSummaryProto)) as HealthConnectPermissionsSummaryProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthConnectPermissionsSummaryProto create() => HealthConnectPermissionsSummaryProto._();
  HealthConnectPermissionsSummaryProto createEmptyInstance() => create();
  static $pb.PbList<HealthConnectPermissionsSummaryProto> createRepeated() => $pb.PbList<HealthConnectPermissionsSummaryProto>();
  @$core.pragma('dart2js:noInline')
  static HealthConnectPermissionsSummaryProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthConnectPermissionsSummaryProto>(create);
  static HealthConnectPermissionsSummaryProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get dataTypesGranted => $_getBF(0);
  @$pb.TagNumber(1)
  set dataTypesGranted($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataTypesGranted() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataTypesGranted() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get dataTypesPartiallyGranted => $_getBF(1);
  @$pb.TagNumber(2)
  set dataTypesPartiallyGranted($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDataTypesPartiallyGranted() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataTypesPartiallyGranted() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get backgroundReadGranted => $_getBF(2);
  @$pb.TagNumber(3)
  set backgroundReadGranted($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBackgroundReadGranted() => $_has(2);
  @$pb.TagNumber(3)
  void clearBackgroundReadGranted() => clearField(3);
}

class AndroidPermissionsSummaryProto extends $pb.GeneratedMessage {
  factory AndroidPermissionsSummaryProto({
    $core.bool? permissionsGranted,
    $core.bool? dialogDisplayed,
  }) {
    final $result = create();
    if (permissionsGranted != null) {
      $result.permissionsGranted = permissionsGranted;
    }
    if (dialogDisplayed != null) {
      $result.dialogDisplayed = dialogDisplayed;
    }
    return $result;
  }
  AndroidPermissionsSummaryProto._() : super();
  factory AndroidPermissionsSummaryProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AndroidPermissionsSummaryProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AndroidPermissionsSummaryProto', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'permissionsGranted', protoName: 'permissionsGranted')
    ..aOB(2, _omitFieldNames ? '' : 'dialogDisplayed', protoName: 'dialogDisplayed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AndroidPermissionsSummaryProto clone() => AndroidPermissionsSummaryProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AndroidPermissionsSummaryProto copyWith(void Function(AndroidPermissionsSummaryProto) updates) => super.copyWith((message) => updates(message as AndroidPermissionsSummaryProto)) as AndroidPermissionsSummaryProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AndroidPermissionsSummaryProto create() => AndroidPermissionsSummaryProto._();
  AndroidPermissionsSummaryProto createEmptyInstance() => create();
  static $pb.PbList<AndroidPermissionsSummaryProto> createRepeated() => $pb.PbList<AndroidPermissionsSummaryProto>();
  @$core.pragma('dart2js:noInline')
  static AndroidPermissionsSummaryProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AndroidPermissionsSummaryProto>(create);
  static AndroidPermissionsSummaryProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get permissionsGranted => $_getBF(0);
  @$pb.TagNumber(1)
  set permissionsGranted($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPermissionsGranted() => $_has(0);
  @$pb.TagNumber(1)
  void clearPermissionsGranted() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get dialogDisplayed => $_getBF(1);
  @$pb.TagNumber(2)
  set dialogDisplayed($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDialogDisplayed() => $_has(1);
  @$pb.TagNumber(2)
  void clearDialogDisplayed() => clearField(2);
}

enum SyncStatusResultProto_Result {
  success, 
  failure, 
  notSet
}

class SyncStatusResultProto extends $pb.GeneratedMessage {
  factory SyncStatusResultProto({
    SyncStatusProto? success,
    PluginExceptionProto? failure,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (failure != null) {
      $result.failure = failure;
    }
    return $result;
  }
  SyncStatusResultProto._() : super();
  factory SyncStatusResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncStatusResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SyncStatusResultProto_Result> _SyncStatusResultProto_ResultByTag = {
    1 : SyncStatusResultProto_Result.success,
    2 : SyncStatusResultProto_Result.failure,
    0 : SyncStatusResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncStatusResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..e<SyncStatusProto>(1, _omitFieldNames ? '' : 'success', $pb.PbFieldType.OE, defaultOrMaker: SyncStatusProto.SYNCED, valueOf: SyncStatusProto.valueOf, enumValues: SyncStatusProto.values)
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncStatusResultProto clone() => SyncStatusResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncStatusResultProto copyWith(void Function(SyncStatusResultProto) updates) => super.copyWith((message) => updates(message as SyncStatusResultProto)) as SyncStatusResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncStatusResultProto create() => SyncStatusResultProto._();
  SyncStatusResultProto createEmptyInstance() => create();
  static $pb.PbList<SyncStatusResultProto> createRepeated() => $pb.PbList<SyncStatusResultProto>();
  @$core.pragma('dart2js:noInline')
  static SyncStatusResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncStatusResultProto>(create);
  static SyncStatusResultProto? _defaultInstance;

  SyncStatusResultProto_Result whichResult() => _SyncStatusResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SyncStatusProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(SyncStatusProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  PluginExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(PluginExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensureFailure() => $_ensure(1);
}

class SyncStatusWithIntProto extends $pb.GeneratedMessage {
  factory SyncStatusWithIntProto({
    SyncStatusProto? syncStatus,
    $core.int? value,
  }) {
    final $result = create();
    if (syncStatus != null) {
      $result.syncStatus = syncStatus;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  SyncStatusWithIntProto._() : super();
  factory SyncStatusWithIntProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncStatusWithIntProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncStatusWithIntProto', createEmptyInstance: create)
    ..e<SyncStatusProto>(1, _omitFieldNames ? '' : 'syncStatus', $pb.PbFieldType.OE, protoName: 'syncStatus', defaultOrMaker: SyncStatusProto.SYNCED, valueOf: SyncStatusProto.valueOf, enumValues: SyncStatusProto.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncStatusWithIntProto clone() => SyncStatusWithIntProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncStatusWithIntProto copyWith(void Function(SyncStatusWithIntProto) updates) => super.copyWith((message) => updates(message as SyncStatusWithIntProto)) as SyncStatusWithIntProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncStatusWithIntProto create() => SyncStatusWithIntProto._();
  SyncStatusWithIntProto createEmptyInstance() => create();
  static $pb.PbList<SyncStatusWithIntProto> createRepeated() => $pb.PbList<SyncStatusWithIntProto>();
  @$core.pragma('dart2js:noInline')
  static SyncStatusWithIntProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncStatusWithIntProto>(create);
  static SyncStatusWithIntProto? _defaultInstance;

  @$pb.TagNumber(1)
  SyncStatusProto get syncStatus => $_getN(0);
  @$pb.TagNumber(1)
  set syncStatus(SyncStatusProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSyncStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get value => $_getIZ(1);
  @$pb.TagNumber(2)
  set value($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

enum SyncStatusWithIntResultProto_Result {
  success, 
  failure, 
  notSet
}

class SyncStatusWithIntResultProto extends $pb.GeneratedMessage {
  factory SyncStatusWithIntResultProto({
    SyncStatusWithIntProto? success,
    PluginExceptionProto? failure,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (failure != null) {
      $result.failure = failure;
    }
    return $result;
  }
  SyncStatusWithIntResultProto._() : super();
  factory SyncStatusWithIntResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncStatusWithIntResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SyncStatusWithIntResultProto_Result> _SyncStatusWithIntResultProto_ResultByTag = {
    1 : SyncStatusWithIntResultProto_Result.success,
    2 : SyncStatusWithIntResultProto_Result.failure,
    0 : SyncStatusWithIntResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncStatusWithIntResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SyncStatusWithIntProto>(1, _omitFieldNames ? '' : 'success', subBuilder: SyncStatusWithIntProto.create)
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncStatusWithIntResultProto clone() => SyncStatusWithIntResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncStatusWithIntResultProto copyWith(void Function(SyncStatusWithIntResultProto) updates) => super.copyWith((message) => updates(message as SyncStatusWithIntResultProto)) as SyncStatusWithIntResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncStatusWithIntResultProto create() => SyncStatusWithIntResultProto._();
  SyncStatusWithIntResultProto createEmptyInstance() => create();
  static $pb.PbList<SyncStatusWithIntResultProto> createRepeated() => $pb.PbList<SyncStatusWithIntResultProto>();
  @$core.pragma('dart2js:noInline')
  static SyncStatusWithIntResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncStatusWithIntResultProto>(create);
  static SyncStatusWithIntResultProto? _defaultInstance;

  SyncStatusWithIntResultProto_Result whichResult() => _SyncStatusWithIntResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SyncStatusWithIntProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(SyncStatusWithIntProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
  @$pb.TagNumber(1)
  SyncStatusWithIntProto ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  PluginExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(PluginExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensureFailure() => $_ensure(1);
}

class CaloriesProto extends $pb.GeneratedMessage {
  factory CaloriesProto({
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
  CaloriesProto._() : super();
  factory CaloriesProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaloriesProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CaloriesProto', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'basal', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'active', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CaloriesProto clone() => CaloriesProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CaloriesProto copyWith(void Function(CaloriesProto) updates) => super.copyWith((message) => updates(message as CaloriesProto)) as CaloriesProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CaloriesProto create() => CaloriesProto._();
  CaloriesProto createEmptyInstance() => create();
  static $pb.PbList<CaloriesProto> createRepeated() => $pb.PbList<CaloriesProto>();
  @$core.pragma('dart2js:noInline')
  static CaloriesProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaloriesProto>(create);
  static CaloriesProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get basal => $_getN(0);
  @$pb.TagNumber(1)
  set basal($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBasal() => $_has(0);
  @$pb.TagNumber(1)
  void clearBasal() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get active => $_getN(1);
  @$pb.TagNumber(2)
  set active($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasActive() => $_has(1);
  @$pb.TagNumber(2)
  void clearActive() => clearField(2);
}

class SyncStatusWithCaloriesProto extends $pb.GeneratedMessage {
  factory SyncStatusWithCaloriesProto({
    SyncStatusProto? syncStatus,
    CaloriesProto? calories,
  }) {
    final $result = create();
    if (syncStatus != null) {
      $result.syncStatus = syncStatus;
    }
    if (calories != null) {
      $result.calories = calories;
    }
    return $result;
  }
  SyncStatusWithCaloriesProto._() : super();
  factory SyncStatusWithCaloriesProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncStatusWithCaloriesProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncStatusWithCaloriesProto', createEmptyInstance: create)
    ..e<SyncStatusProto>(1, _omitFieldNames ? '' : 'syncStatus', $pb.PbFieldType.OE, protoName: 'syncStatus', defaultOrMaker: SyncStatusProto.SYNCED, valueOf: SyncStatusProto.valueOf, enumValues: SyncStatusProto.values)
    ..aOM<CaloriesProto>(2, _omitFieldNames ? '' : 'calories', subBuilder: CaloriesProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncStatusWithCaloriesProto clone() => SyncStatusWithCaloriesProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncStatusWithCaloriesProto copyWith(void Function(SyncStatusWithCaloriesProto) updates) => super.copyWith((message) => updates(message as SyncStatusWithCaloriesProto)) as SyncStatusWithCaloriesProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncStatusWithCaloriesProto create() => SyncStatusWithCaloriesProto._();
  SyncStatusWithCaloriesProto createEmptyInstance() => create();
  static $pb.PbList<SyncStatusWithCaloriesProto> createRepeated() => $pb.PbList<SyncStatusWithCaloriesProto>();
  @$core.pragma('dart2js:noInline')
  static SyncStatusWithCaloriesProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncStatusWithCaloriesProto>(create);
  static SyncStatusWithCaloriesProto? _defaultInstance;

  @$pb.TagNumber(1)
  SyncStatusProto get syncStatus => $_getN(0);
  @$pb.TagNumber(1)
  set syncStatus(SyncStatusProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSyncStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncStatus() => clearField(1);

  @$pb.TagNumber(2)
  CaloriesProto get calories => $_getN(1);
  @$pb.TagNumber(2)
  set calories(CaloriesProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCalories() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalories() => clearField(2);
  @$pb.TagNumber(2)
  CaloriesProto ensureCalories() => $_ensure(1);
}

enum SyncStatusWithCaloriesResultProto_Result {
  success, 
  failure, 
  notSet
}

class SyncStatusWithCaloriesResultProto extends $pb.GeneratedMessage {
  factory SyncStatusWithCaloriesResultProto({
    SyncStatusWithCaloriesProto? success,
    PluginExceptionProto? failure,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (failure != null) {
      $result.failure = failure;
    }
    return $result;
  }
  SyncStatusWithCaloriesResultProto._() : super();
  factory SyncStatusWithCaloriesResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncStatusWithCaloriesResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SyncStatusWithCaloriesResultProto_Result> _SyncStatusWithCaloriesResultProto_ResultByTag = {
    1 : SyncStatusWithCaloriesResultProto_Result.success,
    2 : SyncStatusWithCaloriesResultProto_Result.failure,
    0 : SyncStatusWithCaloriesResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncStatusWithCaloriesResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SyncStatusWithCaloriesProto>(1, _omitFieldNames ? '' : 'success', subBuilder: SyncStatusWithCaloriesProto.create)
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncStatusWithCaloriesResultProto clone() => SyncStatusWithCaloriesResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncStatusWithCaloriesResultProto copyWith(void Function(SyncStatusWithCaloriesResultProto) updates) => super.copyWith((message) => updates(message as SyncStatusWithCaloriesResultProto)) as SyncStatusWithCaloriesResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncStatusWithCaloriesResultProto create() => SyncStatusWithCaloriesResultProto._();
  SyncStatusWithCaloriesResultProto createEmptyInstance() => create();
  static $pb.PbList<SyncStatusWithCaloriesResultProto> createRepeated() => $pb.PbList<SyncStatusWithCaloriesResultProto>();
  @$core.pragma('dart2js:noInline')
  static SyncStatusWithCaloriesResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncStatusWithCaloriesResultProto>(create);
  static SyncStatusWithCaloriesResultProto? _defaultInstance;

  SyncStatusWithCaloriesResultProto_Result whichResult() => _SyncStatusWithCaloriesResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SyncStatusWithCaloriesProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(SyncStatusWithCaloriesProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
  @$pb.TagNumber(1)
  SyncStatusWithCaloriesProto ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  PluginExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(PluginExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensureFailure() => $_ensure(1);
}

class DataSourceAuthorizerProto extends $pb.GeneratedMessage {
  factory DataSourceAuthorizerProto({
    $core.String? dataSource,
    $core.bool? authorized,
    $core.String? authorizationUrl,
    $core.bool? authorizationUrlIsNull,
  }) {
    final $result = create();
    if (dataSource != null) {
      $result.dataSource = dataSource;
    }
    if (authorized != null) {
      $result.authorized = authorized;
    }
    if (authorizationUrl != null) {
      $result.authorizationUrl = authorizationUrl;
    }
    if (authorizationUrlIsNull != null) {
      $result.authorizationUrlIsNull = authorizationUrlIsNull;
    }
    return $result;
  }
  DataSourceAuthorizerProto._() : super();
  factory DataSourceAuthorizerProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataSourceAuthorizerProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataSourceAuthorizerProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataSource', protoName: 'dataSource')
    ..aOB(2, _omitFieldNames ? '' : 'authorized')
    ..aOS(3, _omitFieldNames ? '' : 'authorizationUrl', protoName: 'authorizationUrl')
    ..aOB(6, _omitFieldNames ? '' : 'authorizationUrlIsNull', protoName: 'authorizationUrlIsNull')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataSourceAuthorizerProto clone() => DataSourceAuthorizerProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataSourceAuthorizerProto copyWith(void Function(DataSourceAuthorizerProto) updates) => super.copyWith((message) => updates(message as DataSourceAuthorizerProto)) as DataSourceAuthorizerProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataSourceAuthorizerProto create() => DataSourceAuthorizerProto._();
  DataSourceAuthorizerProto createEmptyInstance() => create();
  static $pb.PbList<DataSourceAuthorizerProto> createRepeated() => $pb.PbList<DataSourceAuthorizerProto>();
  @$core.pragma('dart2js:noInline')
  static DataSourceAuthorizerProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataSourceAuthorizerProto>(create);
  static DataSourceAuthorizerProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataSource => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataSource($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataSource() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get authorized => $_getBF(1);
  @$pb.TagNumber(2)
  set authorized($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthorized() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthorized() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get authorizationUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set authorizationUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthorizationUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthorizationUrl() => clearField(3);

  @$pb.TagNumber(6)
  $core.bool get authorizationUrlIsNull => $_getBF(3);
  @$pb.TagNumber(6)
  set authorizationUrlIsNull($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasAuthorizationUrlIsNull() => $_has(3);
  @$pb.TagNumber(6)
  void clearAuthorizationUrlIsNull() => clearField(6);
}

enum DataSourceAuthorizerResultProto_Result {
  success, 
  failure, 
  notSet
}

class DataSourceAuthorizerResultProto extends $pb.GeneratedMessage {
  factory DataSourceAuthorizerResultProto({
    DataSourceAuthorizerProto? success,
    PluginExceptionProto? failure,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (failure != null) {
      $result.failure = failure;
    }
    return $result;
  }
  DataSourceAuthorizerResultProto._() : super();
  factory DataSourceAuthorizerResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataSourceAuthorizerResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DataSourceAuthorizerResultProto_Result> _DataSourceAuthorizerResultProto_ResultByTag = {
    1 : DataSourceAuthorizerResultProto_Result.success,
    2 : DataSourceAuthorizerResultProto_Result.failure,
    0 : DataSourceAuthorizerResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataSourceAuthorizerResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<DataSourceAuthorizerProto>(1, _omitFieldNames ? '' : 'success', subBuilder: DataSourceAuthorizerProto.create)
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataSourceAuthorizerResultProto clone() => DataSourceAuthorizerResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataSourceAuthorizerResultProto copyWith(void Function(DataSourceAuthorizerResultProto) updates) => super.copyWith((message) => updates(message as DataSourceAuthorizerResultProto)) as DataSourceAuthorizerResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataSourceAuthorizerResultProto create() => DataSourceAuthorizerResultProto._();
  DataSourceAuthorizerResultProto createEmptyInstance() => create();
  static $pb.PbList<DataSourceAuthorizerResultProto> createRepeated() => $pb.PbList<DataSourceAuthorizerResultProto>();
  @$core.pragma('dart2js:noInline')
  static DataSourceAuthorizerResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataSourceAuthorizerResultProto>(create);
  static DataSourceAuthorizerResultProto? _defaultInstance;

  DataSourceAuthorizerResultProto_Result whichResult() => _DataSourceAuthorizerResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DataSourceAuthorizerProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(DataSourceAuthorizerProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
  @$pb.TagNumber(1)
  DataSourceAuthorizerProto ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  PluginExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(PluginExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensureFailure() => $_ensure(1);
}

class AuthorizedDataSourcesProto extends $pb.GeneratedMessage {
  factory AuthorizedDataSourcesProto({
    $core.int? oura,
    $core.int? polar,
    $core.int? whoop,
    $core.int? fitbit,
    $core.int? garmin,
    $core.int? withings,
    $core.int? dexcom,
    $core.int? appleHealth,
    $core.int? healthConnect,
    $core.int? android,
  }) {
    final $result = create();
    if (oura != null) {
      $result.oura = oura;
    }
    if (polar != null) {
      $result.polar = polar;
    }
    if (whoop != null) {
      $result.whoop = whoop;
    }
    if (fitbit != null) {
      $result.fitbit = fitbit;
    }
    if (garmin != null) {
      $result.garmin = garmin;
    }
    if (withings != null) {
      $result.withings = withings;
    }
    if (dexcom != null) {
      $result.dexcom = dexcom;
    }
    if (appleHealth != null) {
      $result.appleHealth = appleHealth;
    }
    if (healthConnect != null) {
      $result.healthConnect = healthConnect;
    }
    if (android != null) {
      $result.android = android;
    }
    return $result;
  }
  AuthorizedDataSourcesProto._() : super();
  factory AuthorizedDataSourcesProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthorizedDataSourcesProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthorizedDataSourcesProto', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'oura', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'polar', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'whoop', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'fitbit', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'garmin', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'withings', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'dexcom', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'appleHealth', $pb.PbFieldType.OU3, protoName: 'appleHealth')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'healthConnect', $pb.PbFieldType.OU3, protoName: 'healthConnect')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'android', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthorizedDataSourcesProto clone() => AuthorizedDataSourcesProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthorizedDataSourcesProto copyWith(void Function(AuthorizedDataSourcesProto) updates) => super.copyWith((message) => updates(message as AuthorizedDataSourcesProto)) as AuthorizedDataSourcesProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthorizedDataSourcesProto create() => AuthorizedDataSourcesProto._();
  AuthorizedDataSourcesProto createEmptyInstance() => create();
  static $pb.PbList<AuthorizedDataSourcesProto> createRepeated() => $pb.PbList<AuthorizedDataSourcesProto>();
  @$core.pragma('dart2js:noInline')
  static AuthorizedDataSourcesProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthorizedDataSourcesProto>(create);
  static AuthorizedDataSourcesProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get oura => $_getIZ(0);
  @$pb.TagNumber(1)
  set oura($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOura() => $_has(0);
  @$pb.TagNumber(1)
  void clearOura() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get polar => $_getIZ(1);
  @$pb.TagNumber(2)
  set polar($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPolar() => $_has(1);
  @$pb.TagNumber(2)
  void clearPolar() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get whoop => $_getIZ(2);
  @$pb.TagNumber(3)
  set whoop($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWhoop() => $_has(2);
  @$pb.TagNumber(3)
  void clearWhoop() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get fitbit => $_getIZ(3);
  @$pb.TagNumber(4)
  set fitbit($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFitbit() => $_has(3);
  @$pb.TagNumber(4)
  void clearFitbit() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get garmin => $_getIZ(4);
  @$pb.TagNumber(5)
  set garmin($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGarmin() => $_has(4);
  @$pb.TagNumber(5)
  void clearGarmin() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get withings => $_getIZ(5);
  @$pb.TagNumber(6)
  set withings($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasWithings() => $_has(5);
  @$pb.TagNumber(6)
  void clearWithings() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get dexcom => $_getIZ(6);
  @$pb.TagNumber(7)
  set dexcom($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDexcom() => $_has(6);
  @$pb.TagNumber(7)
  void clearDexcom() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get appleHealth => $_getIZ(7);
  @$pb.TagNumber(8)
  set appleHealth($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAppleHealth() => $_has(7);
  @$pb.TagNumber(8)
  void clearAppleHealth() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get healthConnect => $_getIZ(8);
  @$pb.TagNumber(9)
  set healthConnect($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHealthConnect() => $_has(8);
  @$pb.TagNumber(9)
  void clearHealthConnect() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get android => $_getIZ(9);
  @$pb.TagNumber(10)
  set android($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAndroid() => $_has(9);
  @$pb.TagNumber(10)
  void clearAndroid() => clearField(10);
}

enum AuthorizedDataSourcesResultProto_Result {
  success, 
  failure, 
  notSet
}

class AuthorizedDataSourcesResultProto extends $pb.GeneratedMessage {
  factory AuthorizedDataSourcesResultProto({
    AuthorizedDataSourcesProto? success,
    PluginExceptionProto? failure,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (failure != null) {
      $result.failure = failure;
    }
    return $result;
  }
  AuthorizedDataSourcesResultProto._() : super();
  factory AuthorizedDataSourcesResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthorizedDataSourcesResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AuthorizedDataSourcesResultProto_Result> _AuthorizedDataSourcesResultProto_ResultByTag = {
    1 : AuthorizedDataSourcesResultProto_Result.success,
    2 : AuthorizedDataSourcesResultProto_Result.failure,
    0 : AuthorizedDataSourcesResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthorizedDataSourcesResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AuthorizedDataSourcesProto>(1, _omitFieldNames ? '' : 'success', subBuilder: AuthorizedDataSourcesProto.create)
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthorizedDataSourcesResultProto clone() => AuthorizedDataSourcesResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthorizedDataSourcesResultProto copyWith(void Function(AuthorizedDataSourcesResultProto) updates) => super.copyWith((message) => updates(message as AuthorizedDataSourcesResultProto)) as AuthorizedDataSourcesResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthorizedDataSourcesResultProto create() => AuthorizedDataSourcesResultProto._();
  AuthorizedDataSourcesResultProto createEmptyInstance() => create();
  static $pb.PbList<AuthorizedDataSourcesResultProto> createRepeated() => $pb.PbList<AuthorizedDataSourcesResultProto>();
  @$core.pragma('dart2js:noInline')
  static AuthorizedDataSourcesResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthorizedDataSourcesResultProto>(create);
  static AuthorizedDataSourcesResultProto? _defaultInstance;

  AuthorizedDataSourcesResultProto_Result whichResult() => _AuthorizedDataSourcesResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AuthorizedDataSourcesProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(AuthorizedDataSourcesProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
  @$pb.TagNumber(1)
  AuthorizedDataSourcesProto ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  PluginExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(PluginExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensureFailure() => $_ensure(1);
}

class AuthorizedDataSourceV2Proto extends $pb.GeneratedMessage {
  factory AuthorizedDataSourceV2Proto({
    $core.String? name,
    $core.bool? authorized,
    $core.String? imageUrl,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (authorized != null) {
      $result.authorized = authorized;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    return $result;
  }
  AuthorizedDataSourceV2Proto._() : super();
  factory AuthorizedDataSourceV2Proto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthorizedDataSourceV2Proto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthorizedDataSourceV2Proto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'authorized')
    ..aOS(3, _omitFieldNames ? '' : 'imageUrl', protoName: 'imageUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthorizedDataSourceV2Proto clone() => AuthorizedDataSourceV2Proto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthorizedDataSourceV2Proto copyWith(void Function(AuthorizedDataSourceV2Proto) updates) => super.copyWith((message) => updates(message as AuthorizedDataSourceV2Proto)) as AuthorizedDataSourceV2Proto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthorizedDataSourceV2Proto create() => AuthorizedDataSourceV2Proto._();
  AuthorizedDataSourceV2Proto createEmptyInstance() => create();
  static $pb.PbList<AuthorizedDataSourceV2Proto> createRepeated() => $pb.PbList<AuthorizedDataSourceV2Proto>();
  @$core.pragma('dart2js:noInline')
  static AuthorizedDataSourceV2Proto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthorizedDataSourceV2Proto>(create);
  static AuthorizedDataSourceV2Proto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get authorized => $_getBF(1);
  @$pb.TagNumber(2)
  set authorized($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthorized() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthorized() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get imageUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set imageUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImageUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageUrl() => clearField(3);
}

class AuthorizedDataSourceV2ListProto extends $pb.GeneratedMessage {
  factory AuthorizedDataSourceV2ListProto({
    $core.Iterable<AuthorizedDataSourceV2Proto>? list,
  }) {
    final $result = create();
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  AuthorizedDataSourceV2ListProto._() : super();
  factory AuthorizedDataSourceV2ListProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthorizedDataSourceV2ListProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthorizedDataSourceV2ListProto', createEmptyInstance: create)
    ..pc<AuthorizedDataSourceV2Proto>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: AuthorizedDataSourceV2Proto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthorizedDataSourceV2ListProto clone() => AuthorizedDataSourceV2ListProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthorizedDataSourceV2ListProto copyWith(void Function(AuthorizedDataSourceV2ListProto) updates) => super.copyWith((message) => updates(message as AuthorizedDataSourceV2ListProto)) as AuthorizedDataSourceV2ListProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthorizedDataSourceV2ListProto create() => AuthorizedDataSourceV2ListProto._();
  AuthorizedDataSourceV2ListProto createEmptyInstance() => create();
  static $pb.PbList<AuthorizedDataSourceV2ListProto> createRepeated() => $pb.PbList<AuthorizedDataSourceV2ListProto>();
  @$core.pragma('dart2js:noInline')
  static AuthorizedDataSourceV2ListProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthorizedDataSourceV2ListProto>(create);
  static AuthorizedDataSourceV2ListProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AuthorizedDataSourceV2Proto> get list => $_getList(0);
}

enum AuthorizedDataSourceV2ResultProto_Result {
  success, 
  failure, 
  notSet
}

class AuthorizedDataSourceV2ResultProto extends $pb.GeneratedMessage {
  factory AuthorizedDataSourceV2ResultProto({
    AuthorizedDataSourceV2ListProto? success,
    PluginExceptionProto? failure,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (failure != null) {
      $result.failure = failure;
    }
    return $result;
  }
  AuthorizedDataSourceV2ResultProto._() : super();
  factory AuthorizedDataSourceV2ResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthorizedDataSourceV2ResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AuthorizedDataSourceV2ResultProto_Result> _AuthorizedDataSourceV2ResultProto_ResultByTag = {
    1 : AuthorizedDataSourceV2ResultProto_Result.success,
    2 : AuthorizedDataSourceV2ResultProto_Result.failure,
    0 : AuthorizedDataSourceV2ResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthorizedDataSourceV2ResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AuthorizedDataSourceV2ListProto>(1, _omitFieldNames ? '' : 'success', subBuilder: AuthorizedDataSourceV2ListProto.create)
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthorizedDataSourceV2ResultProto clone() => AuthorizedDataSourceV2ResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthorizedDataSourceV2ResultProto copyWith(void Function(AuthorizedDataSourceV2ResultProto) updates) => super.copyWith((message) => updates(message as AuthorizedDataSourceV2ResultProto)) as AuthorizedDataSourceV2ResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthorizedDataSourceV2ResultProto create() => AuthorizedDataSourceV2ResultProto._();
  AuthorizedDataSourceV2ResultProto createEmptyInstance() => create();
  static $pb.PbList<AuthorizedDataSourceV2ResultProto> createRepeated() => $pb.PbList<AuthorizedDataSourceV2ResultProto>();
  @$core.pragma('dart2js:noInline')
  static AuthorizedDataSourceV2ResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthorizedDataSourceV2ResultProto>(create);
  static AuthorizedDataSourceV2ResultProto? _defaultInstance;

  AuthorizedDataSourceV2ResultProto_Result whichResult() => _AuthorizedDataSourceV2ResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AuthorizedDataSourceV2ListProto get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(AuthorizedDataSourceV2ListProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
  @$pb.TagNumber(1)
  AuthorizedDataSourceV2ListProto ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  PluginExceptionProto get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure(PluginExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensureFailure() => $_ensure(1);
}

class DataSourceProto extends $pb.GeneratedMessage {
  factory DataSourceProto({
    $core.String? name,
    $core.String? description,
    $core.String? imageUrl,
    $core.bool? connected,
    $core.String? authorizationUrl,
    $core.bool? authorizationUrlIsNull,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    if (connected != null) {
      $result.connected = connected;
    }
    if (authorizationUrl != null) {
      $result.authorizationUrl = authorizationUrl;
    }
    if (authorizationUrlIsNull != null) {
      $result.authorizationUrlIsNull = authorizationUrlIsNull;
    }
    return $result;
  }
  DataSourceProto._() : super();
  factory DataSourceProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataSourceProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataSourceProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'imageUrl', protoName: 'imageUrl')
    ..aOB(4, _omitFieldNames ? '' : 'connected')
    ..aOS(5, _omitFieldNames ? '' : 'authorizationUrl', protoName: 'authorizationUrl')
    ..aOB(6, _omitFieldNames ? '' : 'authorizationUrlIsNull', protoName: 'authorizationUrlIsNull')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataSourceProto clone() => DataSourceProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataSourceProto copyWith(void Function(DataSourceProto) updates) => super.copyWith((message) => updates(message as DataSourceProto)) as DataSourceProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataSourceProto create() => DataSourceProto._();
  DataSourceProto createEmptyInstance() => create();
  static $pb.PbList<DataSourceProto> createRepeated() => $pb.PbList<DataSourceProto>();
  @$core.pragma('dart2js:noInline')
  static DataSourceProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataSourceProto>(create);
  static DataSourceProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get imageUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set imageUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImageUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get connected => $_getBF(3);
  @$pb.TagNumber(4)
  set connected($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasConnected() => $_has(3);
  @$pb.TagNumber(4)
  void clearConnected() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get authorizationUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set authorizationUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAuthorizationUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthorizationUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get authorizationUrlIsNull => $_getBF(5);
  @$pb.TagNumber(6)
  set authorizationUrlIsNull($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAuthorizationUrlIsNull() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthorizationUrlIsNull() => clearField(6);
}

class DataSourcesProtoListWrapper extends $pb.GeneratedMessage {
  factory DataSourcesProtoListWrapper({
    $core.Iterable<DataSourceProto>? dataSources,
  }) {
    final $result = create();
    if (dataSources != null) {
      $result.dataSources.addAll(dataSources);
    }
    return $result;
  }
  DataSourcesProtoListWrapper._() : super();
  factory DataSourcesProtoListWrapper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataSourcesProtoListWrapper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataSourcesProtoListWrapper', createEmptyInstance: create)
    ..pc<DataSourceProto>(1, _omitFieldNames ? '' : 'dataSources', $pb.PbFieldType.PM, protoName: 'dataSources', subBuilder: DataSourceProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataSourcesProtoListWrapper clone() => DataSourcesProtoListWrapper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataSourcesProtoListWrapper copyWith(void Function(DataSourcesProtoListWrapper) updates) => super.copyWith((message) => updates(message as DataSourcesProtoListWrapper)) as DataSourcesProtoListWrapper;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataSourcesProtoListWrapper create() => DataSourcesProtoListWrapper._();
  DataSourcesProtoListWrapper createEmptyInstance() => create();
  static $pb.PbList<DataSourcesProtoListWrapper> createRepeated() => $pb.PbList<DataSourcesProtoListWrapper>();
  @$core.pragma('dart2js:noInline')
  static DataSourcesProtoListWrapper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataSourcesProtoListWrapper>(create);
  static DataSourcesProtoListWrapper? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DataSourceProto> get dataSources => $_getList(0);
}

enum ResultDataSourcesProto_Result {
  dataSourcesProtoListWrapper, 
  pluginExceptionProto, 
  notSet
}

class ResultDataSourcesProto extends $pb.GeneratedMessage {
  factory ResultDataSourcesProto({
    DataSourcesProtoListWrapper? dataSourcesProtoListWrapper,
    PluginExceptionProto? pluginExceptionProto,
  }) {
    final $result = create();
    if (dataSourcesProtoListWrapper != null) {
      $result.dataSourcesProtoListWrapper = dataSourcesProtoListWrapper;
    }
    if (pluginExceptionProto != null) {
      $result.pluginExceptionProto = pluginExceptionProto;
    }
    return $result;
  }
  ResultDataSourcesProto._() : super();
  factory ResultDataSourcesProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultDataSourcesProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultDataSourcesProto_Result> _ResultDataSourcesProto_ResultByTag = {
    1 : ResultDataSourcesProto_Result.dataSourcesProtoListWrapper,
    2 : ResultDataSourcesProto_Result.pluginExceptionProto,
    0 : ResultDataSourcesProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResultDataSourcesProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<DataSourcesProtoListWrapper>(1, _omitFieldNames ? '' : 'dataSourcesProtoListWrapper', protoName: 'dataSourcesProtoListWrapper', subBuilder: DataSourcesProtoListWrapper.create)
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'pluginExceptionProto', protoName: 'pluginExceptionProto', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultDataSourcesProto clone() => ResultDataSourcesProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultDataSourcesProto copyWith(void Function(ResultDataSourcesProto) updates) => super.copyWith((message) => updates(message as ResultDataSourcesProto)) as ResultDataSourcesProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultDataSourcesProto create() => ResultDataSourcesProto._();
  ResultDataSourcesProto createEmptyInstance() => create();
  static $pb.PbList<ResultDataSourcesProto> createRepeated() => $pb.PbList<ResultDataSourcesProto>();
  @$core.pragma('dart2js:noInline')
  static ResultDataSourcesProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultDataSourcesProto>(create);
  static ResultDataSourcesProto? _defaultInstance;

  ResultDataSourcesProto_Result whichResult() => _ResultDataSourcesProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DataSourcesProtoListWrapper get dataSourcesProtoListWrapper => $_getN(0);
  @$pb.TagNumber(1)
  set dataSourcesProtoListWrapper(DataSourcesProtoListWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataSourcesProtoListWrapper() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataSourcesProtoListWrapper() => clearField(1);
  @$pb.TagNumber(1)
  DataSourcesProtoListWrapper ensureDataSourcesProtoListWrapper() => $_ensure(0);

  @$pb.TagNumber(2)
  PluginExceptionProto get pluginExceptionProto => $_getN(1);
  @$pb.TagNumber(2)
  set pluginExceptionProto(PluginExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPluginExceptionProto() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginExceptionProto() => clearField(2);
  @$pb.TagNumber(2)
  PluginExceptionProto ensurePluginExceptionProto() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
