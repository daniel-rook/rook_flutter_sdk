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

@$core.Deprecated('Use dataSourceTypeProtoDescriptor instead')
const DataSourceTypeProto$json = {
  '1': 'DataSourceTypeProto',
  '2': [
    {'1': 'GARMIN', '2': 0},
    {'1': 'OURA', '2': 1},
    {'1': 'POLAR', '2': 2},
    {'1': 'FITBIT', '2': 3},
    {'1': 'WITHINGS', '2': 4},
    {'1': 'WHOOP', '2': 5},
  ],
};

/// Descriptor for `DataSourceTypeProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dataSourceTypeProtoDescriptor = $convert.base64Decode(
    'ChNEYXRhU291cmNlVHlwZVByb3RvEgoKBkdBUk1JThAAEggKBE9VUkEQARIJCgVQT0xBUhACEg'
    'oKBkZJVEJJVBADEgwKCFdJVEhJTkdTEAQSCQoFV0hPT1AQBQ==');

@$core.Deprecated('Use summarySyncTypeProtoDescriptor instead')
const SummarySyncTypeProto$json = {
  '1': 'SummarySyncTypeProto',
  '2': [
    {'1': 'SLEEP', '2': 0},
    {'1': 'PHYSICAL', '2': 1},
    {'1': 'BODY', '2': 2},
  ],
};

/// Descriptor for `SummarySyncTypeProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List summarySyncTypeProtoDescriptor = $convert.base64Decode(
    'ChRTdW1tYXJ5U3luY1R5cGVQcm90bxIJCgVTTEVFUBAAEgwKCFBIWVNJQ0FMEAESCAoEQk9EWR'
    'AC');

@$core.Deprecated('Use eventSyncTypeProtoDescriptor instead')
const EventSyncTypeProto$json = {
  '1': 'EventSyncTypeProto',
  '2': [
    {'1': 'ACTIVITY', '2': 0},
    {'1': 'BLOOD_GLUCOSE', '2': 1},
    {'1': 'BLOOD_PRESSURE', '2': 2},
    {'1': 'BODY_METRICS', '2': 3},
    {'1': 'HEART_RATE', '2': 4},
    {'1': 'OXYGENATION', '2': 7},
    {'1': 'TEMPERATURE', '2': 8},
  ],
  '4': [
    {'1': 5, '2': 5},
    {'1': 6, '2': 6},
    {'1': 9, '2': 9},
    {'1': 10, '2': 10},
  ],
};

/// Descriptor for `EventSyncTypeProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eventSyncTypeProtoDescriptor = $convert.base64Decode(
    'ChJFdmVudFN5bmNUeXBlUHJvdG8SDAoIQUNUSVZJVFkQABIRCg1CTE9PRF9HTFVDT1NFEAESEg'
    'oOQkxPT0RfUFJFU1NVUkUQAhIQCgxCT0RZX01FVFJJQ1MQAxIOCgpIRUFSVF9SQVRFEAQSDwoL'
    'T1hZR0VOQVRJT04QBxIPCgtURU1QRVJBVFVSRRAIIgQIBRAFIgQIBhAGIgQICRAJIgQIChAK');

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

@$core.Deprecated('Use authorizedDataSourcesProtoDescriptor instead')
const AuthorizedDataSourcesProto$json = {
  '1': 'AuthorizedDataSourcesProto',
  '2': [
    {'1': 'oura', '3': 1, '4': 1, '5': 13, '10': 'oura'},
    {'1': 'polar', '3': 2, '4': 1, '5': 13, '10': 'polar'},
    {'1': 'whoop', '3': 3, '4': 1, '5': 13, '10': 'whoop'},
    {'1': 'fitbit', '3': 4, '4': 1, '5': 13, '10': 'fitbit'},
    {'1': 'garmin', '3': 5, '4': 1, '5': 13, '10': 'garmin'},
    {'1': 'withings', '3': 6, '4': 1, '5': 13, '10': 'withings'},
    {'1': 'dexcom', '3': 7, '4': 1, '5': 13, '10': 'dexcom'},
    {'1': 'appleHealth', '3': 8, '4': 1, '5': 13, '10': 'appleHealth'},
    {'1': 'healthConnect', '3': 9, '4': 1, '5': 13, '10': 'healthConnect'},
    {'1': 'android', '3': 10, '4': 1, '5': 13, '10': 'android'},
  ],
};

/// Descriptor for `AuthorizedDataSourcesProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authorizedDataSourcesProtoDescriptor = $convert.base64Decode(
    'ChpBdXRob3JpemVkRGF0YVNvdXJjZXNQcm90bxISCgRvdXJhGAEgASgNUgRvdXJhEhQKBXBvbG'
    'FyGAIgASgNUgVwb2xhchIUCgV3aG9vcBgDIAEoDVIFd2hvb3ASFgoGZml0Yml0GAQgASgNUgZm'
    'aXRiaXQSFgoGZ2FybWluGAUgASgNUgZnYXJtaW4SGgoId2l0aGluZ3MYBiABKA1SCHdpdGhpbm'
    'dzEhYKBmRleGNvbRgHIAEoDVIGZGV4Y29tEiAKC2FwcGxlSGVhbHRoGAggASgNUgthcHBsZUhl'
    'YWx0aBIkCg1oZWFsdGhDb25uZWN0GAkgASgNUg1oZWFsdGhDb25uZWN0EhgKB2FuZHJvaWQYCi'
    'ABKA1SB2FuZHJvaWQ=');

