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

@$core.Deprecated('Use availabilityStatusProtoDescriptor instead')
const AvailabilityStatusProto$json = {
  '1': 'AvailabilityStatusProto',
  '2': [
    {'1': 'INSTALLED', '2': 0},
    {'1': 'NOT_INSTALLED', '2': 1},
    {'1': 'NOT_SUPPORTED', '2': 2},
  ],
};

/// Descriptor for `AvailabilityStatusProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List availabilityStatusProtoDescriptor =
    $convert.base64Decode(
        'ChdBdmFpbGFiaWxpdHlTdGF0dXNQcm90bxINCglJTlNUQUxMRUQQABIRCg1OT1RfSU5TVEFMTE'
        'VEEAESEQoNTk9UX1NVUFBPUlRFRBAC');

@$core.Deprecated('Use healthPermissionProtoDescriptor instead')
const HealthPermissionProto$json = {
  '1': 'HealthPermissionProto',
  '2': [
    {'1': 'SLEEP', '2': 0},
    {'1': 'PHYSICAL', '2': 1},
    {'1': 'BODY', '2': 2},
    {'1': 'ALL', '2': 3},
  ],
};

/// Descriptor for `HealthPermissionProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List healthPermissionProtoDescriptor = $convert.base64Decode(
    'ChVIZWFsdGhQZXJtaXNzaW9uUHJvdG8SCQoFU0xFRVAQABIMCghQSFlTSUNBTBABEggKBEJPRF'
    'kQAhIHCgNBTEwQAw==');

@$core.Deprecated('Use syncStatusProtoDescriptor instead')
const SyncStatusProto$json = {
  '1': 'SyncStatusProto',
  '2': [
    {'1': 'SYNCED', '2': 0},
    {'1': 'RECORDS_NOT_FOUND', '2': 1},
  ],
};

/// Descriptor for `SyncStatusProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List syncStatusProtoDescriptor = $convert.base64Decode(
    'Cg9TeW5jU3RhdHVzUHJvdG8SCgoGU1lOQ0VEEAASFQoRUkVDT1JEU19OT1RfRk9VTkQQAQ==');

@$core.Deprecated('Use syncInstructionProtoDescriptor instead')
const SyncInstructionProto$json = {
  '1': 'SyncInstructionProto',
  '2': [
    {'1': 'NOTHING', '2': 0},
    {'1': 'SYNC_OLDEST', '2': 1},
    {'1': 'SYNC_LATEST', '2': 2},
  ],
};

/// Descriptor for `SyncInstructionProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List syncInstructionProtoDescriptor = $convert.base64Decode(
    'ChRTeW5jSW5zdHJ1Y3Rpb25Qcm90bxILCgdOT1RISU5HEAASDwoLU1lOQ19PTERFU1QQARIPCg'
    'tTWU5DX0xBVEVTVBAC');

@$core.Deprecated('Use healthDataTypeProtoDescriptor instead')
const HealthDataTypeProto$json = {
  '1': 'HealthDataTypeProto',
  '2': [
    {'1': 'SLEEP_SUMMARY', '2': 0},
    {'1': 'PHYSICAL_SUMMARY', '2': 1},
    {'1': 'BODY_SUMMARY', '2': 2},
    {'1': 'PHYSICAL_EVENT', '2': 3},
    {'1': 'BLOOD_GLUCOSE_BODY_EVENT', '2': 4},
    {'1': 'BLOOD_PRESSURE_BODY_EVENT', '2': 5},
    {'1': 'BODY_METRICS_EVENT', '2': 6},
    {'1': 'HEART_RATE_BODY_EVENT', '2': 7},
    {'1': 'HEART_RATE_PHYSICAL_EVENT', '2': 8},
    {'1': 'HYDRATION_BODY_EVENT', '2': 9},
    {'1': 'NUTRITION_BODY_EVENT', '2': 10},
    {'1': 'OXYGENATION_BODY_EVENT', '2': 11},
    {'1': 'OXYGENATION_PHYSICAL_EVENT', '2': 12},
    {'1': 'TEMPERATURE_BODY_EVENT', '2': 13},
  ],
};

