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
  factory DataSourceProtoListWrapper.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DataSourceProtoListWrapper.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DataSourceProtoListWrapper',
      createEmptyInstance: create)
    ..pc<DataSourceProto>(
        1, _omitFieldNames ? '' : 'dataSources', $pb.PbFieldType.PM,
        protoName: 'dataSources', subBuilder: DataSourceProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DataSourceProtoListWrapper clone() =>
      DataSourceProtoListWrapper()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DataSourceProtoListWrapper copyWith(
          void Function(DataSourceProtoListWrapper) updates) =>
      super.copyWith(
              (message) => updates(message as DataSourceProtoListWrapper))
          as DataSourceProtoListWrapper;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataSourceProtoListWrapper create() => DataSourceProtoListWrapper._();
  DataSourceProtoListWrapper createEmptyInstance() => create();
  static $pb.PbList<DataSourceProtoListWrapper> createRepeated() =>
      $pb.PbList<DataSourceProtoListWrapper>();
  @$core.pragma('dart2js:noInline')
  static DataSourceProtoListWrapper getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DataSourceProtoListWrapper>(create);
  static DataSourceProtoListWrapper? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DataSourceProto> get dataSources => $_getList(0);
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
  factory MissingConfigurationExceptionProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MissingConfigurationExceptionProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MissingConfigurationExceptionProto',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MissingConfigurationExceptionProto clone() =>
      MissingConfigurationExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MissingConfigurationExceptionProto copyWith(
          void Function(MissingConfigurationExceptionProto) updates) =>
      super.copyWith((message) =>
              updates(message as MissingConfigurationExceptionProto))
          as MissingConfigurationExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MissingConfigurationExceptionProto create() =>
      MissingConfigurationExceptionProto._();
  MissingConfigurationExceptionProto createEmptyInstance() => create();
  static $pb.PbList<MissingConfigurationExceptionProto> createRepeated() =>
      $pb.PbList<MissingConfigurationExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static MissingConfigurationExceptionProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MissingConfigurationExceptionProto>(
          create);
  static MissingConfigurationExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

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
  factory GenericExceptionProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GenericExceptionProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GenericExceptionProto',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GenericExceptionProto clone() =>
      GenericExceptionProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GenericExceptionProto copyWith(
          void Function(GenericExceptionProto) updates) =>
      super.copyWith((message) => updates(message as GenericExceptionProto))
          as GenericExceptionProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenericExceptionProto create() => GenericExceptionProto._();
  GenericExceptionProto createEmptyInstance() => create();
  static $pb.PbList<GenericExceptionProto> createRepeated() =>
      $pb.PbList<GenericExceptionProto>();
  @$core.pragma('dart2js:noInline')
  static GenericExceptionProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenericExceptionProto>(create);
  static GenericExceptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

enum ResultBooleanProto_Result {
  success,
  missingConfigurationExceptionProto,
  genericExceptionProto,
  notSet
}

class ResultBooleanProto extends $pb.GeneratedMessage {
  factory ResultBooleanProto({
    $core.bool? success,
    MissingConfigurationExceptionProto? missingConfigurationExceptionProto,
    GenericExceptionProto? genericExceptionProto,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (missingConfigurationExceptionProto != null) {
      $result.missingConfigurationExceptionProto =
          missingConfigurationExceptionProto;
    }
    if (genericExceptionProto != null) {
      $result.genericExceptionProto = genericExceptionProto;
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
    5: ResultBooleanProto_Result.missingConfigurationExceptionProto,
    11: ResultBooleanProto_Result.genericExceptionProto,
    0: ResultBooleanProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultBooleanProto',
      createEmptyInstance: create)
    ..oo(0, [1, 5, 11])
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOM<MissingConfigurationExceptionProto>(
        5, _omitFieldNames ? '' : 'missingConfigurationExceptionProto',
        protoName: 'missingConfigurationExceptionProto',
        subBuilder: MissingConfigurationExceptionProto.create)
    ..aOM<GenericExceptionProto>(
        11, _omitFieldNames ? '' : 'genericExceptionProto',
        protoName: 'genericExceptionProto',
        subBuilder: GenericExceptionProto.create)
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

  @$pb.TagNumber(5)
  MissingConfigurationExceptionProto get missingConfigurationExceptionProto =>
      $_getN(1);
  @$pb.TagNumber(5)
  set missingConfigurationExceptionProto(MissingConfigurationExceptionProto v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMissingConfigurationExceptionProto() => $_has(1);
  @$pb.TagNumber(5)
  void clearMissingConfigurationExceptionProto() => clearField(5);
  @$pb.TagNumber(5)
  MissingConfigurationExceptionProto
      ensureMissingConfigurationExceptionProto() => $_ensure(1);

  @$pb.TagNumber(11)
  GenericExceptionProto get genericExceptionProto => $_getN(2);
  @$pb.TagNumber(11)
  set genericExceptionProto(GenericExceptionProto v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasGenericExceptionProto() => $_has(2);
  @$pb.TagNumber(11)
  void clearGenericExceptionProto() => clearField(11);
  @$pb.TagNumber(11)
  GenericExceptionProto ensureGenericExceptionProto() => $_ensure(2);
}

enum ResultInt64Proto_Result { value, genericExceptionProto, notSet }

class ResultInt64Proto extends $pb.GeneratedMessage {
  factory ResultInt64Proto({
    $fixnum.Int64? value,
    GenericExceptionProto? genericExceptionProto,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (genericExceptionProto != null) {
      $result.genericExceptionProto = genericExceptionProto;
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
    11: ResultInt64Proto_Result.genericExceptionProto,
    0: ResultInt64Proto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultInt64Proto',
      createEmptyInstance: create)
    ..oo(0, [1, 11])
    ..aInt64(1, _omitFieldNames ? '' : 'value')
    ..aOM<GenericExceptionProto>(
        11, _omitFieldNames ? '' : 'genericExceptionProto',
        protoName: 'genericExceptionProto',
        subBuilder: GenericExceptionProto.create)
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

  @$pb.TagNumber(11)
  GenericExceptionProto get genericExceptionProto => $_getN(1);
  @$pb.TagNumber(11)
  set genericExceptionProto(GenericExceptionProto v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasGenericExceptionProto() => $_has(1);
  @$pb.TagNumber(11)
  void clearGenericExceptionProto() => clearField(11);
  @$pb.TagNumber(11)
  GenericExceptionProto ensureGenericExceptionProto() => $_ensure(1);
}

enum ResultDataSourceProto_Result {
  dataSourceProtoListWrapper,
  genericExceptionProto,
  notSet
}

class ResultDataSourceProto extends $pb.GeneratedMessage {
  factory ResultDataSourceProto({
    DataSourceProtoListWrapper? dataSourceProtoListWrapper,
    GenericExceptionProto? genericExceptionProto,
  }) {
    final $result = create();
    if (dataSourceProtoListWrapper != null) {
      $result.dataSourceProtoListWrapper = dataSourceProtoListWrapper;
    }
    if (genericExceptionProto != null) {
      $result.genericExceptionProto = genericExceptionProto;
    }
    return $result;
  }
  ResultDataSourceProto._() : super();
  factory ResultDataSourceProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResultDataSourceProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResultDataSourceProto_Result>
      _ResultDataSourceProto_ResultByTag = {
    1: ResultDataSourceProto_Result.dataSourceProtoListWrapper,
    11: ResultDataSourceProto_Result.genericExceptionProto,
    0: ResultDataSourceProto_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResultDataSourceProto',
      createEmptyInstance: create)
    ..oo(0, [1, 11])
    ..aOM<DataSourceProtoListWrapper>(
        1, _omitFieldNames ? '' : 'dataSourceProtoListWrapper',
        protoName: 'dataSourceProtoListWrapper',
        subBuilder: DataSourceProtoListWrapper.create)
    ..aOM<GenericExceptionProto>(
        11, _omitFieldNames ? '' : 'genericExceptionProto',
        protoName: 'genericExceptionProto',
        subBuilder: GenericExceptionProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResultDataSourceProto clone() =>
      ResultDataSourceProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResultDataSourceProto copyWith(
          void Function(ResultDataSourceProto) updates) =>
      super.copyWith((message) => updates(message as ResultDataSourceProto))
          as ResultDataSourceProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultDataSourceProto create() => ResultDataSourceProto._();
  ResultDataSourceProto createEmptyInstance() => create();
  static $pb.PbList<ResultDataSourceProto> createRepeated() =>
      $pb.PbList<ResultDataSourceProto>();
  @$core.pragma('dart2js:noInline')
  static ResultDataSourceProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResultDataSourceProto>(create);
  static ResultDataSourceProto? _defaultInstance;

  ResultDataSourceProto_Result whichResult() =>
      _ResultDataSourceProto_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DataSourceProtoListWrapper get dataSourceProtoListWrapper => $_getN(0);
  @$pb.TagNumber(1)
  set dataSourceProtoListWrapper(DataSourceProtoListWrapper v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDataSourceProtoListWrapper() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataSourceProtoListWrapper() => clearField(1);
  @$pb.TagNumber(1)
  DataSourceProtoListWrapper ensureDataSourceProtoListWrapper() => $_ensure(0);

  @$pb.TagNumber(11)
  GenericExceptionProto get genericExceptionProto => $_getN(1);
  @$pb.TagNumber(11)
  set genericExceptionProto(GenericExceptionProto v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasGenericExceptionProto() => $_has(1);
  @$pb.TagNumber(11)
  void clearGenericExceptionProto() => clearField(11);
  @$pb.TagNumber(11)
  GenericExceptionProto ensureGenericExceptionProto() => $_ensure(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
