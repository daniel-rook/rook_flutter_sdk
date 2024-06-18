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
    return $result;
  }
  RookConfigurationProto._() : super();
  factory RookConfigurationProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RookConfigurationProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RookConfigurationProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'clientUUID', protoName: 'clientUUID')
    ..aOS(2, _omitFieldNames ? '' : 'secretKey', protoName: 'secretKey')
    ..e<RookEnvironmentProto>(3, _omitFieldNames ? '' : 'environment', $pb.PbFieldType.OE, defaultOrMaker: RookEnvironmentProto.SANDBOX, valueOf: RookEnvironmentProto.valueOf, enumValues: RookEnvironmentProto.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RookConfigurationProto clone() => RookConfigurationProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RookConfigurationProto copyWith(void Function(RookConfigurationProto) updates) => super.copyWith((message) => updates(message as RookConfigurationProto)) as RookConfigurationProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RookConfigurationProto create() => RookConfigurationProto._();
  RookConfigurationProto createEmptyInstance() => create();
  static $pb.PbList<RookConfigurationProto> createRepeated() => $pb.PbList<RookConfigurationProto>();
  @$core.pragma('dart2js:noInline')
  static RookConfigurationProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RookConfigurationProto>(create);
  static RookConfigurationProto? _defaultInstance;

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
  RookEnvironmentProto get environment => $_getN(2);
  @$pb.TagNumber(3)
  set environment(RookEnvironmentProto v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEnvironment() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnvironment() => clearField(3);
}

class DataSourceProto extends $pb.GeneratedMessage {
  factory DataSourceProto({
    $core.String? name,
    $core.String? description,
    $core.String? image,
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
    if (image != null) {
      $result.image = image;
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
    ..aOS(3, _omitFieldNames ? '' : 'image')
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
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => clearField(3);

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

class DataSourceProtoListWrapper extends $pb.GeneratedMessage {
  factory DataSourceProtoListWrapper({
    $core.Iterable<DataSourceProto>? dataSources,
  }) {
    final $result = create();
    if (dataSources != null) {
      $result.dataSources.addAll(dataSources);
    }
    return $result;
  }
  DataSourceProtoListWrapper._() : super();
  factory DataSourceProtoListWrapper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataSourceProtoListWrapper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataSourceProtoListWrapper', createEmptyInstance: create)
    ..pc<DataSourceProto>(1, _omitFieldNames ? '' : 'dataSources', $pb.PbFieldType.PM, protoName: 'dataSources', subBuilder: DataSourceProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataSourceProtoListWrapper clone() => DataSourceProtoListWrapper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataSourceProtoListWrapper copyWith(void Function(DataSourceProtoListWrapper) updates) => super.copyWith((message) => updates(message as DataSourceProtoListWrapper)) as DataSourceProtoListWrapper;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataSourceProtoListWrapper create() => DataSourceProtoListWrapper._();
  DataSourceProtoListWrapper createEmptyInstance() => create();
  static $pb.PbList<DataSourceProtoListWrapper> createRepeated() => $pb.PbList<DataSourceProtoListWrapper>();
  @$core.pragma('dart2js:noInline')
  static DataSourceProtoListWrapper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataSourceProtoListWrapper>(create);
  static DataSourceProtoListWrapper? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DataSourceProto> get dataSources => $_getList(0);
}

class DeviceNotSupportedExceptionProto extends $pb.GeneratedMessage {
  factory DeviceNotSupportedExceptionProto({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  DeviceNotSupportedExceptionProto._() : super();
  factory DeviceNotSupportedExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceNotSupportedExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeviceNotSupportedExceptionProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceNotSupportedExceptionProto clone() => DeviceNotSupportedExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceNotSupportedExceptionProto copyWith(void Function(DeviceNotSupportedExceptionProto) updates) => super.copyWith((message) => updates(message as DeviceNotSupportedExceptionProto)) as DeviceNotSupportedExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceNotSupportedExceptionProto create() => DeviceNotSupportedExceptionProto._();
  DeviceNotSupportedExceptionProto createEmptyInstance() => create();
  static $pb.PbList<DeviceNotSupportedExceptionProto> createRepeated() => $pb.PbList<DeviceNotSupportedExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static DeviceNotSupportedExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceNotSupportedExceptionProto>(create);
  static DeviceNotSupportedExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class HealthConnectNotInstalledExceptionProto extends $pb.GeneratedMessage {
  factory HealthConnectNotInstalledExceptionProto({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  HealthConnectNotInstalledExceptionProto._() : super();
  factory HealthConnectNotInstalledExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthConnectNotInstalledExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HealthConnectNotInstalledExceptionProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HealthConnectNotInstalledExceptionProto clone() => HealthConnectNotInstalledExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HealthConnectNotInstalledExceptionProto copyWith(void Function(HealthConnectNotInstalledExceptionProto) updates) => super.copyWith((message) => updates(message as HealthConnectNotInstalledExceptionProto)) as HealthConnectNotInstalledExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthConnectNotInstalledExceptionProto create() => HealthConnectNotInstalledExceptionProto._();
  HealthConnectNotInstalledExceptionProto createEmptyInstance() => create();
  static $pb.PbList<HealthConnectNotInstalledExceptionProto> createRepeated() => $pb.PbList<HealthConnectNotInstalledExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static HealthConnectNotInstalledExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthConnectNotInstalledExceptionProto>(create);
  static HealthConnectNotInstalledExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class HttpRequestExceptionProto extends $pb.GeneratedMessage {
  factory HttpRequestExceptionProto({
    $core.String? message,
    $core.int? code,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  HttpRequestExceptionProto._() : super();
  factory HttpRequestExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HttpRequestExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HttpRequestExceptionProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HttpRequestExceptionProto clone() => HttpRequestExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HttpRequestExceptionProto copyWith(void Function(HttpRequestExceptionProto) updates) => super.copyWith((message) => updates(message as HttpRequestExceptionProto)) as HttpRequestExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HttpRequestExceptionProto create() => HttpRequestExceptionProto._();
  HttpRequestExceptionProto createEmptyInstance() => create();
  static $pb.PbList<HttpRequestExceptionProto> createRepeated() => $pb.PbList<HttpRequestExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static HttpRequestExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HttpRequestExceptionProto>(create);
  static HttpRequestExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);
}

class MissingConfigurationExceptionProto extends $pb.GeneratedMessage {
  factory MissingConfigurationExceptionProto({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  MissingConfigurationExceptionProto._() : super();
  factory MissingConfigurationExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MissingConfigurationExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MissingConfigurationExceptionProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MissingConfigurationExceptionProto clone() => MissingConfigurationExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MissingConfigurationExceptionProto copyWith(void Function(MissingConfigurationExceptionProto) updates) => super.copyWith((message) => updates(message as MissingConfigurationExceptionProto)) as MissingConfigurationExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MissingConfigurationExceptionProto create() => MissingConfigurationExceptionProto._();
  MissingConfigurationExceptionProto createEmptyInstance() => create();
  static $pb.PbList<MissingConfigurationExceptionProto> createRepeated() => $pb.PbList<MissingConfigurationExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static MissingConfigurationExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MissingConfigurationExceptionProto>(create);
  static MissingConfigurationExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class MissingPermissionsExceptionProto extends $pb.GeneratedMessage {
  factory MissingPermissionsExceptionProto({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  MissingPermissionsExceptionProto._() : super();
  factory MissingPermissionsExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MissingPermissionsExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MissingPermissionsExceptionProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MissingPermissionsExceptionProto clone() => MissingPermissionsExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MissingPermissionsExceptionProto copyWith(void Function(MissingPermissionsExceptionProto) updates) => super.copyWith((message) => updates(message as MissingPermissionsExceptionProto)) as MissingPermissionsExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MissingPermissionsExceptionProto create() => MissingPermissionsExceptionProto._();
  MissingPermissionsExceptionProto createEmptyInstance() => create();
  static $pb.PbList<MissingPermissionsExceptionProto> createRepeated() => $pb.PbList<MissingPermissionsExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static MissingPermissionsExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MissingPermissionsExceptionProto>(create);
  static MissingPermissionsExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class RequestQuotaExceededExceptionProto extends $pb.GeneratedMessage {
  factory RequestQuotaExceededExceptionProto({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  RequestQuotaExceededExceptionProto._() : super();
  factory RequestQuotaExceededExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestQuotaExceededExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RequestQuotaExceededExceptionProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestQuotaExceededExceptionProto clone() => RequestQuotaExceededExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestQuotaExceededExceptionProto copyWith(void Function(RequestQuotaExceededExceptionProto) updates) => super.copyWith((message) => updates(message as RequestQuotaExceededExceptionProto)) as RequestQuotaExceededExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestQuotaExceededExceptionProto create() => RequestQuotaExceededExceptionProto._();
  RequestQuotaExceededExceptionProto createEmptyInstance() => create();
  static $pb.PbList<RequestQuotaExceededExceptionProto> createRepeated() => $pb.PbList<RequestQuotaExceededExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static RequestQuotaExceededExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestQuotaExceededExceptionProto>(create);
  static RequestQuotaExceededExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class SDKNotInitializedExceptionProto extends $pb.GeneratedMessage {
  factory SDKNotInitializedExceptionProto({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  SDKNotInitializedExceptionProto._() : super();
  factory SDKNotInitializedExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SDKNotInitializedExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SDKNotInitializedExceptionProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SDKNotInitializedExceptionProto clone() => SDKNotInitializedExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SDKNotInitializedExceptionProto copyWith(void Function(SDKNotInitializedExceptionProto) updates) => super.copyWith((message) => updates(message as SDKNotInitializedExceptionProto)) as SDKNotInitializedExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SDKNotInitializedExceptionProto create() => SDKNotInitializedExceptionProto._();
  SDKNotInitializedExceptionProto createEmptyInstance() => create();
  static $pb.PbList<SDKNotInitializedExceptionProto> createRepeated() => $pb.PbList<SDKNotInitializedExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static SDKNotInitializedExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SDKNotInitializedExceptionProto>(create);
  static SDKNotInitializedExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class TimeoutExceptionProto extends $pb.GeneratedMessage {
  factory TimeoutExceptionProto({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  TimeoutExceptionProto._() : super();
  factory TimeoutExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeoutExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TimeoutExceptionProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeoutExceptionProto clone() => TimeoutExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeoutExceptionProto copyWith(void Function(TimeoutExceptionProto) updates) => super.copyWith((message) => updates(message as TimeoutExceptionProto)) as TimeoutExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeoutExceptionProto create() => TimeoutExceptionProto._();
  TimeoutExceptionProto createEmptyInstance() => create();
  static $pb.PbList<TimeoutExceptionProto> createRepeated() => $pb.PbList<TimeoutExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static TimeoutExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeoutExceptionProto>(create);
  static TimeoutExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class UserNotInitializedExceptionProto extends $pb.GeneratedMessage {
  factory UserNotInitializedExceptionProto({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  UserNotInitializedExceptionProto._() : super();
  factory UserNotInitializedExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserNotInitializedExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserNotInitializedExceptionProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserNotInitializedExceptionProto clone() => UserNotInitializedExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserNotInitializedExceptionProto copyWith(void Function(UserNotInitializedExceptionProto) updates) => super.copyWith((message) => updates(message as UserNotInitializedExceptionProto)) as UserNotInitializedExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserNotInitializedExceptionProto create() => UserNotInitializedExceptionProto._();
  UserNotInitializedExceptionProto createEmptyInstance() => create();
  static $pb.PbList<UserNotInitializedExceptionProto> createRepeated() => $pb.PbList<UserNotInitializedExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static UserNotInitializedExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserNotInitializedExceptionProto>(create);
  static UserNotInitializedExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class GenericExceptionProto extends $pb.GeneratedMessage {
  factory GenericExceptionProto({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  GenericExceptionProto._() : super();
  factory GenericExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenericExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GenericExceptionProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenericExceptionProto clone() => GenericExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenericExceptionProto copyWith(void Function(GenericExceptionProto) updates) => super.copyWith((message) => updates(message as GenericExceptionProto)) as GenericExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenericExceptionProto create() => GenericExceptionProto._();
  GenericExceptionProto createEmptyInstance() => create();
  static $pb.PbList<GenericExceptionProto> createRepeated() => $pb.PbList<GenericExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static GenericExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenericExceptionProto>(create);
  static GenericExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class MissingAndroidPermissionsExceptionProto extends $pb.GeneratedMessage {
  factory MissingAndroidPermissionsExceptionProto({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  MissingAndroidPermissionsExceptionProto._() : super();
  factory MissingAndroidPermissionsExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MissingAndroidPermissionsExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MissingAndroidPermissionsExceptionProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MissingAndroidPermissionsExceptionProto clone() => MissingAndroidPermissionsExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MissingAndroidPermissionsExceptionProto copyWith(void Function(MissingAndroidPermissionsExceptionProto) updates) => super.copyWith((message) => updates(message as MissingAndroidPermissionsExceptionProto)) as MissingAndroidPermissionsExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MissingAndroidPermissionsExceptionProto create() => MissingAndroidPermissionsExceptionProto._();
  MissingAndroidPermissionsExceptionProto createEmptyInstance() => create();
  static $pb.PbList<MissingAndroidPermissionsExceptionProto> createRepeated() => $pb.PbList<MissingAndroidPermissionsExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static MissingAndroidPermissionsExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MissingAndroidPermissionsExceptionProto>(create);
  static MissingAndroidPermissionsExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class SDKNotAuthorizedExceptionProto extends $pb.GeneratedMessage {
  factory SDKNotAuthorizedExceptionProto({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  SDKNotAuthorizedExceptionProto._() : super();
  factory SDKNotAuthorizedExceptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SDKNotAuthorizedExceptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SDKNotAuthorizedExceptionProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SDKNotAuthorizedExceptionProto clone() => SDKNotAuthorizedExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SDKNotAuthorizedExceptionProto copyWith(void Function(SDKNotAuthorizedExceptionProto) updates) => super.copyWith((message) => updates(message as SDKNotAuthorizedExceptionProto)) as SDKNotAuthorizedExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SDKNotAuthorizedExceptionProto create() => SDKNotAuthorizedExceptionProto._();
  SDKNotAuthorizedExceptionProto createEmptyInstance() => create();
  static $pb.PbList<SDKNotAuthorizedExceptionProto> createRepeated() => $pb.PbList<SDKNotAuthorizedExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static SDKNotAuthorizedExceptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SDKNotAuthorizedExceptionProto>(create);
  static SDKNotAuthorizedExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

enum ResultBooleanProto_Result {
  success, 
  deviceNotSupportedExceptionProto, 
  healthConnectNotInstalledExceptionProto, 
  httpRequestExceptionProto, 
  missingConfigurationExceptionProto, 
  missingPermissionsExceptionProto, 
  requestQuotaExceededExceptionProto, 
  sdkNotInitializedExceptionProto, 
  timeoutExceptionProto, 
  userNotInitializedExceptionProto, 
  genericExceptionProto, 
  missingAndroidPermissionsExceptionProto, 
  sdkNotAuthorizedExceptionProto, 
  notSet
}

class ResultBooleanProto extends $pb.GeneratedMessage {
  factory ResultBooleanProto({
    $core.bool? success,
    DeviceNotSupportedExceptionProto? deviceNotSupportedExceptionProto,
    HealthConnectNotInstalledExceptionProto? healthConnectNotInstalledExceptionProto,
    HttpRequestExceptionProto? httpRequestExceptionProto,
    MissingConfigurationExceptionProto? missingConfigurationExceptionProto,
    MissingPermissionsExceptionProto? missingPermissionsExceptionProto,
    RequestQuotaExceededExceptionProto? requestQuotaExceededExceptionProto,
    SDKNotInitializedExceptionProto? sdkNotInitializedExceptionProto,
    TimeoutExceptionProto? timeoutExceptionProto,
    UserNotInitializedExceptionProto? userNotInitializedExceptionProto,
    GenericExceptionProto? genericExceptionProto,
    MissingAndroidPermissionsExceptionProto? missingAndroidPermissionsExceptionProto,
    SDKNotAuthorizedExceptionProto? sdkNotAuthorizedExceptionProto,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (deviceNotSupportedExceptionProto != null) {
      $result.deviceNotSupportedExceptionProto = deviceNotSupportedExceptionProto;
    }
    if (healthConnectNotInstalledExceptionProto != null) {
      $result.healthConnectNotInstalledExceptionProto = healthConnectNotInstalledExceptionProto;
    }
    if (httpRequestExceptionProto != null) {
      $result.httpRequestExceptionProto = httpRequestExceptionProto;
    }
    if (missingConfigurationExceptionProto != null) {
      $result.missingConfigurationExceptionProto = missingConfigurationExceptionProto;
    }
    if (missingPermissionsExceptionProto != null) {
      $result.missingPermissionsExceptionProto = missingPermissionsExceptionProto;
    }
    if (requestQuotaExceededExceptionProto != null) {
      $result.requestQuotaExceededExceptionProto = requestQuotaExceededExceptionProto;
    }
    if (sdkNotInitializedExceptionProto != null) {
      $result.sdkNotInitializedExceptionProto = sdkNotInitializedExceptionProto;
    }
    if (timeoutExceptionProto != null) {
      $result.timeoutExceptionProto = timeoutExceptionProto;
    }
    if (userNotInitializedExceptionProto != null) {
      $result.userNotInitializedExceptionProto = userNotInitializedExceptionProto;
    }
    if (genericExceptionProto != null) {
      $result.genericExceptionProto = genericExceptionProto;
    }
    if (missingAndroidPermissionsExceptionProto != null) {
      $result.missingAndroidPermissionsExceptionProto = missingAndroidPermissionsExceptionProto;
    }
    if (sdkNotAuthorizedExceptionProto != null) {
      $result.sdkNotAuthorizedExceptionProto = sdkNotAuthorizedExceptionProto;
    }
    return $result;
  }
  ResultBooleanProto._() : super();
  factory ResultBooleanProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultBooleanProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultBooleanProto_Result> _ResultBooleanProto_ResultByTag = {
    1 : ResultBooleanProto_Result.success,
    2 : ResultBooleanProto_Result.deviceNotSupportedExceptionProto,
    3 : ResultBooleanProto_Result.healthConnectNotInstalledExceptionProto,
    4 : ResultBooleanProto_Result.httpRequestExceptionProto,
    5 : ResultBooleanProto_Result.missingConfigurationExceptionProto,
    6 : ResultBooleanProto_Result.missingPermissionsExceptionProto,
    7 : ResultBooleanProto_Result.requestQuotaExceededExceptionProto,
    8 : ResultBooleanProto_Result.sdkNotInitializedExceptionProto,
    9 : ResultBooleanProto_Result.timeoutExceptionProto,
    10 : ResultBooleanProto_Result.userNotInitializedExceptionProto,
    11 : ResultBooleanProto_Result.genericExceptionProto,
    12 : ResultBooleanProto_Result.missingAndroidPermissionsExceptionProto,
    13 : ResultBooleanProto_Result.sdkNotAuthorizedExceptionProto,
    0 : ResultBooleanProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResultBooleanProto', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13])
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOM<DeviceNotSupportedExceptionProto>(2, _omitFieldNames ? '' : 'deviceNotSupportedExceptionProto', protoName: 'deviceNotSupportedExceptionProto', subBuilder: DeviceNotSupportedExceptionProto.create)
    ..aOM<HealthConnectNotInstalledExceptionProto>(3, _omitFieldNames ? '' : 'healthConnectNotInstalledExceptionProto', protoName: 'healthConnectNotInstalledExceptionProto', subBuilder: HealthConnectNotInstalledExceptionProto.create)
    ..aOM<HttpRequestExceptionProto>(4, _omitFieldNames ? '' : 'httpRequestExceptionProto', protoName: 'httpRequestExceptionProto', subBuilder: HttpRequestExceptionProto.create)
    ..aOM<MissingConfigurationExceptionProto>(5, _omitFieldNames ? '' : 'missingConfigurationExceptionProto', protoName: 'missingConfigurationExceptionProto', subBuilder: MissingConfigurationExceptionProto.create)
    ..aOM<MissingPermissionsExceptionProto>(6, _omitFieldNames ? '' : 'missingPermissionsExceptionProto', protoName: 'missingPermissionsExceptionProto', subBuilder: MissingPermissionsExceptionProto.create)
    ..aOM<RequestQuotaExceededExceptionProto>(7, _omitFieldNames ? '' : 'requestQuotaExceededExceptionProto', protoName: 'requestQuotaExceededExceptionProto', subBuilder: RequestQuotaExceededExceptionProto.create)
    ..aOM<SDKNotInitializedExceptionProto>(8, _omitFieldNames ? '' : 'sdkNotInitializedExceptionProto', protoName: 'sdkNotInitializedExceptionProto', subBuilder: SDKNotInitializedExceptionProto.create)
    ..aOM<TimeoutExceptionProto>(9, _omitFieldNames ? '' : 'timeoutExceptionProto', protoName: 'timeoutExceptionProto', subBuilder: TimeoutExceptionProto.create)
    ..aOM<UserNotInitializedExceptionProto>(10, _omitFieldNames ? '' : 'userNotInitializedExceptionProto', protoName: 'userNotInitializedExceptionProto', subBuilder: UserNotInitializedExceptionProto.create)
    ..aOM<GenericExceptionProto>(11, _omitFieldNames ? '' : 'genericExceptionProto', protoName: 'genericExceptionProto', subBuilder: GenericExceptionProto.create)
    ..aOM<MissingAndroidPermissionsExceptionProto>(12, _omitFieldNames ? '' : 'missingAndroidPermissionsExceptionProto', protoName: 'missingAndroidPermissionsExceptionProto', subBuilder: MissingAndroidPermissionsExceptionProto.create)
    ..aOM<SDKNotAuthorizedExceptionProto>(13, _omitFieldNames ? '' : 'sdkNotAuthorizedExceptionProto', protoName: 'sdkNotAuthorizedExceptionProto', subBuilder: SDKNotAuthorizedExceptionProto.create)
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
  DeviceNotSupportedExceptionProto get deviceNotSupportedExceptionProto => $_getN(1);
  @$pb.TagNumber(2)
  set deviceNotSupportedExceptionProto(DeviceNotSupportedExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceNotSupportedExceptionProto() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceNotSupportedExceptionProto() => clearField(2);
  @$pb.TagNumber(2)
  DeviceNotSupportedExceptionProto ensureDeviceNotSupportedExceptionProto() => $_ensure(1);

  @$pb.TagNumber(3)
  HealthConnectNotInstalledExceptionProto get healthConnectNotInstalledExceptionProto => $_getN(2);
  @$pb.TagNumber(3)
  set healthConnectNotInstalledExceptionProto(HealthConnectNotInstalledExceptionProto v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHealthConnectNotInstalledExceptionProto() => $_has(2);
  @$pb.TagNumber(3)
  void clearHealthConnectNotInstalledExceptionProto() => clearField(3);
  @$pb.TagNumber(3)
  HealthConnectNotInstalledExceptionProto ensureHealthConnectNotInstalledExceptionProto() => $_ensure(2);

  @$pb.TagNumber(4)
  HttpRequestExceptionProto get httpRequestExceptionProto => $_getN(3);
  @$pb.TagNumber(4)
  set httpRequestExceptionProto(HttpRequestExceptionProto v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasHttpRequestExceptionProto() => $_has(3);
  @$pb.TagNumber(4)
  void clearHttpRequestExceptionProto() => clearField(4);
  @$pb.TagNumber(4)
  HttpRequestExceptionProto ensureHttpRequestExceptionProto() => $_ensure(3);

  @$pb.TagNumber(5)
  MissingConfigurationExceptionProto get missingConfigurationExceptionProto => $_getN(4);
  @$pb.TagNumber(5)
  set missingConfigurationExceptionProto(MissingConfigurationExceptionProto v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMissingConfigurationExceptionProto() => $_has(4);
  @$pb.TagNumber(5)
  void clearMissingConfigurationExceptionProto() => clearField(5);
  @$pb.TagNumber(5)
  MissingConfigurationExceptionProto ensureMissingConfigurationExceptionProto() => $_ensure(4);

  @$pb.TagNumber(6)
  MissingPermissionsExceptionProto get missingPermissionsExceptionProto => $_getN(5);
  @$pb.TagNumber(6)
  set missingPermissionsExceptionProto(MissingPermissionsExceptionProto v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMissingPermissionsExceptionProto() => $_has(5);
  @$pb.TagNumber(6)
  void clearMissingPermissionsExceptionProto() => clearField(6);
  @$pb.TagNumber(6)
  MissingPermissionsExceptionProto ensureMissingPermissionsExceptionProto() => $_ensure(5);

  @$pb.TagNumber(7)
  RequestQuotaExceededExceptionProto get requestQuotaExceededExceptionProto => $_getN(6);
  @$pb.TagNumber(7)
  set requestQuotaExceededExceptionProto(RequestQuotaExceededExceptionProto v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasRequestQuotaExceededExceptionProto() => $_has(6);
  @$pb.TagNumber(7)
  void clearRequestQuotaExceededExceptionProto() => clearField(7);
  @$pb.TagNumber(7)
  RequestQuotaExceededExceptionProto ensureRequestQuotaExceededExceptionProto() => $_ensure(6);

  @$pb.TagNumber(8)
  SDKNotInitializedExceptionProto get sdkNotInitializedExceptionProto => $_getN(7);
  @$pb.TagNumber(8)
  set sdkNotInitializedExceptionProto(SDKNotInitializedExceptionProto v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSdkNotInitializedExceptionProto() => $_has(7);
  @$pb.TagNumber(8)
  void clearSdkNotInitializedExceptionProto() => clearField(8);
  @$pb.TagNumber(8)
  SDKNotInitializedExceptionProto ensureSdkNotInitializedExceptionProto() => $_ensure(7);

  @$pb.TagNumber(9)
  TimeoutExceptionProto get timeoutExceptionProto => $_getN(8);
  @$pb.TagNumber(9)
  set timeoutExceptionProto(TimeoutExceptionProto v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasTimeoutExceptionProto() => $_has(8);
  @$pb.TagNumber(9)
  void clearTimeoutExceptionProto() => clearField(9);
  @$pb.TagNumber(9)
  TimeoutExceptionProto ensureTimeoutExceptionProto() => $_ensure(8);

  @$pb.TagNumber(10)
  UserNotInitializedExceptionProto get userNotInitializedExceptionProto => $_getN(9);
  @$pb.TagNumber(10)
  set userNotInitializedExceptionProto(UserNotInitializedExceptionProto v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasUserNotInitializedExceptionProto() => $_has(9);
  @$pb.TagNumber(10)
  void clearUserNotInitializedExceptionProto() => clearField(10);
  @$pb.TagNumber(10)
  UserNotInitializedExceptionProto ensureUserNotInitializedExceptionProto() => $_ensure(9);

  @$pb.TagNumber(11)
  GenericExceptionProto get genericExceptionProto => $_getN(10);
  @$pb.TagNumber(11)
  set genericExceptionProto(GenericExceptionProto v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasGenericExceptionProto() => $_has(10);
  @$pb.TagNumber(11)
  void clearGenericExceptionProto() => clearField(11);
  @$pb.TagNumber(11)
  GenericExceptionProto ensureGenericExceptionProto() => $_ensure(10);

  @$pb.TagNumber(12)
  MissingAndroidPermissionsExceptionProto get missingAndroidPermissionsExceptionProto => $_getN(11);
  @$pb.TagNumber(12)
  set missingAndroidPermissionsExceptionProto(MissingAndroidPermissionsExceptionProto v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasMissingAndroidPermissionsExceptionProto() => $_has(11);
  @$pb.TagNumber(12)
  void clearMissingAndroidPermissionsExceptionProto() => clearField(12);
  @$pb.TagNumber(12)
  MissingAndroidPermissionsExceptionProto ensureMissingAndroidPermissionsExceptionProto() => $_ensure(11);

  @$pb.TagNumber(13)
  SDKNotAuthorizedExceptionProto get sdkNotAuthorizedExceptionProto => $_getN(12);
  @$pb.TagNumber(13)
  set sdkNotAuthorizedExceptionProto(SDKNotAuthorizedExceptionProto v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasSdkNotAuthorizedExceptionProto() => $_has(12);
  @$pb.TagNumber(13)
  void clearSdkNotAuthorizedExceptionProto() => clearField(13);
  @$pb.TagNumber(13)
  SDKNotAuthorizedExceptionProto ensureSdkNotAuthorizedExceptionProto() => $_ensure(12);
}

enum ResultInt64Proto_Result {
  value, 
  sdkNotInitializedExceptionProto, 
  genericExceptionProto, 
  sdkNotAuthorizedExceptionProto, 
  notSet
}

class ResultInt64Proto extends $pb.GeneratedMessage {
  factory ResultInt64Proto({
    $fixnum.Int64? value,
    SDKNotInitializedExceptionProto? sdkNotInitializedExceptionProto,
    GenericExceptionProto? genericExceptionProto,
    SDKNotAuthorizedExceptionProto? sdkNotAuthorizedExceptionProto,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (sdkNotInitializedExceptionProto != null) {
      $result.sdkNotInitializedExceptionProto = sdkNotInitializedExceptionProto;
    }
    if (genericExceptionProto != null) {
      $result.genericExceptionProto = genericExceptionProto;
    }
    if (sdkNotAuthorizedExceptionProto != null) {
      $result.sdkNotAuthorizedExceptionProto = sdkNotAuthorizedExceptionProto;
    }
    return $result;
  }
  ResultInt64Proto._() : super();
  factory ResultInt64Proto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultInt64Proto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultInt64Proto_Result> _ResultInt64Proto_ResultByTag = {
    1 : ResultInt64Proto_Result.value,
    8 : ResultInt64Proto_Result.sdkNotInitializedExceptionProto,
    11 : ResultInt64Proto_Result.genericExceptionProto,
    13 : ResultInt64Proto_Result.sdkNotAuthorizedExceptionProto,
    0 : ResultInt64Proto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResultInt64Proto', createEmptyInstance: create)
    ..oo(0, [1, 8, 11, 13])
    ..aInt64(1, _omitFieldNames ? '' : 'value')
    ..aOM<SDKNotInitializedExceptionProto>(8, _omitFieldNames ? '' : 'sdkNotInitializedExceptionProto', protoName: 'sdkNotInitializedExceptionProto', subBuilder: SDKNotInitializedExceptionProto.create)
    ..aOM<GenericExceptionProto>(11, _omitFieldNames ? '' : 'genericExceptionProto', protoName: 'genericExceptionProto', subBuilder: GenericExceptionProto.create)
    ..aOM<SDKNotAuthorizedExceptionProto>(13, _omitFieldNames ? '' : 'sdkNotAuthorizedExceptionProto', protoName: 'sdkNotAuthorizedExceptionProto', subBuilder: SDKNotAuthorizedExceptionProto.create)
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

  @$pb.TagNumber(8)
  SDKNotInitializedExceptionProto get sdkNotInitializedExceptionProto => $_getN(1);
  @$pb.TagNumber(8)
  set sdkNotInitializedExceptionProto(SDKNotInitializedExceptionProto v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSdkNotInitializedExceptionProto() => $_has(1);
  @$pb.TagNumber(8)
  void clearSdkNotInitializedExceptionProto() => clearField(8);
  @$pb.TagNumber(8)
  SDKNotInitializedExceptionProto ensureSdkNotInitializedExceptionProto() => $_ensure(1);

  @$pb.TagNumber(11)
  GenericExceptionProto get genericExceptionProto => $_getN(2);
  @$pb.TagNumber(11)
  set genericExceptionProto(GenericExceptionProto v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasGenericExceptionProto() => $_has(2);
  @$pb.TagNumber(11)
  void clearGenericExceptionProto() => clearField(11);
  @$pb.TagNumber(11)
  GenericExceptionProto ensureGenericExceptionProto() => $_ensure(2);

  @$pb.TagNumber(13)
  SDKNotAuthorizedExceptionProto get sdkNotAuthorizedExceptionProto => $_getN(3);
  @$pb.TagNumber(13)
  set sdkNotAuthorizedExceptionProto(SDKNotAuthorizedExceptionProto v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasSdkNotAuthorizedExceptionProto() => $_has(3);
  @$pb.TagNumber(13)
  void clearSdkNotAuthorizedExceptionProto() => clearField(13);
  @$pb.TagNumber(13)
  SDKNotAuthorizedExceptionProto ensureSdkNotAuthorizedExceptionProto() => $_ensure(3);
}

enum ResultSyncStatusProto_Result {
  syncStatusProto, 
  deviceNotSupportedExceptionProto, 
  healthConnectNotInstalledExceptionProto, 
  httpRequestExceptionProto, 
  missingPermissionsExceptionProto, 
  requestQuotaExceededExceptionProto, 
  sdkNotInitializedExceptionProto, 
  timeoutExceptionProto, 
  userNotInitializedExceptionProto, 
  genericExceptionProto, 
  sdkNotAuthorizedExceptionProto, 
  notSet
}

class ResultSyncStatusProto extends $pb.GeneratedMessage {
  factory ResultSyncStatusProto({
    SyncStatusProto? syncStatusProto,
    DeviceNotSupportedExceptionProto? deviceNotSupportedExceptionProto,
    HealthConnectNotInstalledExceptionProto? healthConnectNotInstalledExceptionProto,
    HttpRequestExceptionProto? httpRequestExceptionProto,
    MissingPermissionsExceptionProto? missingPermissionsExceptionProto,
    RequestQuotaExceededExceptionProto? requestQuotaExceededExceptionProto,
    SDKNotInitializedExceptionProto? sdkNotInitializedExceptionProto,
    TimeoutExceptionProto? timeoutExceptionProto,
    UserNotInitializedExceptionProto? userNotInitializedExceptionProto,
    GenericExceptionProto? genericExceptionProto,
    SDKNotAuthorizedExceptionProto? sdkNotAuthorizedExceptionProto,
  }) {
    final $result = create();
    if (syncStatusProto != null) {
      $result.syncStatusProto = syncStatusProto;
    }
    if (deviceNotSupportedExceptionProto != null) {
      $result.deviceNotSupportedExceptionProto = deviceNotSupportedExceptionProto;
    }
    if (healthConnectNotInstalledExceptionProto != null) {
      $result.healthConnectNotInstalledExceptionProto = healthConnectNotInstalledExceptionProto;
    }
    if (httpRequestExceptionProto != null) {
      $result.httpRequestExceptionProto = httpRequestExceptionProto;
    }
    if (missingPermissionsExceptionProto != null) {
      $result.missingPermissionsExceptionProto = missingPermissionsExceptionProto;
    }
    if (requestQuotaExceededExceptionProto != null) {
      $result.requestQuotaExceededExceptionProto = requestQuotaExceededExceptionProto;
    }
    if (sdkNotInitializedExceptionProto != null) {
      $result.sdkNotInitializedExceptionProto = sdkNotInitializedExceptionProto;
    }
    if (timeoutExceptionProto != null) {
      $result.timeoutExceptionProto = timeoutExceptionProto;
    }
    if (userNotInitializedExceptionProto != null) {
      $result.userNotInitializedExceptionProto = userNotInitializedExceptionProto;
    }
    if (genericExceptionProto != null) {
      $result.genericExceptionProto = genericExceptionProto;
    }
    if (sdkNotAuthorizedExceptionProto != null) {
      $result.sdkNotAuthorizedExceptionProto = sdkNotAuthorizedExceptionProto;
    }
    return $result;
  }
  ResultSyncStatusProto._() : super();
  factory ResultSyncStatusProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultSyncStatusProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultSyncStatusProto_Result> _ResultSyncStatusProto_ResultByTag = {
    1 : ResultSyncStatusProto_Result.syncStatusProto,
    2 : ResultSyncStatusProto_Result.deviceNotSupportedExceptionProto,
    3 : ResultSyncStatusProto_Result.healthConnectNotInstalledExceptionProto,
    4 : ResultSyncStatusProto_Result.httpRequestExceptionProto,
    6 : ResultSyncStatusProto_Result.missingPermissionsExceptionProto,
    7 : ResultSyncStatusProto_Result.requestQuotaExceededExceptionProto,
    8 : ResultSyncStatusProto_Result.sdkNotInitializedExceptionProto,
    9 : ResultSyncStatusProto_Result.timeoutExceptionProto,
    10 : ResultSyncStatusProto_Result.userNotInitializedExceptionProto,
    11 : ResultSyncStatusProto_Result.genericExceptionProto,
    13 : ResultSyncStatusProto_Result.sdkNotAuthorizedExceptionProto,
    0 : ResultSyncStatusProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResultSyncStatusProto', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 13])
    ..e<SyncStatusProto>(1, _omitFieldNames ? '' : 'syncStatusProto', $pb.PbFieldType.OE, protoName: 'syncStatusProto', defaultOrMaker: SyncStatusProto.SYNCED, valueOf: SyncStatusProto.valueOf, enumValues: SyncStatusProto.values)
    ..aOM<DeviceNotSupportedExceptionProto>(2, _omitFieldNames ? '' : 'deviceNotSupportedExceptionProto', protoName: 'deviceNotSupportedExceptionProto', subBuilder: DeviceNotSupportedExceptionProto.create)
    ..aOM<HealthConnectNotInstalledExceptionProto>(3, _omitFieldNames ? '' : 'healthConnectNotInstalledExceptionProto', protoName: 'healthConnectNotInstalledExceptionProto', subBuilder: HealthConnectNotInstalledExceptionProto.create)
    ..aOM<HttpRequestExceptionProto>(4, _omitFieldNames ? '' : 'httpRequestExceptionProto', protoName: 'httpRequestExceptionProto', subBuilder: HttpRequestExceptionProto.create)
    ..aOM<MissingPermissionsExceptionProto>(6, _omitFieldNames ? '' : 'missingPermissionsExceptionProto', protoName: 'missingPermissionsExceptionProto', subBuilder: MissingPermissionsExceptionProto.create)
    ..aOM<RequestQuotaExceededExceptionProto>(7, _omitFieldNames ? '' : 'requestQuotaExceededExceptionProto', protoName: 'requestQuotaExceededExceptionProto', subBuilder: RequestQuotaExceededExceptionProto.create)
    ..aOM<SDKNotInitializedExceptionProto>(8, _omitFieldNames ? '' : 'sdkNotInitializedExceptionProto', protoName: 'sdkNotInitializedExceptionProto', subBuilder: SDKNotInitializedExceptionProto.create)
    ..aOM<TimeoutExceptionProto>(9, _omitFieldNames ? '' : 'timeoutExceptionProto', protoName: 'timeoutExceptionProto', subBuilder: TimeoutExceptionProto.create)
    ..aOM<UserNotInitializedExceptionProto>(10, _omitFieldNames ? '' : 'userNotInitializedExceptionProto', protoName: 'userNotInitializedExceptionProto', subBuilder: UserNotInitializedExceptionProto.create)
    ..aOM<GenericExceptionProto>(11, _omitFieldNames ? '' : 'genericExceptionProto', protoName: 'genericExceptionProto', subBuilder: GenericExceptionProto.create)
    ..aOM<SDKNotAuthorizedExceptionProto>(13, _omitFieldNames ? '' : 'sdkNotAuthorizedExceptionProto', protoName: 'sdkNotAuthorizedExceptionProto', subBuilder: SDKNotAuthorizedExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultSyncStatusProto clone() => ResultSyncStatusProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultSyncStatusProto copyWith(void Function(ResultSyncStatusProto) updates) => super.copyWith((message) => updates(message as ResultSyncStatusProto)) as ResultSyncStatusProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultSyncStatusProto create() => ResultSyncStatusProto._();
  ResultSyncStatusProto createEmptyInstance() => create();
  static $pb.PbList<ResultSyncStatusProto> createRepeated() => $pb.PbList<ResultSyncStatusProto>();
  @$core.pragma('dart2js:noInline')
  static ResultSyncStatusProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultSyncStatusProto>(create);
  static ResultSyncStatusProto? _defaultInstance;

  ResultSyncStatusProto_Result whichResult() => _ResultSyncStatusProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SyncStatusProto get syncStatusProto => $_getN(0);
  @$pb.TagNumber(1)
  set syncStatusProto(SyncStatusProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSyncStatusProto() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncStatusProto() => clearField(1);

  @$pb.TagNumber(2)
  DeviceNotSupportedExceptionProto get deviceNotSupportedExceptionProto => $_getN(1);
  @$pb.TagNumber(2)
  set deviceNotSupportedExceptionProto(DeviceNotSupportedExceptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceNotSupportedExceptionProto() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceNotSupportedExceptionProto() => clearField(2);
  @$pb.TagNumber(2)
  DeviceNotSupportedExceptionProto ensureDeviceNotSupportedExceptionProto() => $_ensure(1);

  @$pb.TagNumber(3)
  HealthConnectNotInstalledExceptionProto get healthConnectNotInstalledExceptionProto => $_getN(2);
  @$pb.TagNumber(3)
  set healthConnectNotInstalledExceptionProto(HealthConnectNotInstalledExceptionProto v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHealthConnectNotInstalledExceptionProto() => $_has(2);
  @$pb.TagNumber(3)
  void clearHealthConnectNotInstalledExceptionProto() => clearField(3);
  @$pb.TagNumber(3)
  HealthConnectNotInstalledExceptionProto ensureHealthConnectNotInstalledExceptionProto() => $_ensure(2);

  @$pb.TagNumber(4)
  HttpRequestExceptionProto get httpRequestExceptionProto => $_getN(3);
  @$pb.TagNumber(4)
  set httpRequestExceptionProto(HttpRequestExceptionProto v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasHttpRequestExceptionProto() => $_has(3);
  @$pb.TagNumber(4)
  void clearHttpRequestExceptionProto() => clearField(4);
  @$pb.TagNumber(4)
  HttpRequestExceptionProto ensureHttpRequestExceptionProto() => $_ensure(3);

  @$pb.TagNumber(6)
  MissingPermissionsExceptionProto get missingPermissionsExceptionProto => $_getN(4);
  @$pb.TagNumber(6)
  set missingPermissionsExceptionProto(MissingPermissionsExceptionProto v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMissingPermissionsExceptionProto() => $_has(4);
  @$pb.TagNumber(6)
  void clearMissingPermissionsExceptionProto() => clearField(6);
  @$pb.TagNumber(6)
  MissingPermissionsExceptionProto ensureMissingPermissionsExceptionProto() => $_ensure(4);

  @$pb.TagNumber(7)
  RequestQuotaExceededExceptionProto get requestQuotaExceededExceptionProto => $_getN(5);
  @$pb.TagNumber(7)
  set requestQuotaExceededExceptionProto(RequestQuotaExceededExceptionProto v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasRequestQuotaExceededExceptionProto() => $_has(5);
  @$pb.TagNumber(7)
  void clearRequestQuotaExceededExceptionProto() => clearField(7);
  @$pb.TagNumber(7)
  RequestQuotaExceededExceptionProto ensureRequestQuotaExceededExceptionProto() => $_ensure(5);

  @$pb.TagNumber(8)
  SDKNotInitializedExceptionProto get sdkNotInitializedExceptionProto => $_getN(6);
  @$pb.TagNumber(8)
  set sdkNotInitializedExceptionProto(SDKNotInitializedExceptionProto v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSdkNotInitializedExceptionProto() => $_has(6);
  @$pb.TagNumber(8)
  void clearSdkNotInitializedExceptionProto() => clearField(8);
  @$pb.TagNumber(8)
  SDKNotInitializedExceptionProto ensureSdkNotInitializedExceptionProto() => $_ensure(6);

  @$pb.TagNumber(9)
  TimeoutExceptionProto get timeoutExceptionProto => $_getN(7);
  @$pb.TagNumber(9)
  set timeoutExceptionProto(TimeoutExceptionProto v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasTimeoutExceptionProto() => $_has(7);
  @$pb.TagNumber(9)
  void clearTimeoutExceptionProto() => clearField(9);
  @$pb.TagNumber(9)
  TimeoutExceptionProto ensureTimeoutExceptionProto() => $_ensure(7);

  @$pb.TagNumber(10)
  UserNotInitializedExceptionProto get userNotInitializedExceptionProto => $_getN(8);
  @$pb.TagNumber(10)
  set userNotInitializedExceptionProto(UserNotInitializedExceptionProto v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasUserNotInitializedExceptionProto() => $_has(8);
  @$pb.TagNumber(10)
  void clearUserNotInitializedExceptionProto() => clearField(10);
  @$pb.TagNumber(10)
  UserNotInitializedExceptionProto ensureUserNotInitializedExceptionProto() => $_ensure(8);

  @$pb.TagNumber(11)
  GenericExceptionProto get genericExceptionProto => $_getN(9);
  @$pb.TagNumber(11)
  set genericExceptionProto(GenericExceptionProto v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasGenericExceptionProto() => $_has(9);
  @$pb.TagNumber(11)
  void clearGenericExceptionProto() => clearField(11);
  @$pb.TagNumber(11)
  GenericExceptionProto ensureGenericExceptionProto() => $_ensure(9);

  @$pb.TagNumber(13)
  SDKNotAuthorizedExceptionProto get sdkNotAuthorizedExceptionProto => $_getN(10);
  @$pb.TagNumber(13)
  set sdkNotAuthorizedExceptionProto(SDKNotAuthorizedExceptionProto v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasSdkNotAuthorizedExceptionProto() => $_has(10);
  @$pb.TagNumber(13)
  void clearSdkNotAuthorizedExceptionProto() => clearField(13);
  @$pb.TagNumber(13)
  SDKNotAuthorizedExceptionProto ensureSdkNotAuthorizedExceptionProto() => $_ensure(10);
}

enum ResultDataSourceProto_Result {
  dataSourceProtoListWrapper, 
  sdkNotInitializedExceptionProto, 
  userNotInitializedExceptionProto, 
  genericExceptionProto, 
  sdkNotAuthorizedExceptionProto, 
  notSet
}

class ResultDataSourceProto extends $pb.GeneratedMessage {
  factory ResultDataSourceProto({
    DataSourceProtoListWrapper? dataSourceProtoListWrapper,
    SDKNotInitializedExceptionProto? sdkNotInitializedExceptionProto,
    UserNotInitializedExceptionProto? userNotInitializedExceptionProto,
    GenericExceptionProto? genericExceptionProto,
    SDKNotAuthorizedExceptionProto? sdkNotAuthorizedExceptionProto,
  }) {
    final $result = create();
    if (dataSourceProtoListWrapper != null) {
      $result.dataSourceProtoListWrapper = dataSourceProtoListWrapper;
    }
    if (sdkNotInitializedExceptionProto != null) {
      $result.sdkNotInitializedExceptionProto = sdkNotInitializedExceptionProto;
    }
    if (userNotInitializedExceptionProto != null) {
      $result.userNotInitializedExceptionProto = userNotInitializedExceptionProto;
    }
    if (genericExceptionProto != null) {
      $result.genericExceptionProto = genericExceptionProto;
    }
    if (sdkNotAuthorizedExceptionProto != null) {
      $result.sdkNotAuthorizedExceptionProto = sdkNotAuthorizedExceptionProto;
    }
    return $result;
  }
  ResultDataSourceProto._() : super();
  factory ResultDataSourceProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultDataSourceProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultDataSourceProto_Result> _ResultDataSourceProto_ResultByTag = {
    1 : ResultDataSourceProto_Result.dataSourceProtoListWrapper,
    8 : ResultDataSourceProto_Result.sdkNotInitializedExceptionProto,
    10 : ResultDataSourceProto_Result.userNotInitializedExceptionProto,
    11 : ResultDataSourceProto_Result.genericExceptionProto,
    13 : ResultDataSourceProto_Result.sdkNotAuthorizedExceptionProto,
    0 : ResultDataSourceProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResultDataSourceProto', createEmptyInstance: create)
    ..oo(0, [1, 8, 10, 11, 13])
    ..aOM<DataSourceProtoListWrapper>(1, _omitFieldNames ? '' : 'dataSourceProtoListWrapper', protoName: 'dataSourceProtoListWrapper', subBuilder: DataSourceProtoListWrapper.create)
    ..aOM<SDKNotInitializedExceptionProto>(8, _omitFieldNames ? '' : 'sdkNotInitializedExceptionProto', protoName: 'sdkNotInitializedExceptionProto', subBuilder: SDKNotInitializedExceptionProto.create)
    ..aOM<UserNotInitializedExceptionProto>(10, _omitFieldNames ? '' : 'userNotInitializedExceptionProto', protoName: 'userNotInitializedExceptionProto', subBuilder: UserNotInitializedExceptionProto.create)
    ..aOM<GenericExceptionProto>(11, _omitFieldNames ? '' : 'genericExceptionProto', protoName: 'genericExceptionProto', subBuilder: GenericExceptionProto.create)
    ..aOM<SDKNotAuthorizedExceptionProto>(13, _omitFieldNames ? '' : 'sdkNotAuthorizedExceptionProto', protoName: 'sdkNotAuthorizedExceptionProto', subBuilder: SDKNotAuthorizedExceptionProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultDataSourceProto clone() => ResultDataSourceProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultDataSourceProto copyWith(void Function(ResultDataSourceProto) updates) => super.copyWith((message) => updates(message as ResultDataSourceProto)) as ResultDataSourceProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultDataSourceProto create() => ResultDataSourceProto._();
  ResultDataSourceProto createEmptyInstance() => create();
  static $pb.PbList<ResultDataSourceProto> createRepeated() => $pb.PbList<ResultDataSourceProto>();
  @$core.pragma('dart2js:noInline')
  static ResultDataSourceProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultDataSourceProto>(create);
  static ResultDataSourceProto? _defaultInstance;

  ResultDataSourceProto_Result whichResult() => _ResultDataSourceProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DataSourceProtoListWrapper get dataSourceProtoListWrapper => $_getN(0);
  @$pb.TagNumber(1)
  set dataSourceProtoListWrapper(DataSourceProtoListWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataSourceProtoListWrapper() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataSourceProtoListWrapper() => clearField(1);
  @$pb.TagNumber(1)
  DataSourceProtoListWrapper ensureDataSourceProtoListWrapper() => $_ensure(0);

  @$pb.TagNumber(8)
  SDKNotInitializedExceptionProto get sdkNotInitializedExceptionProto => $_getN(1);
  @$pb.TagNumber(8)
  set sdkNotInitializedExceptionProto(SDKNotInitializedExceptionProto v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSdkNotInitializedExceptionProto() => $_has(1);
  @$pb.TagNumber(8)
  void clearSdkNotInitializedExceptionProto() => clearField(8);
  @$pb.TagNumber(8)
  SDKNotInitializedExceptionProto ensureSdkNotInitializedExceptionProto() => $_ensure(1);

  @$pb.TagNumber(10)
  UserNotInitializedExceptionProto get userNotInitializedExceptionProto => $_getN(2);
  @$pb.TagNumber(10)
  set userNotInitializedExceptionProto(UserNotInitializedExceptionProto v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasUserNotInitializedExceptionProto() => $_has(2);
  @$pb.TagNumber(10)
  void clearUserNotInitializedExceptionProto() => clearField(10);
  @$pb.TagNumber(10)
  UserNotInitializedExceptionProto ensureUserNotInitializedExceptionProto() => $_ensure(2);

  @$pb.TagNumber(11)
  GenericExceptionProto get genericExceptionProto => $_getN(3);
  @$pb.TagNumber(11)
  set genericExceptionProto(GenericExceptionProto v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasGenericExceptionProto() => $_has(3);
  @$pb.TagNumber(11)
  void clearGenericExceptionProto() => clearField(11);
  @$pb.TagNumber(11)
  GenericExceptionProto ensureGenericExceptionProto() => $_ensure(3);

  @$pb.TagNumber(13)
  SDKNotAuthorizedExceptionProto get sdkNotAuthorizedExceptionProto => $_getN(4);
  @$pb.TagNumber(13)
  set sdkNotAuthorizedExceptionProto(SDKNotAuthorizedExceptionProto v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasSdkNotAuthorizedExceptionProto() => $_has(4);
  @$pb.TagNumber(13)
  void clearSdkNotAuthorizedExceptionProto() => clearField(13);
  @$pb.TagNumber(13)
  SDKNotAuthorizedExceptionProto ensureSdkNotAuthorizedExceptionProto() => $_ensure(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