/// Descriptor for `HealthDataTypeProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List healthDataTypeProtoDescriptor = $convert.base64Decode(
    'ChNIZWFsdGhEYXRhVHlwZVByb3RvEhEKDVNMRUVQX1NVTU1BUlkQABIUChBQSFlTSUNBTF9TVU'
    '1NQVJZEAESEAoMQk9EWV9TVU1NQVJZEAISEgoOUEhZU0lDQUxfRVZFTlQQAxIcChhCTE9PRF9H'
    'TFVDT1NFX0JPRFlfRVZFTlQQBBIdChlCTE9PRF9QUkVTU1VSRV9CT0RZX0VWRU5UEAUSFgoSQk'
    '9EWV9NRVRSSUNTX0VWRU5UEAYSGQoVSEVBUlRfUkFURV9CT0RZX0VWRU5UEAcSHQoZSEVBUlRf'
    'UkFURV9QSFlTSUNBTF9FVkVOVBAIEhgKFEhZRFJBVElPTl9CT0RZX0VWRU5UEAkSGAoUTlVUUk'
    'lUSU9OX0JPRFlfRVZFTlQQChIaChZPWFlHRU5BVElPTl9CT0RZX0VWRU5UEAsSHgoaT1hZR0VO'
    'QVRJT05fUEhZU0lDQUxfRVZFTlQQDBIaChZURU1QRVJBVFVSRV9CT0RZX0VWRU5UEA0=');

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
  ],
};

/// Descriptor for `RookConfigurationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rookConfigurationProtoDescriptor = $convert.base64Decode(
    'ChZSb29rQ29uZmlndXJhdGlvblByb3RvEh4KCmNsaWVudFVVSUQYASABKAlSCmNsaWVudFVVSU'
    'QSHAoJc2VjcmV0S2V5GAIgASgJUglzZWNyZXRLZXkSNwoLZW52aXJvbm1lbnQYAyABKA4yFS5S'
    'b29rRW52aXJvbm1lbnRQcm90b1ILZW52aXJvbm1lbnQ=');

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

