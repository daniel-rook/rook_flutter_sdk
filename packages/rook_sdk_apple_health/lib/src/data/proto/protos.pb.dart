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
  factory DataSourceProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DataSourceProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DataSourceProto',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOB(4, _omitFieldNames ? '' : 'connected')
    ..aOS(5, _omitFieldNames ? '' : 'authorizationUrl',
        protoName: 'authorizationUrl')
    ..aOB(6, _omitFieldNames ? '' : 'authorizationUrlIsNull',
        protoName: 'authorizationUrlIsNull')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DataSourceProto clone() => DataSourceProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DataSourceProto copyWith(void Function(DataSourceProto) updates) =>
      super.copyWith((message) => updates(message as DataSourceProto))
          as DataSourceProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataSourceProto create() => DataSourceProto._();
  DataSourceProto createEmptyInstance() => create();
  static $pb.PbList<DataSourceProto> createRepeated() =>
      $pb.PbList<DataSourceProto>();
  @$core.pragma('dart2js:noInline')
  static DataSourceProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DataSourceProto>(create);
  static DataSourceProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get connected => $_getBF(3);
  @$pb.TagNumber(4)
  set connected($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasConnected() => $_has(3);
  @$pb.TagNumber(4)
  void clearConnected() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get authorizationUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set authorizationUrl($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAuthorizationUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthorizationUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get authorizationUrlIsNull => $_getBF(5);
  @$pb.TagNumber(6)
  set authorizationUrlIsNull($core.bool v) {
    $_setBool(5, v);
  }

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
  factory DataSourcesProtoListWrapper.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DataSourcesProtoListWrapper.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DataSourcesProtoListWrapper',
      createEmptyInstance: create)
    ..pc<DataSourceProto>(
        1, _omitFieldNames ? '' : 'dataSources', $pb.PbFieldType.PM,
        protoName: 'dataSources', subBuilder: DataSourceProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DataSourcesProtoListWrapper clone() =>
      DataSourcesProtoListWrapper()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DataSourcesProtoListWrapper copyWith(
          void Function(DataSourcesProtoListWrapper) updates) =>
      super.copyWith(
              (message) => updates(message as DataSourcesProtoListWrapper))
          as DataSourcesProtoListWrapper;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataSourcesProtoListWrapper create() =>
      DataSourcesProtoListWrapper._();
  DataSourcesProtoListWrapper createEmptyInstance() => create();
  static $pb.PbList<DataSourcesProtoListWrapper> createRepeated() =>
      $pb.PbList<DataSourcesProtoListWrapper>();
  @$core.pragma('dart2js:noInline')
  static DataSourcesProtoListWrapper getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DataSourcesProtoListWrapper>(create);
  static DataSourcesProtoListWrapper? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DataSourceProto> get dataSources => $_getList(0);
}

class AuthorizedDataSourcesProto extends $pb.GeneratedMessage {
  factory AuthorizedDataSourcesProto({
    $core.bool? oura,
    $core.bool? polar,
    $core.bool? whoop,
    $core.bool? fitbit,
    $core.bool? garmin,
    $core.bool? withings,
    $core.bool? appleHealth,
    $core.bool? healthConnect,
    $core.bool? android,
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
  factory AuthorizedDataSourcesProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthorizedDataSourcesProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthorizedDataSourcesProto',
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'oura')
    ..aOB(2, _omitFieldNames ? '' : 'polar')
    ..aOB(3, _omitFieldNames ? '' : 'whoop')
    ..aOB(4, _omitFieldNames ? '' : 'fitbit')
    ..aOB(5, _omitFieldNames ? '' : 'garmin')
    ..aOB(6, _omitFieldNames ? '' : 'withings')
    ..aOB(7, _omitFieldNames ? '' : 'appleHealth', protoName: 'appleHealth')
    ..aOB(8, _omitFieldNames ? '' : 'healthConnect', protoName: 'healthConnect')
    ..aOB(9, _omitFieldNames ? '' : 'android')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthorizedDataSourcesProto clone() =>
      AuthorizedDataSourcesProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthorizedDataSourcesProto copyWith(
          void Function(AuthorizedDataSourcesProto) updates) =>
      super.copyWith(
              (message) => updates(message as AuthorizedDataSourcesProto))
          as AuthorizedDataSourcesProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthorizedDataSourcesProto create() => AuthorizedDataSourcesProto._();
  AuthorizedDataSourcesProto createEmptyInstance() => create();
  static $pb.PbList<AuthorizedDataSourcesProto> createRepeated() =>
      $pb.PbList<AuthorizedDataSourcesProto>();
  @$core.pragma('dart2js:noInline')
  static AuthorizedDataSourcesProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthorizedDataSourcesProto>(create);
  static AuthorizedDataSourcesProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get oura => $_getBF(0);
  @$pb.TagNumber(1)
  set oura($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOura() => $_has(0);
  @$pb.TagNumber(1)
  void clearOura() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get polar => $_getBF(1);
  @$pb.TagNumber(2)
  set polar($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPolar() => $_has(1);
  @$pb.TagNumber(2)
  void clearPolar() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get whoop => $_getBF(2);
  @$pb.TagNumber(3)
  set whoop($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWhoop() => $_has(2);
  @$pb.TagNumber(3)
  void clearWhoop() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get fitbit => $_getBF(3);
  @$pb.TagNumber(4)
  set fitbit($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFitbit() => $_has(3);
  @$pb.TagNumber(4)
  void clearFitbit() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get garmin => $_getBF(4);
  @$pb.TagNumber(5)
  set garmin($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasGarmin() => $_has(4);
  @$pb.TagNumber(5)
  void clearGarmin() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get withings => $_getBF(5);
  @$pb.TagNumber(6)
  set withings($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasWithings() => $_has(5);
  @$pb.TagNumber(6)
  void clearWithings() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get appleHealth => $_getBF(6);
  @$pb.TagNumber(7)
  set appleHealth($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasAppleHealth() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppleHealth() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get healthConnect => $_getBF(7);
  @$pb.TagNumber(8)
  set healthConnect($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasHealthConnect() => $_has(7);
  @$pb.TagNumber(8)
  void clearHealthConnect() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get android => $_getBF(8);
  @$pb.TagNumber(9)
  set android($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasAndroid() => $_has(8);
  @$pb.TagNumber(9)
  void clearAndroid() => clearField(9);
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
  factory ResultDataSourcesProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultDataSourcesProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultDataSourcesProto_Result>
      _ResultDataSourcesProto_ResultByTag = {
    1: ResultDataSourcesProto_Result.dataSourcesProtoListWrapper,
    2: ResultDataSourcesProto_Result.pluginExceptionProto,
    0: ResultDataSourcesProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultDataSourcesProto',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<DataSourcesProtoListWrapper>(
        1, _omitFieldNames ? '' : 'dataSourcesProtoListWrapper',
        protoName: 'dataSourcesProtoListWrapper',
        subBuilder: DataSourcesProtoListWrapper.create)
    ..aOM<PluginExceptionProto>(
        2, _omitFieldNames ? '' : 'pluginExceptionProto',
        protoName: 'pluginExceptionProto',
        subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultDataSourcesProto clone() =>
      ResultDataSourcesProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultDataSourcesProto copyWith(
          void Function(ResultDataSourcesProto) updates) =>
      super.copyWith((message) => updates(message as ResultDataSourcesProto))
          as ResultDataSourcesProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultDataSourcesProto create() => ResultDataSourcesProto._();
  ResultDataSourcesProto createEmptyInstance() => create();
  static $pb.PbList<ResultDataSourcesProto> createRepeated() =>
      $pb.PbList<ResultDataSourcesProto>();
  @$core.pragma('dart2js:noInline')
  static ResultDataSourcesProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultDataSourcesProto>(create);
  static ResultDataSourcesProto? _defaultInstance;

  ResultDataSourcesProto_Result whichResult() =>
      _ResultDataSourcesProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DataSourcesProtoListWrapper get dataSourcesProtoListWrapper => $_getN(0);
  @$pb.TagNumber(1)
  set dataSourcesProtoListWrapper(DataSourcesProtoListWrapper v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDataSourcesProtoListWrapper() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataSourcesProtoListWrapper() => clearField(1);
  @$pb.TagNumber(1)
  DataSourcesProtoListWrapper ensureDataSourcesProtoListWrapper() =>
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

enum ResultAuthorizedDataSourcesProto_Result {
  authorizedDataSourcesProto,
  pluginExceptionProto,
  notSet
}

class ResultAuthorizedDataSourcesProto extends $pb.GeneratedMessage {
  factory ResultAuthorizedDataSourcesProto({
    AuthorizedDataSourcesProto? authorizedDataSourcesProto,
    PluginExceptionProto? pluginExceptionProto,
  }) {
    final $result = create();
    if (authorizedDataSourcesProto != null) {
      $result.authorizedDataSourcesProto = authorizedDataSourcesProto;
    }
    if (pluginExceptionProto != null) {
      $result.pluginExceptionProto = pluginExceptionProto;
    }
    return $result;
  }
  ResultAuthorizedDataSourcesProto._() : super();
  factory ResultAuthorizedDataSourcesProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultAuthorizedDataSourcesProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultAuthorizedDataSourcesProto_Result>
      _ResultAuthorizedDataSourcesProto_ResultByTag = {
    1: ResultAuthorizedDataSourcesProto_Result.authorizedDataSourcesProto,
    2: ResultAuthorizedDataSourcesProto_Result.pluginExceptionProto,
    0: ResultAuthorizedDataSourcesProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultAuthorizedDataSourcesProto',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<AuthorizedDataSourcesProto>(
        1, _omitFieldNames ? '' : 'authorizedDataSourcesProto',
        protoName: 'authorizedDataSourcesProto',
        subBuilder: AuthorizedDataSourcesProto.create)
    ..aOM<PluginExceptionProto>(
        2, _omitFieldNames ? '' : 'pluginExceptionProto',
        protoName: 'pluginExceptionProto',
        subBuilder: PluginExceptionProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultAuthorizedDataSourcesProto clone() =>
      ResultAuthorizedDataSourcesProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultAuthorizedDataSourcesProto copyWith(
          void Function(ResultAuthorizedDataSourcesProto) updates) =>
      super.copyWith(
              (message) => updates(message as ResultAuthorizedDataSourcesProto))
          as ResultAuthorizedDataSourcesProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultAuthorizedDataSourcesProto create() =>
      ResultAuthorizedDataSourcesProto._();
  ResultAuthorizedDataSourcesProto createEmptyInstance() => create();
  static $pb.PbList<ResultAuthorizedDataSourcesProto> createRepeated() =>
      $pb.PbList<ResultAuthorizedDataSourcesProto>();
  @$core.pragma('dart2js:noInline')
  static ResultAuthorizedDataSourcesProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultAuthorizedDataSourcesProto>(
          create);
  static ResultAuthorizedDataSourcesProto? _defaultInstance;

  ResultAuthorizedDataSourcesProto_Result whichResult() =>
      _ResultAuthorizedDataSourcesProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AuthorizedDataSourcesProto get authorizedDataSourcesProto => $_getN(0);
  @$pb.TagNumber(1)
  set authorizedDataSourcesProto(AuthorizedDataSourcesProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAuthorizedDataSourcesProto() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthorizedDataSourcesProto() => clearField(1);
  @$pb.TagNumber(1)
  AuthorizedDataSourcesProto ensureAuthorizedDataSourcesProto() => $_ensure(0);

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
