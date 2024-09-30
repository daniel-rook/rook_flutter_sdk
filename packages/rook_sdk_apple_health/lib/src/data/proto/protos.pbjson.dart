//
//  Generated code. Do not modify.
//  source: protos.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use rookEnvironmentProtoDescriptor instead')
const RookEnvironmentProto$json = {
  '1': 'RookEnvironmentProto',
  '2': [
    {'1': 'SANDBOX', '2': 0},
    {'1': 'PRODUCTION', '2': 1},
  ],
};

/// Descriptor for `RookEnvironmentProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List rookEnvironmentProtoDescriptor =
    $convert.base64Decode(
        'ChRSb29rRW52aXJvbm1lbnRQcm90bxILCgdTQU5EQk9YEAASDgoKUFJPRFVDVElPThAB');

@$core.Deprecated('Use rookConfigurationProtoDescriptor instead')
const RookConfigurationProto$json = {
  '1': 'RookConfigurationProto',
  '2': [
    {'1': 'clientUUID', '3': 1, '4': 1, '5': 9, '10': 'clientUUID'},
    {'1': 'secretKey', '3': 2, '4': 1, '5': 9, '10': 'secretKey'},
    {
      '1': 'environment',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.RookEnvironmentProto',
      '10': 'environment'
    },
    {
      '1': 'enableBackgroundSync',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'enableBackgroundSync'
    },
  ],
};

/// Descriptor for `RookConfigurationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rookConfigurationProtoDescriptor = $convert.base64Decode(
    'ChZSb29rQ29uZmlndXJhdGlvblByb3RvEh4KCmNsaWVudFVVSUQYASABKAlSCmNsaWVudFVVSU'
    'QSHAoJc2VjcmV0S2V5GAIgASgJUglzZWNyZXRLZXkSNwoLZW52aXJvbm1lbnQYAyABKA4yFS5S'
    'b29rRW52aXJvbm1lbnRQcm90b1ILZW52aXJvbm1lbnQSMgoUZW5hYmxlQmFja2dyb3VuZFN5bm'
    'MYBCABKAhSFGVuYWJsZUJhY2tncm91bmRTeW5j');

@$core.Deprecated('Use dataSourceProtoDescriptor instead')
const DataSourceProto$json = {
  '1': 'DataSourceProto',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'connected', '3': 4, '4': 1, '5': 8, '10': 'connected'},
    {'1': 'authorizationUrl', '3': 5, '4': 1, '5': 9, '10': 'authorizationUrl'},
    {
      '1': 'authorizationUrlIsNull',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'authorizationUrlIsNull'
    },
  ],
};

/// Descriptor for `DataSourceProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataSourceProtoDescriptor = $convert.base64Decode(
    'Cg9EYXRhU291cmNlUHJvdG8SEgoEbmFtZRgBIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgCIA'
    'EoCVILZGVzY3JpcHRpb24SFAoFaW1hZ2UYAyABKAlSBWltYWdlEhwKCWNvbm5lY3RlZBgEIAEo'
    'CFIJY29ubmVjdGVkEioKEGF1dGhvcml6YXRpb25VcmwYBSABKAlSEGF1dGhvcml6YXRpb25Vcm'
    'wSNgoWYXV0aG9yaXphdGlvblVybElzTnVsbBgGIAEoCFIWYXV0aG9yaXphdGlvblVybElzTnVs'
    'bA==');

@$core.Deprecated('Use dataSourcesProtoListWrapperDescriptor instead')
const DataSourcesProtoListWrapper$json = {
  '1': 'DataSourcesProtoListWrapper',
  '2': [
    {
      '1': 'dataSources',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.DataSourceProto',
      '10': 'dataSources'
    },
  ],
};

/// Descriptor for `DataSourcesProtoListWrapper`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataSourcesProtoListWrapperDescriptor =
    $convert.base64Decode(
        'ChtEYXRhU291cmNlc1Byb3RvTGlzdFdyYXBwZXISMgoLZGF0YVNvdXJjZXMYASADKAsyEC5EYX'
        'RhU291cmNlUHJvdG9SC2RhdGFTb3VyY2Vz');

@$core.Deprecated('Use pluginExceptionProtoDescriptor instead')
const PluginExceptionProto$json = {
  '1': 'PluginExceptionProto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 17, '10': 'id'},
    {'1': 'code', '3': 2, '4': 1, '5': 17, '10': 'code'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PluginExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pluginExceptionProtoDescriptor = $convert.base64Decode(
    'ChRQbHVnaW5FeGNlcHRpb25Qcm90bxIOCgJpZBgBIAEoEVICaWQSEgoEY29kZRgCIAEoEVIEY2'
    '9kZRIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use resultBooleanProtoDescriptor instead')
const ResultBooleanProto$json = {
  '1': 'ResultBooleanProto',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'success'},
    {
      '1': 'pluginExceptionProto',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.PluginExceptionProto',
      '9': 0,
      '10': 'pluginExceptionProto'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `ResultBooleanProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultBooleanProtoDescriptor = $convert.base64Decode(
    'ChJSZXN1bHRCb29sZWFuUHJvdG8SGgoHc3VjY2VzcxgBIAEoCEgAUgdzdWNjZXNzEksKFHBsdW'
    'dpbkV4Y2VwdGlvblByb3RvGAIgASgLMhUuUGx1Z2luRXhjZXB0aW9uUHJvdG9IAFIUcGx1Z2lu'
    'RXhjZXB0aW9uUHJvdG9CCAoGcmVzdWx0');

@$core.Deprecated('Use resultInt64ProtoDescriptor instead')
const ResultInt64Proto$json = {
  '1': 'ResultInt64Proto',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'value'},
    {
      '1': 'pluginExceptionProto',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.PluginExceptionProto',
      '9': 0,
      '10': 'pluginExceptionProto'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `ResultInt64Proto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultInt64ProtoDescriptor = $convert.base64Decode(
    'ChBSZXN1bHRJbnQ2NFByb3RvEhYKBXZhbHVlGAEgASgDSABSBXZhbHVlEksKFHBsdWdpbkV4Y2'
    'VwdGlvblByb3RvGAIgASgLMhUuUGx1Z2luRXhjZXB0aW9uUHJvdG9IAFIUcGx1Z2luRXhjZXB0'
    'aW9uUHJvdG9CCAoGcmVzdWx0');

@$core.Deprecated('Use resultDataSourcesProtoDescriptor instead')
const ResultDataSourcesProto$json = {
  '1': 'ResultDataSourcesProto',
  '2': [
    {
      '1': 'dataSourcesProtoListWrapper',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.DataSourcesProtoListWrapper',
      '9': 0,
      '10': 'dataSourcesProtoListWrapper'
    },
    {
      '1': 'pluginExceptionProto',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.PluginExceptionProto',
      '9': 0,
      '10': 'pluginExceptionProto'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `ResultDataSourcesProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDataSourcesProtoDescriptor = $convert.base64Decode(
    'ChZSZXN1bHREYXRhU291cmNlc1Byb3RvEmAKG2RhdGFTb3VyY2VzUHJvdG9MaXN0V3JhcHBlch'
    'gBIAEoCzIcLkRhdGFTb3VyY2VzUHJvdG9MaXN0V3JhcHBlckgAUhtkYXRhU291cmNlc1Byb3Rv'
    'TGlzdFdyYXBwZXISSwoUcGx1Z2luRXhjZXB0aW9uUHJvdG8YAiABKAsyFS5QbHVnaW5FeGNlcH'
    'Rpb25Qcm90b0gAUhRwbHVnaW5FeGNlcHRpb25Qcm90b0IICgZyZXN1bHQ=');