@$core.Deprecated('Use dataSourceProtoListWrapperDescriptor instead')
const DataSourceProtoListWrapper$json = {
  '1': 'DataSourceProtoListWrapper',
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

/// Descriptor for `DataSourceProtoListWrapper`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataSourceProtoListWrapperDescriptor =
    $convert.base64Decode(
        'ChpEYXRhU291cmNlUHJvdG9MaXN0V3JhcHBlchIyCgtkYXRhU291cmNlcxgBIAMoCzIQLkRhdG'
        'FTb3VyY2VQcm90b1ILZGF0YVNvdXJjZXM=');

@$core.Deprecated('Use deviceNotSupportedExceptionProtoDescriptor instead')
const DeviceNotSupportedExceptionProto$json = {
  '1': 'DeviceNotSupportedExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `DeviceNotSupportedExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceNotSupportedExceptionProtoDescriptor =
    $convert.base64Decode(
        'CiBEZXZpY2VOb3RTdXBwb3J0ZWRFeGNlcHRpb25Qcm90bxIYCgdtZXNzYWdlGAEgASgJUgdtZX'
        'NzYWdl');

@$core
    .Deprecated('Use healthConnectNotInstalledExceptionProtoDescriptor instead')
const HealthConnectNotInstalledExceptionProto$json = {
  '1': 'HealthConnectNotInstalledExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `HealthConnectNotInstalledExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthConnectNotInstalledExceptionProtoDescriptor =
    $convert.base64Decode(
        'CidIZWFsdGhDb25uZWN0Tm90SW5zdGFsbGVkRXhjZXB0aW9uUHJvdG8SGAoHbWVzc2FnZRgBIA'
        'EoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use httpRequestExceptionProtoDescriptor instead')
const HttpRequestExceptionProto$json = {
  '1': 'HttpRequestExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'code', '3': 2, '4': 1, '5': 13, '10': 'code'},
  ],
};

/// Descriptor for `HttpRequestExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpRequestExceptionProtoDescriptor =
    $convert.base64Decode(
        'ChlIdHRwUmVxdWVzdEV4Y2VwdGlvblByb3RvEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USEg'
        'oEY29kZRgCIAEoDVIEY29kZQ==');

@$core.Deprecated('Use missingConfigurationExceptionProtoDescriptor instead')
const MissingConfigurationExceptionProto$json = {
  '1': 'MissingConfigurationExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `MissingConfigurationExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List missingConfigurationExceptionProtoDescriptor =
    $convert.base64Decode(
        'CiJNaXNzaW5nQ29uZmlndXJhdGlvbkV4Y2VwdGlvblByb3RvEhgKB21lc3NhZ2UYASABKAlSB2'
        '1lc3NhZ2U=');

@$core.Deprecated('Use missingPermissionsExceptionProtoDescriptor instead')
const MissingPermissionsExceptionProto$json = {
  '1': 'MissingPermissionsExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `MissingPermissionsExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List missingPermissionsExceptionProtoDescriptor =
    $convert.base64Decode(
        'CiBNaXNzaW5nUGVybWlzc2lvbnNFeGNlcHRpb25Qcm90bxIYCgdtZXNzYWdlGAEgASgJUgdtZX'
        'NzYWdl');

@$core.Deprecated('Use requestQuotaExceededExceptionProtoDescriptor instead')
const RequestQuotaExceededExceptionProto$json = {
  '1': 'RequestQuotaExceededExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `RequestQuotaExceededExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestQuotaExceededExceptionProtoDescriptor =
    $convert.base64Decode(
        'CiJSZXF1ZXN0UXVvdGFFeGNlZWRlZEV4Y2VwdGlvblByb3RvEhgKB21lc3NhZ2UYASABKAlSB2'
        '1lc3NhZ2U=');

@$core.Deprecated('Use sDKNotInitializedExceptionProtoDescriptor instead')
const SDKNotInitializedExceptionProto$json = {
  '1': 'SDKNotInitializedExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `SDKNotInitializedExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sDKNotInitializedExceptionProtoDescriptor =
    $convert.base64Decode(
        'Ch9TREtOb3RJbml0aWFsaXplZEV4Y2VwdGlvblByb3RvEhgKB21lc3NhZ2UYASABKAlSB21lc3'
        'NhZ2U=');

@$core.Deprecated('Use timeoutExceptionProtoDescriptor instead')
const TimeoutExceptionProto$json = {
  '1': 'TimeoutExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `TimeoutExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeoutExceptionProtoDescriptor =
    $convert.base64Decode(
        'ChVUaW1lb3V0RXhjZXB0aW9uUHJvdG8SGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use userNotInitializedExceptionProtoDescriptor instead')
const UserNotInitializedExceptionProto$json = {
  '1': 'UserNotInitializedExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `UserNotInitializedExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userNotInitializedExceptionProtoDescriptor =
    $convert.base64Decode(
        'CiBVc2VyTm90SW5pdGlhbGl6ZWRFeGNlcHRpb25Qcm90bxIYCgdtZXNzYWdlGAEgASgJUgdtZX'
        'NzYWdl');

@$core.Deprecated('Use genericExceptionProtoDescriptor instead')
const GenericExceptionProto$json = {
  '1': 'GenericExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `GenericExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genericExceptionProtoDescriptor =
    $convert.base64Decode(
        'ChVHZW5lcmljRXhjZXB0aW9uUHJvdG8SGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');

@$core
    .Deprecated('Use missingAndroidPermissionsExceptionProtoDescriptor instead')
const MissingAndroidPermissionsExceptionProto$json = {
  '1': 'MissingAndroidPermissionsExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `MissingAndroidPermissionsExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List missingAndroidPermissionsExceptionProtoDescriptor =
    $convert.base64Decode(
        'CidNaXNzaW5nQW5kcm9pZFBlcm1pc3Npb25zRXhjZXB0aW9uUHJvdG8SGAoHbWVzc2FnZRgBIA'
        'EoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use resultBooleanProtoDescriptor instead')
const ResultBooleanProto$json = {
  '1': 'ResultBooleanProto',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'success'},
    {
      '1': 'deviceNotSupportedExceptionProto',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.DeviceNotSupportedExceptionProto',
      '9': 0,
      '10': 'deviceNotSupportedExceptionProto'
    },
    {
      '1': 'healthConnectNotInstalledExceptionProto',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.HealthConnectNotInstalledExceptionProto',
      '9': 0,
      '10': 'healthConnectNotInstalledExceptionProto'
    },
    {
      '1': 'httpRequestExceptionProto',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.HttpRequestExceptionProto',
      '9': 0,
      '10': 'httpRequestExceptionProto'
    },
    {
      '1': 'missingConfigurationExceptionProto',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.MissingConfigurationExceptionProto',
      '9': 0,
      '10': 'missingConfigurationExceptionProto'
    },
    {
      '1': 'missingPermissionsExceptionProto',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.MissingPermissionsExceptionProto',
      '9': 0,
      '10': 'missingPermissionsExceptionProto'
    },
    {
      '1': 'requestQuotaExceededExceptionProto',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.RequestQuotaExceededExceptionProto',
      '9': 0,
      '10': 'requestQuotaExceededExceptionProto'
    },
    {
      '1': 'sdkNotInitializedExceptionProto',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.SDKNotInitializedExceptionProto',
      '9': 0,
      '10': 'sdkNotInitializedExceptionProto'
    },
    {
      '1': 'timeoutExceptionProto',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.TimeoutExceptionProto',
      '9': 0,
      '10': 'timeoutExceptionProto'
    },
    {
      '1': 'userNotInitializedExceptionProto',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.UserNotInitializedExceptionProto',
      '9': 0,
      '10': 'userNotInitializedExceptionProto'
    },
    {
      '1': 'genericExceptionProto',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.GenericExceptionProto',
      '9': 0,
      '10': 'genericExceptionProto'
    },
    {
      '1': 'missingAndroidPermissionsExceptionProto',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.MissingAndroidPermissionsExceptionProto',
      '9': 0,
      '10': 'missingAndroidPermissionsExceptionProto'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `ResultBooleanProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultBooleanProtoDescriptor = $convert.base64Decode(
    'ChJSZXN1bHRCb29sZWFuUHJvdG8SGgoHc3VjY2VzcxgBIAEoCEgAUgdzdWNjZXNzEm8KIGRldm'
    'ljZU5vdFN1cHBvcnRlZEV4Y2VwdGlvblByb3RvGAIgASgLMiEuRGV2aWNlTm90U3VwcG9ydGVk'
    'RXhjZXB0aW9uUHJvdG9IAFIgZGV2aWNlTm90U3VwcG9ydGVkRXhjZXB0aW9uUHJvdG8ShAEKJ2'
    'hlYWx0aENvbm5lY3ROb3RJbnN0YWxsZWRFeGNlcHRpb25Qcm90bxgDIAEoCzIoLkhlYWx0aENv'
    'bm5lY3ROb3RJbnN0YWxsZWRFeGNlcHRpb25Qcm90b0gAUidoZWFsdGhDb25uZWN0Tm90SW5zdG'
    'FsbGVkRXhjZXB0aW9uUHJvdG8SWgoZaHR0cFJlcXVlc3RFeGNlcHRpb25Qcm90bxgEIAEoCzIa'
    'Lkh0dHBSZXF1ZXN0RXhjZXB0aW9uUHJvdG9IAFIZaHR0cFJlcXVlc3RFeGNlcHRpb25Qcm90bx'
    'J1CiJtaXNzaW5nQ29uZmlndXJhdGlvbkV4Y2VwdGlvblByb3RvGAUgASgLMiMuTWlzc2luZ0Nv'
    'bmZpZ3VyYXRpb25FeGNlcHRpb25Qcm90b0gAUiJtaXNzaW5nQ29uZmlndXJhdGlvbkV4Y2VwdG'
    'lvblByb3RvEm8KIG1pc3NpbmdQZXJtaXNzaW9uc0V4Y2VwdGlvblByb3RvGAYgASgLMiEuTWlz'
    'c2luZ1Blcm1pc3Npb25zRXhjZXB0aW9uUHJvdG9IAFIgbWlzc2luZ1Blcm1pc3Npb25zRXhjZX'
    'B0aW9uUHJvdG8SdQoicmVxdWVzdFF1b3RhRXhjZWVkZWRFeGNlcHRpb25Qcm90bxgHIAEoCzIj'
    'LlJlcXVlc3RRdW90YUV4Y2VlZGVkRXhjZXB0aW9uUHJvdG9IAFIicmVxdWVzdFF1b3RhRXhjZW'
    'VkZWRFeGNlcHRpb25Qcm90bxJsCh9zZGtOb3RJbml0aWFsaXplZEV4Y2VwdGlvblByb3RvGAgg'
    'ASgLMiAuU0RLTm90SW5pdGlhbGl6ZWRFeGNlcHRpb25Qcm90b0gAUh9zZGtOb3RJbml0aWFsaX'
    'plZEV4Y2VwdGlvblByb3RvEk4KFXRpbWVvdXRFeGNlcHRpb25Qcm90bxgJIAEoCzIWLlRpbWVv'
    'dXRFeGNlcHRpb25Qcm90b0gAUhV0aW1lb3V0RXhjZXB0aW9uUHJvdG8SbwogdXNlck5vdEluaX'
    'RpYWxpemVkRXhjZXB0aW9uUHJvdG8YCiABKAsyIS5Vc2VyTm90SW5pdGlhbGl6ZWRFeGNlcHRp'
    'b25Qcm90b0gAUiB1c2VyTm90SW5pdGlhbGl6ZWRFeGNlcHRpb25Qcm90bxJOChVnZW5lcmljRX'
    'hjZXB0aW9uUHJvdG8YCyABKAsyFi5HZW5lcmljRXhjZXB0aW9uUHJvdG9IAFIVZ2VuZXJpY0V4'
    'Y2VwdGlvblByb3RvEoQBCidtaXNzaW5nQW5kcm9pZFBlcm1pc3Npb25zRXhjZXB0aW9uUHJvdG'
    '8YDCABKAsyKC5NaXNzaW5nQW5kcm9pZFBlcm1pc3Npb25zRXhjZXB0aW9uUHJvdG9IAFInbWlz'
    'c2luZ0FuZHJvaWRQZXJtaXNzaW9uc0V4Y2VwdGlvblByb3RvQggKBnJlc3VsdA==');

@$core.Deprecated('Use resultInt64ProtoDescriptor instead')
const ResultInt64Proto$json = {
  '1': 'ResultInt64Proto',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'value'},
    {
      '1': 'sdkNotInitializedExceptionProto',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.SDKNotInitializedExceptionProto',
      '9': 0,
      '10': 'sdkNotInitializedExceptionProto'
    },
    {
      '1': 'genericExceptionProto',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.GenericExceptionProto',
      '9': 0,
      '10': 'genericExceptionProto'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
  '9': [
    {'1': 2, '2': 3},
    {'1': 3, '2': 4},
    {'1': 4, '2': 5},
    {'1': 5, '2': 6},
    {'1': 6, '2': 7},
    {'1': 7, '2': 8},
    {'1': 9, '2': 10},
    {'1': 10, '2': 11},
    {'1': 12, '2': 13},
  ],
};

/// Descriptor for `ResultInt64Proto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultInt64ProtoDescriptor = $convert.base64Decode(
    'ChBSZXN1bHRJbnQ2NFByb3RvEhYKBXZhbHVlGAEgASgDSABSBXZhbHVlEmwKH3Nka05vdEluaX'
    'RpYWxpemVkRXhjZXB0aW9uUHJvdG8YCCABKAsyIC5TREtOb3RJbml0aWFsaXplZEV4Y2VwdGlv'
    'blByb3RvSABSH3Nka05vdEluaXRpYWxpemVkRXhjZXB0aW9uUHJvdG8STgoVZ2VuZXJpY0V4Y2'
    'VwdGlvblByb3RvGAsgASgLMhYuR2VuZXJpY0V4Y2VwdGlvblByb3RvSABSFWdlbmVyaWNFeGNl'
    'cHRpb25Qcm90b0IICgZyZXN1bHRKBAgCEANKBAgDEARKBAgEEAVKBAgFEAZKBAgGEAdKBAgHEA'
    'hKBAgJEApKBAgKEAtKBAgMEA0=');

@$core.Deprecated('Use resultSyncStatusProtoDescriptor instead')
const ResultSyncStatusProto$json = {
  '1': 'ResultSyncStatusProto',
  '2': [
    {
      '1': 'syncStatusProto',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.SyncStatusProto',
      '9': 0,
      '10': 'syncStatusProto'
    },
    {
      '1': 'deviceNotSupportedExceptionProto',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.DeviceNotSupportedExceptionProto',
      '9': 0,
      '10': 'deviceNotSupportedExceptionProto'
    },
    {
      '1': 'healthConnectNotInstalledExceptionProto',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.HealthConnectNotInstalledExceptionProto',
      '9': 0,
      '10': 'healthConnectNotInstalledExceptionProto'
    },
    {
      '1': 'httpRequestExceptionProto',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.HttpRequestExceptionProto',
      '9': 0,
      '10': 'httpRequestExceptionProto'
    },
    {
      '1': 'missingPermissionsExceptionProto',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.MissingPermissionsExceptionProto',
      '9': 0,
      '10': 'missingPermissionsExceptionProto'
    },
    {
      '1': 'requestQuotaExceededExceptionProto',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.RequestQuotaExceededExceptionProto',
      '9': 0,
      '10': 'requestQuotaExceededExceptionProto'
    },
    {
      '1': 'sdkNotInitializedExceptionProto',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.SDKNotInitializedExceptionProto',
      '9': 0,
      '10': 'sdkNotInitializedExceptionProto'
    },
    {
      '1': 'timeoutExceptionProto',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.TimeoutExceptionProto',
      '9': 0,
      '10': 'timeoutExceptionProto'
    },
    {
      '1': 'userNotInitializedExceptionProto',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.UserNotInitializedExceptionProto',
      '9': 0,
      '10': 'userNotInitializedExceptionProto'
    },
    {
      '1': 'genericExceptionProto',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.GenericExceptionProto',
      '9': 0,
      '10': 'genericExceptionProto'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
  '9': [
    {'1': 5, '2': 6},
    {'1': 12, '2': 13},
  ],
};

/// Descriptor for `ResultSyncStatusProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultSyncStatusProtoDescriptor = $convert.base64Decode(
    'ChVSZXN1bHRTeW5jU3RhdHVzUHJvdG8SPAoPc3luY1N0YXR1c1Byb3RvGAEgASgOMhAuU3luY1'
    'N0YXR1c1Byb3RvSABSD3N5bmNTdGF0dXNQcm90bxJvCiBkZXZpY2VOb3RTdXBwb3J0ZWRFeGNl'
    'cHRpb25Qcm90bxgCIAEoCzIhLkRldmljZU5vdFN1cHBvcnRlZEV4Y2VwdGlvblByb3RvSABSIG'
    'RldmljZU5vdFN1cHBvcnRlZEV4Y2VwdGlvblByb3RvEoQBCidoZWFsdGhDb25uZWN0Tm90SW5z'
    'dGFsbGVkRXhjZXB0aW9uUHJvdG8YAyABKAsyKC5IZWFsdGhDb25uZWN0Tm90SW5zdGFsbGVkRX'
    'hjZXB0aW9uUHJvdG9IAFInaGVhbHRoQ29ubmVjdE5vdEluc3RhbGxlZEV4Y2VwdGlvblByb3Rv'
    'EloKGWh0dHBSZXF1ZXN0RXhjZXB0aW9uUHJvdG8YBCABKAsyGi5IdHRwUmVxdWVzdEV4Y2VwdG'
    'lvblByb3RvSABSGWh0dHBSZXF1ZXN0RXhjZXB0aW9uUHJvdG8SbwogbWlzc2luZ1Blcm1pc3Np'
    'b25zRXhjZXB0aW9uUHJvdG8YBiABKAsyIS5NaXNzaW5nUGVybWlzc2lvbnNFeGNlcHRpb25Qcm'
    '90b0gAUiBtaXNzaW5nUGVybWlzc2lvbnNFeGNlcHRpb25Qcm90bxJ1CiJyZXF1ZXN0UXVvdGFF'
    'eGNlZWRlZEV4Y2VwdGlvblByb3RvGAcgASgLMiMuUmVxdWVzdFF1b3RhRXhjZWVkZWRFeGNlcH'
    'Rpb25Qcm90b0gAUiJyZXF1ZXN0UXVvdGFFeGNlZWRlZEV4Y2VwdGlvblByb3RvEmwKH3Nka05v'
    'dEluaXRpYWxpemVkRXhjZXB0aW9uUHJvdG8YCCABKAsyIC5TREtOb3RJbml0aWFsaXplZEV4Y2'
    'VwdGlvblByb3RvSABSH3Nka05vdEluaXRpYWxpemVkRXhjZXB0aW9uUHJvdG8STgoVdGltZW91'
    'dEV4Y2VwdGlvblByb3RvGAkgASgLMhYuVGltZW91dEV4Y2VwdGlvblByb3RvSABSFXRpbWVvdX'
    'RFeGNlcHRpb25Qcm90bxJvCiB1c2VyTm90SW5pdGlhbGl6ZWRFeGNlcHRpb25Qcm90bxgKIAEo'
    'CzIhLlVzZXJOb3RJbml0aWFsaXplZEV4Y2VwdGlvblByb3RvSABSIHVzZXJOb3RJbml0aWFsaX'
    'plZEV4Y2VwdGlvblByb3RvEk4KFWdlbmVyaWNFeGNlcHRpb25Qcm90bxgLIAEoCzIWLkdlbmVy'
    'aWNFeGNlcHRpb25Qcm90b0gAUhVnZW5lcmljRXhjZXB0aW9uUHJvdG9CCAoGcmVzdWx0SgQIBR'
    'AGSgQIDBAN');

@$core.Deprecated('Use resultDataSourceProtoDescriptor instead')
const ResultDataSourceProto$json = {
  '1': 'ResultDataSourceProto',
  '2': [
    {
      '1': 'dataSourceProtoListWrapper',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.DataSourceProtoListWrapper',
      '9': 0,
      '10': 'dataSourceProtoListWrapper'
    },
    {
      '1': 'sdkNotInitializedExceptionProto',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.SDKNotInitializedExceptionProto',
      '9': 0,
      '10': 'sdkNotInitializedExceptionProto'
    },
    {
      '1': 'userNotInitializedExceptionProto',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.UserNotInitializedExceptionProto',
      '9': 0,
      '10': 'userNotInitializedExceptionProto'
    },
    {
      '1': 'genericExceptionProto',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.GenericExceptionProto',
      '9': 0,
      '10': 'genericExceptionProto'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
  '9': [
    {'1': 2, '2': 3},
    {'1': 3, '2': 4},
    {'1': 4, '2': 5},
    {'1': 5, '2': 6},
    {'1': 6, '2': 7},
    {'1': 7, '2': 8},
    {'1': 9, '2': 10},
    {'1': 12, '2': 13},
  ],
};

/// Descriptor for `ResultDataSourceProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDataSourceProtoDescriptor = $convert.base64Decode(
    'ChVSZXN1bHREYXRhU291cmNlUHJvdG8SXQoaZGF0YVNvdXJjZVByb3RvTGlzdFdyYXBwZXIYAS'
    'ABKAsyGy5EYXRhU291cmNlUHJvdG9MaXN0V3JhcHBlckgAUhpkYXRhU291cmNlUHJvdG9MaXN0'
    'V3JhcHBlchJsCh9zZGtOb3RJbml0aWFsaXplZEV4Y2VwdGlvblByb3RvGAggASgLMiAuU0RLTm'
    '90SW5pdGlhbGl6ZWRFeGNlcHRpb25Qcm90b0gAUh9zZGtOb3RJbml0aWFsaXplZEV4Y2VwdGlv'
    'blByb3RvEm8KIHVzZXJOb3RJbml0aWFsaXplZEV4Y2VwdGlvblByb3RvGAogASgLMiEuVXNlck'
    '5vdEluaXRpYWxpemVkRXhjZXB0aW9uUHJvdG9IAFIgdXNlck5vdEluaXRpYWxpemVkRXhjZXB0'
    'aW9uUHJvdG8STgoVZ2VuZXJpY0V4Y2VwdGlvblByb3RvGAsgASgLMhYuR2VuZXJpY0V4Y2VwdG'
    'lvblByb3RvSABSFWdlbmVyaWNFeGNlcHRpb25Qcm90b0IICgZyZXN1bHRKBAgCEANKBAgDEARK'
    'BAgEEAVKBAgFEAZKBAgGEAdKBAgHEAhKBAgJEApKBAgMEA0=');