@$core.Deprecated('Use dailyCaloriesProtoDescriptor instead')
const DailyCaloriesProto$json = {
  '1': 'DailyCaloriesProto',
  '2': [
    {'1': 'basal', '3': 1, '4': 1, '5': 1, '10': 'basal'},
    {'1': 'active', '3': 2, '4': 1, '5': 1, '10': 'active'},
  ],
};

/// Descriptor for `DailyCaloriesProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dailyCaloriesProtoDescriptor = $convert.base64Decode(
    'ChJEYWlseUNhbG9yaWVzUHJvdG8SFAoFYmFzYWwYASABKAFSBWJhc2FsEhYKBmFjdGl2ZRgCIA'
    'EoAVIGYWN0aXZl');

@$core.Deprecated('Use dataSourceAuthorizerProtoDescriptor instead')
const DataSourceAuthorizerProto$json = {
  '1': 'DataSourceAuthorizerProto',
  '2': [
    {'1': 'dataSource', '3': 1, '4': 1, '5': 9, '10': 'dataSource'},
    {'1': 'authorized', '3': 2, '4': 1, '5': 8, '10': 'authorized'},
    {'1': 'authorizationUrl', '3': 3, '4': 1, '5': 9, '10': 'authorizationUrl'},
    {
      '1': 'authorizationUrlIsNull',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'authorizationUrlIsNull'
    },
  ],
};

/// Descriptor for `DataSourceAuthorizerProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataSourceAuthorizerProtoDescriptor = $convert.base64Decode(
    'ChlEYXRhU291cmNlQXV0aG9yaXplclByb3RvEh4KCmRhdGFTb3VyY2UYASABKAlSCmRhdGFTb3'
    'VyY2USHgoKYXV0aG9yaXplZBgCIAEoCFIKYXV0aG9yaXplZBIqChBhdXRob3JpemF0aW9uVXJs'
    'GAMgASgJUhBhdXRob3JpemF0aW9uVXJsEjYKFmF1dGhvcml6YXRpb25VcmxJc051bGwYBiABKA'
    'hSFmF1dGhvcml6YXRpb25VcmxJc051bGw=');

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

@$core.Deprecated('Use resultAuthorizedDataSourcesProtoDescriptor instead')
const ResultAuthorizedDataSourcesProto$json = {
  '1': 'ResultAuthorizedDataSourcesProto',
  '2': [
    {
      '1': 'authorizedDataSourcesProto',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.AuthorizedDataSourcesProto',
      '9': 0,
      '10': 'authorizedDataSourcesProto'
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

/// Descriptor for `ResultAuthorizedDataSourcesProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultAuthorizedDataSourcesProtoDescriptor =
    $convert.base64Decode(
        'CiBSZXN1bHRBdXRob3JpemVkRGF0YVNvdXJjZXNQcm90bxJdChphdXRob3JpemVkRGF0YVNvdX'
        'JjZXNQcm90bxgBIAEoCzIbLkF1dGhvcml6ZWREYXRhU291cmNlc1Byb3RvSABSGmF1dGhvcml6'
        'ZWREYXRhU291cmNlc1Byb3RvEksKFHBsdWdpbkV4Y2VwdGlvblByb3RvGAIgASgLMhUuUGx1Z2'
        'luRXhjZXB0aW9uUHJvdG9IAFIUcGx1Z2luRXhjZXB0aW9uUHJvdG9CCAoGcmVzdWx0');

@$core.Deprecated('Use resultDailyCaloriesProtoDescriptor instead')
const ResultDailyCaloriesProto$json = {
  '1': 'ResultDailyCaloriesProto',
  '2': [
    {
      '1': 'dailyCalories',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.DailyCaloriesProto',
      '9': 0,
      '10': 'dailyCalories'
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

/// Descriptor for `ResultDailyCaloriesProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDailyCaloriesProtoDescriptor = $convert.base64Decode(
    'ChhSZXN1bHREYWlseUNhbG9yaWVzUHJvdG8SOwoNZGFpbHlDYWxvcmllcxgBIAEoCzITLkRhaW'
    'x5Q2Fsb3JpZXNQcm90b0gAUg1kYWlseUNhbG9yaWVzEksKFHBsdWdpbkV4Y2VwdGlvblByb3Rv'
    'GAIgASgLMhUuUGx1Z2luRXhjZXB0aW9uUHJvdG9IAFIUcGx1Z2luRXhjZXB0aW9uUHJvdG9CCA'
    'oGcmVzdWx0');

@$core.Deprecated('Use resultDataSourceAuthorizerProtoDescriptor instead')
const ResultDataSourceAuthorizerProto$json = {
  '1': 'ResultDataSourceAuthorizerProto',
  '2': [
    {
      '1': 'dataSourceAuthorizerProto',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.DataSourceAuthorizerProto',
      '9': 0,
      '10': 'dataSourceAuthorizerProto'
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

/// Descriptor for `ResultDataSourceAuthorizerProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDataSourceAuthorizerProtoDescriptor =
    $convert.base64Decode(
        'Ch9SZXN1bHREYXRhU291cmNlQXV0aG9yaXplclByb3RvEloKGWRhdGFTb3VyY2VBdXRob3Jpem'
        'VyUHJvdG8YASABKAsyGi5EYXRhU291cmNlQXV0aG9yaXplclByb3RvSABSGWRhdGFTb3VyY2VB'
        'dXRob3JpemVyUHJvdG8SSwoUcGx1Z2luRXhjZXB0aW9uUHJvdG8YAiABKAsyFS5QbHVnaW5FeG'
        'NlcHRpb25Qcm90b0gAUhRwbHVnaW5FeGNlcHRpb25Qcm90b0IICgZyZXN1bHQ=');
