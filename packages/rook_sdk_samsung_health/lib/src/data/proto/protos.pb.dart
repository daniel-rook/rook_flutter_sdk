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

enum BooleanResultProto_Result {
  success, 
  failure, 
  notSet
}

class BooleanResultProto extends $pb.GeneratedMessage {
  factory BooleanResultProto({
    $core.bool? success,
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
  BooleanResultProto._() : super();
  factory BooleanResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BooleanResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, BooleanResultProto_Result> _BooleanResultProto_ResultByTag = {
    1 : BooleanResultProto_Result.success,
    2 : BooleanResultProto_Result.failure,
    0 : BooleanResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BooleanResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BooleanResultProto clone() => BooleanResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BooleanResultProto copyWith(void Function(BooleanResultProto) updates) => super.copyWith((message) => updates(message as BooleanResultProto)) as BooleanResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BooleanResultProto create() => BooleanResultProto._();
  BooleanResultProto createEmptyInstance() => create();
  static $pb.PbList<BooleanResultProto> createRepeated() => $pb.PbList<BooleanResultProto>();
  @$core.pragma('dart2js:noInline')
  static BooleanResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BooleanResultProto>(create);
  static BooleanResultProto? _defaultInstance;

  BooleanResultProto_Result whichResult() => _BooleanResultProto_ResultByTag[$_whichOneof(0)]!;
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

enum Int64ResultProto_Result {
  success, 
  failure, 
  notSet
}

class Int64ResultProto extends $pb.GeneratedMessage {
  factory Int64ResultProto({
    $fixnum.Int64? success,
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
  Int64ResultProto._() : super();
  factory Int64ResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Int64ResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Int64ResultProto_Result> _Int64ResultProto_ResultByTag = {
    1 : Int64ResultProto_Result.success,
    2 : Int64ResultProto_Result.failure,
    0 : Int64ResultProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Int64ResultProto', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aInt64(1, _omitFieldNames ? '' : 'success')
    ..aOM<PluginExceptionProto>(2, _omitFieldNames ? '' : 'failure', subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Int64ResultProto clone() => Int64ResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Int64ResultProto copyWith(void Function(Int64ResultProto) updates) => super.copyWith((message) => updates(message as Int64ResultProto)) as Int64ResultProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64ResultProto create() => Int64ResultProto._();
  Int64ResultProto createEmptyInstance() => create();
  static $pb.PbList<Int64ResultProto> createRepeated() => $pb.PbList<Int64ResultProto>();
  @$core.pragma('dart2js:noInline')
  static Int64ResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64ResultProto>(create);
  static Int64ResultProto? _defaultInstance;

  Int64ResultProto_Result whichResult() => _Int64ResultProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get success => $_getI64(0);
  @$pb.TagNumber(1)
  set success($fixnum.Int64 v) { $_setInt64(0, v); }
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
  factory SamsungHealthPermissionsSummaryProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SamsungHealthPermissionsSummaryProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SamsungHealthPermissionsSummaryProto', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'dataTypesGranted', protoName: 'dataTypesGranted')
    ..aOB(2, _omitFieldNames ? '' : 'dataTypesPartiallyGranted', protoName: 'dataTypesPartiallyGranted')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SamsungHealthPermissionsSummaryProto clone() => SamsungHealthPermissionsSummaryProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SamsungHealthPermissionsSummaryProto copyWith(void Function(SamsungHealthPermissionsSummaryProto) updates) => super.copyWith((message) => updates(message as SamsungHealthPermissionsSummaryProto)) as SamsungHealthPermissionsSummaryProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SamsungHealthPermissionsSummaryProto create() => SamsungHealthPermissionsSummaryProto._();
  SamsungHealthPermissionsSummaryProto createEmptyInstance() => create();
  static $pb.PbList<SamsungHealthPermissionsSummaryProto> createRepeated() => $pb.PbList<SamsungHealthPermissionsSummaryProto>();
  @$core.pragma('dart2js:noInline')
  static SamsungHealthPermissionsSummaryProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SamsungHealthPermissionsSummaryProto>(create);
  static SamsungHealthPermissionsSummaryProto? _defaultInstance;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
