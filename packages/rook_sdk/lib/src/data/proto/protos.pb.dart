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

export 'protos.pbenum.dart';

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
    0 : ResultBooleanProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResultBooleanProto', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
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
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');