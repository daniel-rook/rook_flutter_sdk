// This is a generated file - do not edit.
//
// Generated from protos.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use environmentProtoDescriptor instead')
const EnvironmentProto$json = {
  '1': 'EnvironmentProto',
  '2': [
    {'1': 'SANDBOX', '2': 0},
    {'1': 'PRODUCTION', '2': 1},
  ],
};

/// Descriptor for `EnvironmentProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List environmentProtoDescriptor = $convert.base64Decode(
    'ChBFbnZpcm9ubWVudFByb3RvEgsKB1NBTkRCT1gQABIOCgpQUk9EVUNUSU9OEAE=');

@$core.Deprecated('Use diagnosticStatePermissionsProtoDescriptor instead')
const DiagnosticStatePermissionsProto$json = {
  '1': 'DiagnosticStatePermissionsProto',
  '2': [
    {'1': 'NOT_REQUESTED', '2': 0},
    {'1': 'REQUESTED', '2': 1},
    {'1': 'GRANTED', '2': 2},
  ],
};

/// Descriptor for `DiagnosticStatePermissionsProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List diagnosticStatePermissionsProtoDescriptor =
    $convert.base64Decode(
        'Ch9EaWFnbm9zdGljU3RhdGVQZXJtaXNzaW9uc1Byb3RvEhEKDU5PVF9SRVFVRVNURUQQABINCg'
        'lSRVFVRVNURUQQARILCgdHUkFOVEVEEAI=');

@$core.Deprecated('Use healthConnectAvailabilityProtoDescriptor instead')
const HealthConnectAvailabilityProto$json = {
  '1': 'HealthConnectAvailabilityProto',
  '2': [
    {'1': 'INSTALLED', '2': 0},
    {'1': 'NOT_INSTALLED', '2': 1},
    {'1': 'NOT_SUPPORTED', '2': 2},
  ],
};

/// Descriptor for `HealthConnectAvailabilityProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List healthConnectAvailabilityProtoDescriptor =
    $convert.base64Decode(
        'Ch5IZWFsdGhDb25uZWN0QXZhaWxhYmlsaXR5UHJvdG8SDQoJSU5TVEFMTEVEEAASEQoNTk9UX0'
        'lOU1RBTExFRBABEhEKDU5PVF9TVVBQT1JURUQQAg==');

@$core.Deprecated('Use requestPermissionsStatusProtoDescriptor instead')
const RequestPermissionsStatusProto$json = {
  '1': 'RequestPermissionsStatusProto',
  '2': [
    {'1': 'REQUEST_SENT', '2': 0},
    {'1': 'ALREADY_GRANTED', '2': 1},
  ],
};

/// Descriptor for `RequestPermissionsStatusProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List requestPermissionsStatusProtoDescriptor =
    $convert.base64Decode(
        'Ch1SZXF1ZXN0UGVybWlzc2lvbnNTdGF0dXNQcm90bxIQCgxSRVFVRVNUX1NFTlQQABITCg9BTF'
        'JFQURZX0dSQU5URUQQAQ==');

@$core.Deprecated('Use backgroundReadStatusProtoDescriptor instead')
const BackgroundReadStatusProto$json = {
  '1': 'BackgroundReadStatusProto',
  '2': [
    {'1': 'UNAVAILABLE', '2': 0},
    {'1': 'PERMISSION_NOT_GRANTED', '2': 1},
    {'1': 'PERMISSION_GRANTED', '2': 2},
  ],
};

/// Descriptor for `BackgroundReadStatusProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List backgroundReadStatusProtoDescriptor =
    $convert.base64Decode(
        'ChlCYWNrZ3JvdW5kUmVhZFN0YXR1c1Byb3RvEg8KC1VOQVZBSUxBQkxFEAASGgoWUEVSTUlTU0'
        'lPTl9OT1RfR1JBTlRFRBABEhYKElBFUk1JU1NJT05fR1JBTlRFRBAC');

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
    {'1': 'HYDRATION', '2': 5},
    {'1': 'NUTRITION', '2': 6},
    {'1': 'OXYGENATION', '2': 7},
    {'1': 'TEMPERATURE', '2': 8},
    {'1': 'STEPS', '2': 9},
    {'1': 'CALORIES', '2': 10},
  ],
};

/// Descriptor for `EventSyncTypeProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eventSyncTypeProtoDescriptor = $convert.base64Decode(
    'ChJFdmVudFN5bmNUeXBlUHJvdG8SDAoIQUNUSVZJVFkQABIRCg1CTE9PRF9HTFVDT1NFEAESEg'
    'oOQkxPT0RfUFJFU1NVUkUQAhIQCgxCT0RZX01FVFJJQ1MQAxIOCgpIRUFSVF9SQVRFEAQSDQoJ'
    'SFlEUkFUSU9OEAUSDQoJTlVUUklUSU9OEAYSDwoLT1hZR0VOQVRJT04QBxIPCgtURU1QRVJBVF'
    'VSRRAIEgkKBVNURVBTEAkSDAoIQ0FMT1JJRVMQCg==');

@$core.Deprecated('Use sDKExceptionProtoDescriptor instead')
const SDKExceptionProto$json = {
  '1': 'SDKExceptionProto',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 17, '10': 'code'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `SDKExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sDKExceptionProtoDescriptor = $convert.base64Decode(
    'ChFTREtFeGNlcHRpb25Qcm90bxISCgRjb2RlGAEgASgRUgRjb2RlEhgKB21lc3NhZ2UYAiABKA'
    'lSB21lc3NhZ2U=');

@$core.Deprecated('Use booleanResultProtoDescriptor instead')
const BooleanResultProto$json = {
  '1': 'BooleanResultProto',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'success'},
    {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.SDKExceptionProto',
      '9': 0,
      '10': 'failure'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `BooleanResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List booleanResultProtoDescriptor = $convert.base64Decode(
    'ChJCb29sZWFuUmVzdWx0UHJvdG8SGgoHc3VjY2VzcxgBIAEoCEgAUgdzdWNjZXNzEi4KB2ZhaW'
    'x1cmUYAiABKAsyEi5TREtFeGNlcHRpb25Qcm90b0gAUgdmYWlsdXJlQggKBnJlc3VsdA==');

@$core.Deprecated('Use int64ResultProtoDescriptor instead')
const Int64ResultProto$json = {
  '1': 'Int64ResultProto',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'success'},
    {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.SDKExceptionProto',
      '9': 0,
      '10': 'failure'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `Int64ResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int64ResultProtoDescriptor = $convert.base64Decode(
    'ChBJbnQ2NFJlc3VsdFByb3RvEhoKB3N1Y2Nlc3MYASABKANIAFIHc3VjY2VzcxIuCgdmYWlsdX'
    'JlGAIgASgLMhIuU0RLRXhjZXB0aW9uUHJvdG9IAFIHZmFpbHVyZUIICgZyZXN1bHQ=');

@$core.Deprecated('Use configurationProtoDescriptor instead')
const ConfigurationProto$json = {
  '1': 'ConfigurationProto',
  '2': [
    {'1': 'clientUUID', '3': 1, '4': 1, '5': 9, '10': 'clientUUID'},
    {'1': 'secret', '3': 2, '4': 1, '5': 9, '10': 'secret'},
    {
      '1': 'environment',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.EnvironmentProto',
      '10': 'environment'
    },
    {
      '1': 'enableBackgroundSync',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'enableBackgroundSync'
    },
    {'1': 'appId', '3': 5, '4': 1, '5': 9, '10': 'appId'},
  ],
};

/// Descriptor for `ConfigurationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configurationProtoDescriptor = $convert.base64Decode(
    'ChJDb25maWd1cmF0aW9uUHJvdG8SHgoKY2xpZW50VVVJRBgBIAEoCVIKY2xpZW50VVVJRBIWCg'
    'ZzZWNyZXQYAiABKAlSBnNlY3JldBIzCgtlbnZpcm9ubWVudBgDIAEoDjIRLkVudmlyb25tZW50'
    'UHJvdG9SC2Vudmlyb25tZW50EjIKFGVuYWJsZUJhY2tncm91bmRTeW5jGAQgASgIUhRlbmFibG'
    'VCYWNrZ3JvdW5kU3luYxIUCgVhcHBJZBgFIAEoCVIFYXBwSWQ=');

@$core.Deprecated('Use diagnosticSyncStateProtoDescriptor instead')
const DiagnosticSyncStateProto$json = {
  '1': 'DiagnosticSyncStateProto',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'lastSync', '3': 2, '4': 1, '5': 9, '10': 'lastSync'},
  ],
};

/// Descriptor for `DiagnosticSyncStateProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diagnosticSyncStateProtoDescriptor =
    $convert.base64Decode(
        'ChhEaWFnbm9zdGljU3luY1N0YXRlUHJvdG8SGAoHZW5hYmxlZBgBIAEoCFIHZW5hYmxlZBIaCg'
        'hsYXN0U3luYxgCIAEoCVIIbGFzdFN5bmM=');

@$core.Deprecated('Use diagnosticStateProtoDescriptor instead')
const DiagnosticStateProto$json = {
  '1': 'DiagnosticStateProto',
  '2': [
    {'1': 'isConfigured', '3': 1, '4': 1, '5': 8, '10': 'isConfigured'},
    {'1': 'userIdentified', '3': 2, '4': 1, '5': 8, '10': 'userIdentified'},
    {
      '1': 'permissions',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.DiagnosticStatePermissionsProto',
      '10': 'permissions'
    },
    {
      '1': 'backgroundSync',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.DiagnosticSyncStateProto',
      '10': 'backgroundSync'
    },
    {
      '1': 'manualSync',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.DiagnosticSyncStateProto',
      '10': 'manualSync'
    },
  ],
};

/// Descriptor for `DiagnosticStateProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diagnosticStateProtoDescriptor = $convert.base64Decode(
    'ChREaWFnbm9zdGljU3RhdGVQcm90bxIiCgxpc0NvbmZpZ3VyZWQYASABKAhSDGlzQ29uZmlndX'
    'JlZBImCg51c2VySWRlbnRpZmllZBgCIAEoCFIOdXNlcklkZW50aWZpZWQSQgoLcGVybWlzc2lv'
    'bnMYAyABKA4yIC5EaWFnbm9zdGljU3RhdGVQZXJtaXNzaW9uc1Byb3RvUgtwZXJtaXNzaW9ucx'
    'JBCg5iYWNrZ3JvdW5kU3luYxgEIAEoCzIZLkRpYWdub3N0aWNTeW5jU3RhdGVQcm90b1IOYmFj'
    'a2dyb3VuZFN5bmMSOQoKbWFudWFsU3luYxgFIAEoCzIZLkRpYWdub3N0aWNTeW5jU3RhdGVQcm'
    '90b1IKbWFudWFsU3luYw==');

@$core.Deprecated('Use diagnosticStateResultProtoDescriptor instead')
const DiagnosticStateResultProto$json = {
  '1': 'DiagnosticStateResultProto',
  '2': [
    {
      '1': 'success',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.DiagnosticStateProto',
      '9': 0,
      '10': 'success'
    },
    {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.SDKExceptionProto',
      '9': 0,
      '10': 'failure'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `DiagnosticStateResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diagnosticStateResultProtoDescriptor =
    $convert.base64Decode(
        'ChpEaWFnbm9zdGljU3RhdGVSZXN1bHRQcm90bxIxCgdzdWNjZXNzGAEgASgLMhUuRGlhZ25vc3'
        'RpY1N0YXRlUHJvdG9IAFIHc3VjY2VzcxIuCgdmYWlsdXJlGAIgASgLMhIuU0RLRXhjZXB0aW9u'
        'UHJvdG9IAFIHZmFpbHVyZUIICgZyZXN1bHQ=');

@$core.Deprecated('Use requestPermissionsStatusResultProtoDescriptor instead')
const RequestPermissionsStatusResultProto$json = {
  '1': 'RequestPermissionsStatusResultProto',
  '2': [
    {
      '1': 'success',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.RequestPermissionsStatusProto',
      '9': 0,
      '10': 'success'
    },
    {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.SDKExceptionProto',
      '9': 0,
      '10': 'failure'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `RequestPermissionsStatusResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestPermissionsStatusResultProtoDescriptor =
    $convert.base64Decode(
        'CiNSZXF1ZXN0UGVybWlzc2lvbnNTdGF0dXNSZXN1bHRQcm90bxI6CgdzdWNjZXNzGAEgASgOMh'
        '4uUmVxdWVzdFBlcm1pc3Npb25zU3RhdHVzUHJvdG9IAFIHc3VjY2VzcxIuCgdmYWlsdXJlGAIg'
        'ASgLMhIuU0RLRXhjZXB0aW9uUHJvdG9IAFIHZmFpbHVyZUIICgZyZXN1bHQ=');

@$core.Deprecated('Use backgroundReadStatusResultProtoDescriptor instead')
const BackgroundReadStatusResultProto$json = {
  '1': 'BackgroundReadStatusResultProto',
  '2': [
    {
      '1': 'success',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.BackgroundReadStatusProto',
      '9': 0,
      '10': 'success'
    },
    {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.SDKExceptionProto',
      '9': 0,
      '10': 'failure'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `BackgroundReadStatusResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List backgroundReadStatusResultProtoDescriptor =
    $convert.base64Decode(
        'Ch9CYWNrZ3JvdW5kUmVhZFN0YXR1c1Jlc3VsdFByb3RvEjYKB3N1Y2Nlc3MYASABKA4yGi5CYW'
        'NrZ3JvdW5kUmVhZFN0YXR1c1Byb3RvSABSB3N1Y2Nlc3MSLgoHZmFpbHVyZRgCIAEoCzISLlNE'
        'S0V4Y2VwdGlvblByb3RvSABSB2ZhaWx1cmVCCAoGcmVzdWx0');

@$core.Deprecated('Use healthConnectPermissionsSummaryProtoDescriptor instead')
const HealthConnectPermissionsSummaryProto$json = {
  '1': 'HealthConnectPermissionsSummaryProto',
  '2': [
    {'1': 'dataTypesGranted', '3': 1, '4': 1, '5': 8, '10': 'dataTypesGranted'},
    {
      '1': 'dataTypesPartiallyGranted',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'dataTypesPartiallyGranted'
    },
    {
      '1': 'backgroundReadGranted',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'backgroundReadGranted'
    },
  ],
};

/// Descriptor for `HealthConnectPermissionsSummaryProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthConnectPermissionsSummaryProtoDescriptor =
    $convert.base64Decode(
        'CiRIZWFsdGhDb25uZWN0UGVybWlzc2lvbnNTdW1tYXJ5UHJvdG8SKgoQZGF0YVR5cGVzR3Jhbn'
        'RlZBgBIAEoCFIQZGF0YVR5cGVzR3JhbnRlZBI8ChlkYXRhVHlwZXNQYXJ0aWFsbHlHcmFudGVk'
        'GAIgASgIUhlkYXRhVHlwZXNQYXJ0aWFsbHlHcmFudGVkEjQKFWJhY2tncm91bmRSZWFkR3Jhbn'
        'RlZBgDIAEoCFIVYmFja2dyb3VuZFJlYWRHcmFudGVk');

@$core.Deprecated('Use androidPermissionsSummaryProtoDescriptor instead')
const AndroidPermissionsSummaryProto$json = {
  '1': 'AndroidPermissionsSummaryProto',
  '2': [
    {
      '1': 'permissionsGranted',
      '3': 1,
      '4': 1,
      '5': 8,
      '10': 'permissionsGranted'
    },
    {'1': 'dialogDisplayed', '3': 2, '4': 1, '5': 8, '10': 'dialogDisplayed'},
  ],
};

/// Descriptor for `AndroidPermissionsSummaryProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List androidPermissionsSummaryProtoDescriptor =
    $convert.base64Decode(
        'Ch5BbmRyb2lkUGVybWlzc2lvbnNTdW1tYXJ5UHJvdG8SLgoScGVybWlzc2lvbnNHcmFudGVkGA'
        'EgASgIUhJwZXJtaXNzaW9uc0dyYW50ZWQSKAoPZGlhbG9nRGlzcGxheWVkGAIgASgIUg9kaWFs'
        'b2dEaXNwbGF5ZWQ=');

@$core.Deprecated('Use caloriesProtoDescriptor instead')
const CaloriesProto$json = {
  '1': 'CaloriesProto',
  '2': [
    {'1': 'basal', '3': 1, '4': 1, '5': 1, '10': 'basal'},
    {'1': 'active', '3': 2, '4': 1, '5': 1, '10': 'active'},
  ],
};

/// Descriptor for `CaloriesProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List caloriesProtoDescriptor = $convert.base64Decode(
    'Cg1DYWxvcmllc1Byb3RvEhQKBWJhc2FsGAEgASgBUgViYXNhbBIWCgZhY3RpdmUYAiABKAFSBm'
    'FjdGl2ZQ==');

@$core.Deprecated('Use caloriesResultProtoDescriptor instead')
const CaloriesResultProto$json = {
  '1': 'CaloriesResultProto',
  '2': [
    {
      '1': 'success',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.CaloriesProto',
      '9': 0,
      '10': 'success'
    },
    {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.SDKExceptionProto',
      '9': 0,
      '10': 'failure'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `CaloriesResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List caloriesResultProtoDescriptor = $convert.base64Decode(
    'ChNDYWxvcmllc1Jlc3VsdFByb3RvEioKB3N1Y2Nlc3MYASABKAsyDi5DYWxvcmllc1Byb3RvSA'
    'BSB3N1Y2Nlc3MSLgoHZmFpbHVyZRgCIAEoCzISLlNES0V4Y2VwdGlvblByb3RvSABSB2ZhaWx1'
    'cmVCCAoGcmVzdWx0');

@$core.Deprecated('Use hearRateProtoDescriptor instead')
const HearRateProto$json = {
  '1': 'HearRateProto',
  '2': [
    {'1': 'hrMaximumBpm', '3': 1, '4': 1, '5': 17, '10': 'hrMaximumBpm'},
    {'1': 'hrMinimumBpm', '3': 2, '4': 1, '5': 17, '10': 'hrMinimumBpm'},
    {'1': 'hrAvgBpm', '3': 3, '4': 1, '5': 17, '10': 'hrAvgBpm'},
    {'1': 'hrRestingBpm', '3': 4, '4': 1, '5': 17, '10': 'hrRestingBpm'},
    {
      '1': 'hrGranularData',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.HrGranularDataProto',
      '10': 'hrGranularData'
    },
    {'1': 'hrvAvgRmssd', '3': 6, '4': 1, '5': 1, '10': 'hrvAvgRmssd'},
    {'1': 'hrvAvgSdnn', '3': 7, '4': 1, '5': 1, '10': 'hrvAvgSdnn'},
    {
      '1': 'hrvSdnnGranularData',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.HrvSdnnGranularDataProto',
      '10': 'hrvSdnnGranularData'
    },
    {
      '1': 'hrvRmssdGranularData',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.HrvRmssdGranularDataProto',
      '10': 'hrvRmssdGranularData'
    },
  ],
};

/// Descriptor for `HearRateProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hearRateProtoDescriptor = $convert.base64Decode(
    'Cg1IZWFyUmF0ZVByb3RvEiIKDGhyTWF4aW11bUJwbRgBIAEoEVIMaHJNYXhpbXVtQnBtEiIKDG'
    'hyTWluaW11bUJwbRgCIAEoEVIMaHJNaW5pbXVtQnBtEhoKCGhyQXZnQnBtGAMgASgRUghockF2'
    'Z0JwbRIiCgxoclJlc3RpbmdCcG0YBCABKBFSDGhyUmVzdGluZ0JwbRI8Cg5ockdyYW51bGFyRG'
    'F0YRgFIAMoCzIULkhyR3JhbnVsYXJEYXRhUHJvdG9SDmhyR3JhbnVsYXJEYXRhEiAKC2hydkF2'
    'Z1Jtc3NkGAYgASgBUgtocnZBdmdSbXNzZBIeCgpocnZBdmdTZG5uGAcgASgBUgpocnZBdmdTZG'
    '5uEksKE2hydlNkbm5HcmFudWxhckRhdGEYCCADKAsyGS5IcnZTZG5uR3JhbnVsYXJEYXRhUHJv'
    'dG9SE2hydlNkbm5HcmFudWxhckRhdGESTgoUaHJ2Um1zc2RHcmFudWxhckRhdGEYCSADKAsyGi'
    '5IcnZSbXNzZEdyYW51bGFyRGF0YVByb3RvUhRocnZSbXNzZEdyYW51bGFyRGF0YQ==');

@$core.Deprecated('Use hearRateResultProtoDescriptor instead')
const HearRateResultProto$json = {
  '1': 'HearRateResultProto',
  '2': [
    {
      '1': 'success',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.HearRateProto',
      '9': 0,
      '10': 'success'
    },
    {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.SDKExceptionProto',
      '9': 0,
      '10': 'failure'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `HearRateResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hearRateResultProtoDescriptor = $convert.base64Decode(
    'ChNIZWFyUmF0ZVJlc3VsdFByb3RvEioKB3N1Y2Nlc3MYASABKAsyDi5IZWFyUmF0ZVByb3RvSA'
    'BSB3N1Y2Nlc3MSLgoHZmFpbHVyZRgCIAEoCzISLlNES0V4Y2VwdGlvblByb3RvSABSB2ZhaWx1'
    'cmVCCAoGcmVzdWx0');

@$core.Deprecated('Use sleepSummaryProtoDescriptor instead')
const SleepSummaryProto$json = {
  '1': 'SleepSummaryProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'sourceOfData', '3': 2, '4': 1, '5': 9, '10': 'sourceOfData'},
    {
      '1': 'wasTheUserUnderPhysicalActivity',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'wasTheUserUnderPhysicalActivity'
    },
    {
      '1': 'sleepStartDateTime',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'sleepStartDateTime'
    },
    {'1': 'sleepEndDateTime', '3': 5, '4': 1, '5': 9, '10': 'sleepEndDateTime'},
    {'1': 'sleepDate', '3': 6, '4': 1, '5': 9, '10': 'sleepDate'},
    {
      '1': 'sleepDurationSeconds',
      '3': 7,
      '4': 1,
      '5': 17,
      '10': 'sleepDurationSeconds'
    },
    {
      '1': 'timeInBedSeconds',
      '3': 8,
      '4': 1,
      '5': 17,
      '10': 'timeInBedSeconds'
    },
    {
      '1': 'lightSleepDurationSeconds',
      '3': 9,
      '4': 1,
      '5': 17,
      '10': 'lightSleepDurationSeconds'
    },
    {
      '1': 'remSleepDurationSeconds',
      '3': 10,
      '4': 1,
      '5': 17,
      '10': 'remSleepDurationSeconds'
    },
    {
      '1': 'deepSleepDurationSeconds',
      '3': 11,
      '4': 1,
      '5': 17,
      '10': 'deepSleepDurationSeconds'
    },
    {
      '1': 'timeToFallAsleepSeconds',
      '3': 12,
      '4': 1,
      '5': 17,
      '10': 'timeToFallAsleepSeconds'
    },
    {
      '1': 'timeAwakeDuringSleepSeconds',
      '3': 13,
      '4': 1,
      '5': 17,
      '10': 'timeAwakeDuringSleepSeconds'
    },
    {
      '1': 'sleepQualityRating1To5Score',
      '3': 14,
      '4': 1,
      '5': 17,
      '10': 'sleepQualityRating1To5Score'
    },
    {
      '1': 'sleepEfficiency1To100Score',
      '3': 15,
      '4': 1,
      '5': 17,
      '10': 'sleepEfficiency1To100Score'
    },
    {
      '1': 'sleepGoalSeconds',
      '3': 16,
      '4': 1,
      '5': 17,
      '10': 'sleepGoalSeconds'
    },
    {
      '1': 'sleepContinuity1To5Score',
      '3': 17,
      '4': 1,
      '5': 17,
      '10': 'sleepContinuity1To5Score'
    },
    {
      '1': 'sleepContinuity1To5Rating',
      '3': 18,
      '4': 1,
      '5': 17,
      '10': 'sleepContinuity1To5Rating'
    },
    {'1': 'hrMaximumBpm', '3': 19, '4': 1, '5': 17, '10': 'hrMaximumBpm'},
    {'1': 'hrMinimumBpm', '3': 20, '4': 1, '5': 17, '10': 'hrMinimumBpm'},
    {'1': 'hrAvgBpm', '3': 21, '4': 1, '5': 17, '10': 'hrAvgBpm'},
    {'1': 'hrRestingBpm', '3': 22, '4': 1, '5': 17, '10': 'hrRestingBpm'},
    {'1': 'hrBasalBpm', '3': 23, '4': 1, '5': 17, '10': 'hrBasalBpm'},
    {
      '1': 'hrGranularData',
      '3': 24,
      '4': 3,
      '5': 11,
      '6': '.HrGranularDataProto',
      '10': 'hrGranularData'
    },
    {'1': 'hrvAvgRmssd', '3': 25, '4': 1, '5': 1, '10': 'hrvAvgRmssd'},
    {'1': 'hrvAvgSdnn', '3': 26, '4': 1, '5': 1, '10': 'hrvAvgSdnn'},
    {
      '1': 'hrvSdnnGranularData',
      '3': 27,
      '4': 3,
      '5': 11,
      '6': '.HrvSdnnGranularDataProto',
      '10': 'hrvSdnnGranularData'
    },
    {
      '1': 'hrvRmssdGranularData',
      '3': 28,
      '4': 3,
      '5': 11,
      '6': '.HrvRmssdGranularDataProto',
      '10': 'hrvRmssdGranularData'
    },
    {
      '1': 'temperatureMinimum',
      '3': 29,
      '4': 3,
      '5': 11,
      '6': '.TemperatureObjectProto',
      '10': 'temperatureMinimum'
    },
    {
      '1': 'temperatureAvg',
      '3': 30,
      '4': 3,
      '5': 11,
      '6': '.TemperatureObjectProto',
      '10': 'temperatureAvg'
    },
    {
      '1': 'temperatureMaximum',
      '3': 31,
      '4': 3,
      '5': 11,
      '6': '.TemperatureObjectProto',
      '10': 'temperatureMaximum'
    },
    {
      '1': 'temperatureGranularData',
      '3': 32,
      '4': 3,
      '5': 11,
      '6': '.TemperatureGranularDataProto',
      '10': 'temperatureGranularData'
    },
    {
      '1': 'temperatureDelta',
      '3': 33,
      '4': 3,
      '5': 11,
      '6': '.TemperatureObjectProto',
      '10': 'temperatureDelta'
    },
    {
      '1': 'breathsMinimumPerMin',
      '3': 34,
      '4': 1,
      '5': 1,
      '10': 'breathsMinimumPerMin'
    },
    {
      '1': 'breathsAvgPerMin',
      '3': 35,
      '4': 1,
      '5': 1,
      '10': 'breathsAvgPerMin'
    },
    {
      '1': 'breathsMaximumPerMin',
      '3': 36,
      '4': 1,
      '5': 1,
      '10': 'breathsMaximumPerMin'
    },
    {
      '1': 'breathingGranularData',
      '3': 37,
      '4': 3,
      '5': 11,
      '6': '.BreathingGranularDataProto',
      '10': 'breathingGranularData'
    },
    {
      '1': 'snoringEventsCount',
      '3': 38,
      '4': 1,
      '5': 17,
      '10': 'snoringEventsCount'
    },
    {
      '1': 'snoringDurationTotalSeconds',
      '3': 39,
      '4': 1,
      '5': 17,
      '10': 'snoringDurationTotalSeconds'
    },
    {
      '1': 'snoringGranularData',
      '3': 40,
      '4': 3,
      '5': 11,
      '6': '.SnoringGranularDataProto',
      '10': 'snoringGranularData'
    },
    {
      '1': 'saturationAvgPercentage',
      '3': 41,
      '4': 1,
      '5': 1,
      '10': 'saturationAvgPercentage'
    },
    {
      '1': 'saturationMinimumPercentage',
      '3': 42,
      '4': 1,
      '5': 1,
      '10': 'saturationMinimumPercentage'
    },
    {
      '1': 'saturationMaximumPercentage',
      '3': 43,
      '4': 1,
      '5': 1,
      '10': 'saturationMaximumPercentage'
    },
    {
      '1': 'saturationGranularData',
      '3': 44,
      '4': 3,
      '5': 11,
      '6': '.SaturationGranularDataProto',
      '10': 'saturationGranularData'
    },
  ],
};

/// Descriptor for `SleepSummaryProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sleepSummaryProtoDescriptor = $convert.base64Decode(
    'ChFTbGVlcFN1bW1hcnlQcm90bxIaCghkYXRlVGltZRgBIAEoCVIIZGF0ZVRpbWUSIgoMc291cm'
    'NlT2ZEYXRhGAIgASgJUgxzb3VyY2VPZkRhdGESSAofd2FzVGhlVXNlclVuZGVyUGh5c2ljYWxB'
    'Y3Rpdml0eRgDIAEoCFIfd2FzVGhlVXNlclVuZGVyUGh5c2ljYWxBY3Rpdml0eRIuChJzbGVlcF'
    'N0YXJ0RGF0ZVRpbWUYBCABKAlSEnNsZWVwU3RhcnREYXRlVGltZRIqChBzbGVlcEVuZERhdGVU'
    'aW1lGAUgASgJUhBzbGVlcEVuZERhdGVUaW1lEhwKCXNsZWVwRGF0ZRgGIAEoCVIJc2xlZXBEYX'
    'RlEjIKFHNsZWVwRHVyYXRpb25TZWNvbmRzGAcgASgRUhRzbGVlcER1cmF0aW9uU2Vjb25kcxIq'
    'ChB0aW1lSW5CZWRTZWNvbmRzGAggASgRUhB0aW1lSW5CZWRTZWNvbmRzEjwKGWxpZ2h0U2xlZX'
    'BEdXJhdGlvblNlY29uZHMYCSABKBFSGWxpZ2h0U2xlZXBEdXJhdGlvblNlY29uZHMSOAoXcmVt'
    'U2xlZXBEdXJhdGlvblNlY29uZHMYCiABKBFSF3JlbVNsZWVwRHVyYXRpb25TZWNvbmRzEjoKGG'
    'RlZXBTbGVlcER1cmF0aW9uU2Vjb25kcxgLIAEoEVIYZGVlcFNsZWVwRHVyYXRpb25TZWNvbmRz'
    'EjgKF3RpbWVUb0ZhbGxBc2xlZXBTZWNvbmRzGAwgASgRUhd0aW1lVG9GYWxsQXNsZWVwU2Vjb2'
    '5kcxJACht0aW1lQXdha2VEdXJpbmdTbGVlcFNlY29uZHMYDSABKBFSG3RpbWVBd2FrZUR1cmlu'
    'Z1NsZWVwU2Vjb25kcxJAChtzbGVlcFF1YWxpdHlSYXRpbmcxVG81U2NvcmUYDiABKBFSG3NsZW'
    'VwUXVhbGl0eVJhdGluZzFUbzVTY29yZRI+ChpzbGVlcEVmZmljaWVuY3kxVG8xMDBTY29yZRgP'
    'IAEoEVIac2xlZXBFZmZpY2llbmN5MVRvMTAwU2NvcmUSKgoQc2xlZXBHb2FsU2Vjb25kcxgQIA'
    'EoEVIQc2xlZXBHb2FsU2Vjb25kcxI6ChhzbGVlcENvbnRpbnVpdHkxVG81U2NvcmUYESABKBFS'
    'GHNsZWVwQ29udGludWl0eTFUbzVTY29yZRI8ChlzbGVlcENvbnRpbnVpdHkxVG81UmF0aW5nGB'
    'IgASgRUhlzbGVlcENvbnRpbnVpdHkxVG81UmF0aW5nEiIKDGhyTWF4aW11bUJwbRgTIAEoEVIM'
    'aHJNYXhpbXVtQnBtEiIKDGhyTWluaW11bUJwbRgUIAEoEVIMaHJNaW5pbXVtQnBtEhoKCGhyQX'
    'ZnQnBtGBUgASgRUghockF2Z0JwbRIiCgxoclJlc3RpbmdCcG0YFiABKBFSDGhyUmVzdGluZ0Jw'
    'bRIeCgpockJhc2FsQnBtGBcgASgRUgpockJhc2FsQnBtEjwKDmhyR3JhbnVsYXJEYXRhGBggAy'
    'gLMhQuSHJHcmFudWxhckRhdGFQcm90b1IOaHJHcmFudWxhckRhdGESIAoLaHJ2QXZnUm1zc2QY'
    'GSABKAFSC2hydkF2Z1Jtc3NkEh4KCmhydkF2Z1Nkbm4YGiABKAFSCmhydkF2Z1Nkbm4SSwoTaH'
    'J2U2RubkdyYW51bGFyRGF0YRgbIAMoCzIZLkhydlNkbm5HcmFudWxhckRhdGFQcm90b1ITaHJ2'
    'U2RubkdyYW51bGFyRGF0YRJOChRocnZSbXNzZEdyYW51bGFyRGF0YRgcIAMoCzIaLkhydlJtc3'
    'NkR3JhbnVsYXJEYXRhUHJvdG9SFGhydlJtc3NkR3JhbnVsYXJEYXRhEkcKEnRlbXBlcmF0dXJl'
    'TWluaW11bRgdIAMoCzIXLlRlbXBlcmF0dXJlT2JqZWN0UHJvdG9SEnRlbXBlcmF0dXJlTWluaW'
    '11bRI/Cg50ZW1wZXJhdHVyZUF2ZxgeIAMoCzIXLlRlbXBlcmF0dXJlT2JqZWN0UHJvdG9SDnRl'
    'bXBlcmF0dXJlQXZnEkcKEnRlbXBlcmF0dXJlTWF4aW11bRgfIAMoCzIXLlRlbXBlcmF0dXJlT2'
    'JqZWN0UHJvdG9SEnRlbXBlcmF0dXJlTWF4aW11bRJXChd0ZW1wZXJhdHVyZUdyYW51bGFyRGF0'
    'YRggIAMoCzIdLlRlbXBlcmF0dXJlR3JhbnVsYXJEYXRhUHJvdG9SF3RlbXBlcmF0dXJlR3Jhbn'
    'VsYXJEYXRhEkMKEHRlbXBlcmF0dXJlRGVsdGEYISADKAsyFy5UZW1wZXJhdHVyZU9iamVjdFBy'
    'b3RvUhB0ZW1wZXJhdHVyZURlbHRhEjIKFGJyZWF0aHNNaW5pbXVtUGVyTWluGCIgASgBUhRicm'
    'VhdGhzTWluaW11bVBlck1pbhIqChBicmVhdGhzQXZnUGVyTWluGCMgASgBUhBicmVhdGhzQXZn'
    'UGVyTWluEjIKFGJyZWF0aHNNYXhpbXVtUGVyTWluGCQgASgBUhRicmVhdGhzTWF4aW11bVBlck'
    '1pbhJRChVicmVhdGhpbmdHcmFudWxhckRhdGEYJSADKAsyGy5CcmVhdGhpbmdHcmFudWxhckRh'
    'dGFQcm90b1IVYnJlYXRoaW5nR3JhbnVsYXJEYXRhEi4KEnNub3JpbmdFdmVudHNDb3VudBgmIA'
    'EoEVISc25vcmluZ0V2ZW50c0NvdW50EkAKG3Nub3JpbmdEdXJhdGlvblRvdGFsU2Vjb25kcxgn'
    'IAEoEVIbc25vcmluZ0R1cmF0aW9uVG90YWxTZWNvbmRzEksKE3Nub3JpbmdHcmFudWxhckRhdG'
    'EYKCADKAsyGS5Tbm9yaW5nR3JhbnVsYXJEYXRhUHJvdG9SE3Nub3JpbmdHcmFudWxhckRhdGES'
    'OAoXc2F0dXJhdGlvbkF2Z1BlcmNlbnRhZ2UYKSABKAFSF3NhdHVyYXRpb25BdmdQZXJjZW50YW'
    'dlEkAKG3NhdHVyYXRpb25NaW5pbXVtUGVyY2VudGFnZRgqIAEoAVIbc2F0dXJhdGlvbk1pbmlt'
    'dW1QZXJjZW50YWdlEkAKG3NhdHVyYXRpb25NYXhpbXVtUGVyY2VudGFnZRgrIAEoAVIbc2F0dX'
    'JhdGlvbk1heGltdW1QZXJjZW50YWdlElQKFnNhdHVyYXRpb25HcmFudWxhckRhdGEYLCADKAsy'
    'HC5TYXR1cmF0aW9uR3JhbnVsYXJEYXRhUHJvdG9SFnNhdHVyYXRpb25HcmFudWxhckRhdGE=');

@$core.Deprecated('Use sleepSummariesProtoDescriptor instead')
const SleepSummariesProto$json = {
  '1': 'SleepSummariesProto',
  '2': [
    {
      '1': 'elements',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.SleepSummaryProto',
      '10': 'elements'
    },
  ],
};

/// Descriptor for `SleepSummariesProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sleepSummariesProtoDescriptor = $convert.base64Decode(
    'ChNTbGVlcFN1bW1hcmllc1Byb3RvEi4KCGVsZW1lbnRzGAEgAygLMhIuU2xlZXBTdW1tYXJ5UH'
    'JvdG9SCGVsZW1lbnRz');

@$core.Deprecated('Use sleepSummaryResultProtoDescriptor instead')
const SleepSummaryResultProto$json = {
  '1': 'SleepSummaryResultProto',
  '2': [
    {
      '1': 'success',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.SleepSummariesProto',
      '9': 0,
      '10': 'success'
    },
    {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.SDKExceptionProto',
      '9': 0,
      '10': 'failure'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `SleepSummaryResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sleepSummaryResultProtoDescriptor = $convert.base64Decode(
    'ChdTbGVlcFN1bW1hcnlSZXN1bHRQcm90bxIwCgdzdWNjZXNzGAEgASgLMhQuU2xlZXBTdW1tYX'
    'JpZXNQcm90b0gAUgdzdWNjZXNzEi4KB2ZhaWx1cmUYAiABKAsyEi5TREtFeGNlcHRpb25Qcm90'
    'b0gAUgdmYWlsdXJlQggKBnJlc3VsdA==');

@$core.Deprecated('Use physicalSummaryProtoDescriptor instead')
const PhysicalSummaryProto$json = {
  '1': 'PhysicalSummaryProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'sourceOfData', '3': 2, '4': 1, '5': 9, '10': 'sourceOfData'},
    {
      '1': 'wasTheUserUnderPhysicalActivity',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'wasTheUserUnderPhysicalActivity'
    },
    {'1': 'activeSeconds', '3': 4, '4': 1, '5': 17, '10': 'activeSeconds'},
    {'1': 'restSeconds', '3': 5, '4': 1, '5': 17, '10': 'restSeconds'},
    {
      '1': 'lowIntensitySeconds',
      '3': 6,
      '4': 1,
      '5': 17,
      '10': 'lowIntensitySeconds'
    },
    {
      '1': 'moderateIntensitySeconds',
      '3': 7,
      '4': 1,
      '5': 17,
      '10': 'moderateIntensitySeconds'
    },
    {
      '1': 'vigorousIntensitySeconds',
      '3': 8,
      '4': 1,
      '5': 17,
      '10': 'vigorousIntensitySeconds'
    },
    {
      '1': 'inactivitySeconds',
      '3': 9,
      '4': 1,
      '5': 17,
      '10': 'inactivitySeconds'
    },
    {
      '1': 'activityLevelGranularData',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.ActivityLevelGranularDataProto',
      '10': 'activityLevelGranularData'
    },
    {
      '1': 'continuousInactivePeriods',
      '3': 11,
      '4': 1,
      '5': 17,
      '10': 'continuousInactivePeriods'
    },
    {
      '1': 'caloriesNetIntakeKcal',
      '3': 12,
      '4': 1,
      '5': 1,
      '10': 'caloriesNetIntakeKcal'
    },
    {
      '1': 'caloriesExpenditureKcal',
      '3': 13,
      '4': 1,
      '5': 1,
      '10': 'caloriesExpenditureKcal'
    },
    {
      '1': 'caloriesNetActiveKcal',
      '3': 14,
      '4': 1,
      '5': 1,
      '10': 'caloriesNetActiveKcal'
    },
    {
      '1': 'caloriesBasalMetabolicRateKcal',
      '3': 15,
      '4': 1,
      '5': 1,
      '10': 'caloriesBasalMetabolicRateKcal'
    },
    {'1': 'steps', '3': 16, '4': 1, '5': 17, '10': 'steps'},
    {
      '1': 'stepsGranularData',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.StepsGranularDataProto',
      '10': 'stepsGranularData'
    },
    {'1': 'activeSteps', '3': 18, '4': 1, '5': 17, '10': 'activeSteps'},
    {
      '1': 'activeStepsGranularData',
      '3': 19,
      '4': 3,
      '5': 11,
      '6': '.ActiveStepsGranularDataProto',
      '10': 'activeStepsGranularData'
    },
    {
      '1': 'walkedDistanceMeters',
      '3': 20,
      '4': 1,
      '5': 1,
      '10': 'walkedDistanceMeters'
    },
    {
      '1': 'traveledDistanceMeters',
      '3': 21,
      '4': 1,
      '5': 1,
      '10': 'traveledDistanceMeters'
    },
    {
      '1': 'traveledDistanceGranularData',
      '3': 22,
      '4': 3,
      '5': 11,
      '6': '.TraveledDistanceGranularDataProto',
      '10': 'traveledDistanceGranularData'
    },
    {'1': 'floorsClimbed', '3': 23, '4': 1, '5': 1, '10': 'floorsClimbed'},
    {
      '1': 'floorsClimbedGranularData',
      '3': 24,
      '4': 3,
      '5': 11,
      '6': '.FloorsClimbedGranularDataProto',
      '10': 'floorsClimbedGranularData'
    },
    {
      '1': 'elevationAvgAltitudeMeters',
      '3': 25,
      '4': 1,
      '5': 1,
      '10': 'elevationAvgAltitudeMeters'
    },
    {
      '1': 'elevationMinimumAltitudeMeters',
      '3': 26,
      '4': 1,
      '5': 1,
      '10': 'elevationMinimumAltitudeMeters'
    },
    {
      '1': 'elevationMaximumAltitudeMeters',
      '3': 27,
      '4': 1,
      '5': 1,
      '10': 'elevationMaximumAltitudeMeters'
    },
    {
      '1': 'elevationLossActualAltitudeMeters',
      '3': 28,
      '4': 1,
      '5': 1,
      '10': 'elevationLossActualAltitudeMeters'
    },
    {
      '1': 'elevationGainActualAltitudeMeters',
      '3': 29,
      '4': 1,
      '5': 1,
      '10': 'elevationGainActualAltitudeMeters'
    },
    {
      '1': 'elevationPlannedGainMeters',
      '3': 30,
      '4': 1,
      '5': 1,
      '10': 'elevationPlannedGainMeters'
    },
    {
      '1': 'elevationGranularData',
      '3': 31,
      '4': 3,
      '5': 11,
      '6': '.ElevationGranularDataProto',
      '10': 'elevationGranularData'
    },
    {
      '1': 'swimmingNumStrokes',
      '3': 32,
      '4': 1,
      '5': 17,
      '10': 'swimmingNumStrokes'
    },
    {'1': 'swimmingNumLaps', '3': 33, '4': 1, '5': 17, '10': 'swimmingNumLaps'},
    {
      '1': 'swimmingPoolLengthMeters',
      '3': 34,
      '4': 1,
      '5': 1,
      '10': 'swimmingPoolLengthMeters'
    },
    {
      '1': 'swimmingTotalDistanceMeters',
      '3': 35,
      '4': 1,
      '5': 1,
      '10': 'swimmingTotalDistanceMeters'
    },
    {
      '1': 'swimmingDistanceGranularData',
      '3': 36,
      '4': 3,
      '5': 11,
      '6': '.SwimmingDistanceGranularDataProto',
      '10': 'swimmingDistanceGranularData'
    },
    {'1': 'hrMaximumBpm', '3': 37, '4': 1, '5': 17, '10': 'hrMaximumBpm'},
    {'1': 'hrMinimumBpm', '3': 38, '4': 1, '5': 17, '10': 'hrMinimumBpm'},
    {'1': 'hrAvgBpm', '3': 39, '4': 1, '5': 17, '10': 'hrAvgBpm'},
    {'1': 'hrRestingBpm', '3': 40, '4': 1, '5': 17, '10': 'hrRestingBpm'},
    {
      '1': 'hrGranularData',
      '3': 41,
      '4': 3,
      '5': 11,
      '6': '.HrGranularDataProto',
      '10': 'hrGranularData'
    },
    {'1': 'hrvAvgRmssd', '3': 42, '4': 1, '5': 1, '10': 'hrvAvgRmssd'},
    {'1': 'hrvAvgSdnn', '3': 43, '4': 1, '5': 1, '10': 'hrvAvgSdnn'},
    {
      '1': 'hrvSdnnGranularData',
      '3': 44,
      '4': 3,
      '5': 11,
      '6': '.HrvSdnnGranularDataProto',
      '10': 'hrvSdnnGranularData'
    },
    {
      '1': 'hrvRmssdGranularData',
      '3': 45,
      '4': 3,
      '5': 11,
      '6': '.HrvRmssdGranularDataProto',
      '10': 'hrvRmssdGranularData'
    },
    {
      '1': 'saturationAvgPercentage',
      '3': 46,
      '4': 1,
      '5': 1,
      '10': 'saturationAvgPercentage'
    },
    {
      '1': 'saturationGranularData',
      '3': 47,
      '4': 3,
      '5': 11,
      '6': '.SaturationGranularDataProto',
      '10': 'saturationGranularData'
    },
    {
      '1': 'vo2MaxMlPerMinPerKg',
      '3': 48,
      '4': 1,
      '5': 1,
      '10': 'vo2MaxMlPerMinPerKg'
    },
    {
      '1': 'vo2GranularData',
      '3': 49,
      '4': 3,
      '5': 11,
      '6': '.Vo2GranularDataProto',
      '10': 'vo2GranularData'
    },
    {
      '1': 'stressAtRestDurationSeconds',
      '3': 50,
      '4': 1,
      '5': 17,
      '10': 'stressAtRestDurationSeconds'
    },
    {
      '1': 'stressDurationSeconds',
      '3': 51,
      '4': 1,
      '5': 17,
      '10': 'stressDurationSeconds'
    },
    {
      '1': 'lowStressDurationSeconds',
      '3': 52,
      '4': 1,
      '5': 17,
      '10': 'lowStressDurationSeconds'
    },
    {
      '1': 'mediumStressDurationSeconds',
      '3': 53,
      '4': 1,
      '5': 17,
      '10': 'mediumStressDurationSeconds'
    },
    {
      '1': 'highStressDurationSeconds',
      '3': 54,
      '4': 1,
      '5': 17,
      '10': 'highStressDurationSeconds'
    },
    {
      '1': 'stressGranularData',
      '3': 55,
      '4': 3,
      '5': 11,
      '6': '.StressGranularDataProto',
      '10': 'stressGranularData'
    },
    {'1': 'stressAvgLevel', '3': 56, '4': 1, '5': 17, '10': 'stressAvgLevel'},
    {
      '1': 'stressMaximumLevel',
      '3': 57,
      '4': 1,
      '5': 17,
      '10': 'stressMaximumLevel'
    },
  ],
};

/// Descriptor for `PhysicalSummaryProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List physicalSummaryProtoDescriptor = $convert.base64Decode(
    'ChRQaHlzaWNhbFN1bW1hcnlQcm90bxIaCghkYXRlVGltZRgBIAEoCVIIZGF0ZVRpbWUSIgoMc2'
    '91cmNlT2ZEYXRhGAIgASgJUgxzb3VyY2VPZkRhdGESSAofd2FzVGhlVXNlclVuZGVyUGh5c2lj'
    'YWxBY3Rpdml0eRgDIAEoCFIfd2FzVGhlVXNlclVuZGVyUGh5c2ljYWxBY3Rpdml0eRIkCg1hY3'
    'RpdmVTZWNvbmRzGAQgASgRUg1hY3RpdmVTZWNvbmRzEiAKC3Jlc3RTZWNvbmRzGAUgASgRUgty'
    'ZXN0U2Vjb25kcxIwChNsb3dJbnRlbnNpdHlTZWNvbmRzGAYgASgRUhNsb3dJbnRlbnNpdHlTZW'
    'NvbmRzEjoKGG1vZGVyYXRlSW50ZW5zaXR5U2Vjb25kcxgHIAEoEVIYbW9kZXJhdGVJbnRlbnNp'
    'dHlTZWNvbmRzEjoKGHZpZ29yb3VzSW50ZW5zaXR5U2Vjb25kcxgIIAEoEVIYdmlnb3JvdXNJbn'
    'RlbnNpdHlTZWNvbmRzEiwKEWluYWN0aXZpdHlTZWNvbmRzGAkgASgRUhFpbmFjdGl2aXR5U2Vj'
    'b25kcxJdChlhY3Rpdml0eUxldmVsR3JhbnVsYXJEYXRhGAogAygLMh8uQWN0aXZpdHlMZXZlbE'
    'dyYW51bGFyRGF0YVByb3RvUhlhY3Rpdml0eUxldmVsR3JhbnVsYXJEYXRhEjwKGWNvbnRpbnVv'
    'dXNJbmFjdGl2ZVBlcmlvZHMYCyABKBFSGWNvbnRpbnVvdXNJbmFjdGl2ZVBlcmlvZHMSNAoVY2'
    'Fsb3JpZXNOZXRJbnRha2VLY2FsGAwgASgBUhVjYWxvcmllc05ldEludGFrZUtjYWwSOAoXY2Fs'
    'b3JpZXNFeHBlbmRpdHVyZUtjYWwYDSABKAFSF2NhbG9yaWVzRXhwZW5kaXR1cmVLY2FsEjQKFW'
    'NhbG9yaWVzTmV0QWN0aXZlS2NhbBgOIAEoAVIVY2Fsb3JpZXNOZXRBY3RpdmVLY2FsEkYKHmNh'
    'bG9yaWVzQmFzYWxNZXRhYm9saWNSYXRlS2NhbBgPIAEoAVIeY2Fsb3JpZXNCYXNhbE1ldGFib2'
    'xpY1JhdGVLY2FsEhQKBXN0ZXBzGBAgASgRUgVzdGVwcxJFChFzdGVwc0dyYW51bGFyRGF0YRgR'
    'IAMoCzIXLlN0ZXBzR3JhbnVsYXJEYXRhUHJvdG9SEXN0ZXBzR3JhbnVsYXJEYXRhEiAKC2FjdG'
    'l2ZVN0ZXBzGBIgASgRUgthY3RpdmVTdGVwcxJXChdhY3RpdmVTdGVwc0dyYW51bGFyRGF0YRgT'
    'IAMoCzIdLkFjdGl2ZVN0ZXBzR3JhbnVsYXJEYXRhUHJvdG9SF2FjdGl2ZVN0ZXBzR3JhbnVsYX'
    'JEYXRhEjIKFHdhbGtlZERpc3RhbmNlTWV0ZXJzGBQgASgBUhR3YWxrZWREaXN0YW5jZU1ldGVy'
    'cxI2ChZ0cmF2ZWxlZERpc3RhbmNlTWV0ZXJzGBUgASgBUhZ0cmF2ZWxlZERpc3RhbmNlTWV0ZX'
    'JzEmYKHHRyYXZlbGVkRGlzdGFuY2VHcmFudWxhckRhdGEYFiADKAsyIi5UcmF2ZWxlZERpc3Rh'
    'bmNlR3JhbnVsYXJEYXRhUHJvdG9SHHRyYXZlbGVkRGlzdGFuY2VHcmFudWxhckRhdGESJAoNZm'
    'xvb3JzQ2xpbWJlZBgXIAEoAVINZmxvb3JzQ2xpbWJlZBJdChlmbG9vcnNDbGltYmVkR3JhbnVs'
    'YXJEYXRhGBggAygLMh8uRmxvb3JzQ2xpbWJlZEdyYW51bGFyRGF0YVByb3RvUhlmbG9vcnNDbG'
    'ltYmVkR3JhbnVsYXJEYXRhEj4KGmVsZXZhdGlvbkF2Z0FsdGl0dWRlTWV0ZXJzGBkgASgBUhpl'
    'bGV2YXRpb25BdmdBbHRpdHVkZU1ldGVycxJGCh5lbGV2YXRpb25NaW5pbXVtQWx0aXR1ZGVNZX'
    'RlcnMYGiABKAFSHmVsZXZhdGlvbk1pbmltdW1BbHRpdHVkZU1ldGVycxJGCh5lbGV2YXRpb25N'
    'YXhpbXVtQWx0aXR1ZGVNZXRlcnMYGyABKAFSHmVsZXZhdGlvbk1heGltdW1BbHRpdHVkZU1ldG'
    'VycxJMCiFlbGV2YXRpb25Mb3NzQWN0dWFsQWx0aXR1ZGVNZXRlcnMYHCABKAFSIWVsZXZhdGlv'
    'bkxvc3NBY3R1YWxBbHRpdHVkZU1ldGVycxJMCiFlbGV2YXRpb25HYWluQWN0dWFsQWx0aXR1ZG'
    'VNZXRlcnMYHSABKAFSIWVsZXZhdGlvbkdhaW5BY3R1YWxBbHRpdHVkZU1ldGVycxI+ChplbGV2'
    'YXRpb25QbGFubmVkR2Fpbk1ldGVycxgeIAEoAVIaZWxldmF0aW9uUGxhbm5lZEdhaW5NZXRlcn'
    'MSUQoVZWxldmF0aW9uR3JhbnVsYXJEYXRhGB8gAygLMhsuRWxldmF0aW9uR3JhbnVsYXJEYXRh'
    'UHJvdG9SFWVsZXZhdGlvbkdyYW51bGFyRGF0YRIuChJzd2ltbWluZ051bVN0cm9rZXMYICABKB'
    'FSEnN3aW1taW5nTnVtU3Ryb2tlcxIoCg9zd2ltbWluZ051bUxhcHMYISABKBFSD3N3aW1taW5n'
    'TnVtTGFwcxI6Chhzd2ltbWluZ1Bvb2xMZW5ndGhNZXRlcnMYIiABKAFSGHN3aW1taW5nUG9vbE'
    'xlbmd0aE1ldGVycxJAChtzd2ltbWluZ1RvdGFsRGlzdGFuY2VNZXRlcnMYIyABKAFSG3N3aW1t'
    'aW5nVG90YWxEaXN0YW5jZU1ldGVycxJmChxzd2ltbWluZ0Rpc3RhbmNlR3JhbnVsYXJEYXRhGC'
    'QgAygLMiIuU3dpbW1pbmdEaXN0YW5jZUdyYW51bGFyRGF0YVByb3RvUhxzd2ltbWluZ0Rpc3Rh'
    'bmNlR3JhbnVsYXJEYXRhEiIKDGhyTWF4aW11bUJwbRglIAEoEVIMaHJNYXhpbXVtQnBtEiIKDG'
    'hyTWluaW11bUJwbRgmIAEoEVIMaHJNaW5pbXVtQnBtEhoKCGhyQXZnQnBtGCcgASgRUghockF2'
    'Z0JwbRIiCgxoclJlc3RpbmdCcG0YKCABKBFSDGhyUmVzdGluZ0JwbRI8Cg5ockdyYW51bGFyRG'
    'F0YRgpIAMoCzIULkhyR3JhbnVsYXJEYXRhUHJvdG9SDmhyR3JhbnVsYXJEYXRhEiAKC2hydkF2'
    'Z1Jtc3NkGCogASgBUgtocnZBdmdSbXNzZBIeCgpocnZBdmdTZG5uGCsgASgBUgpocnZBdmdTZG'
    '5uEksKE2hydlNkbm5HcmFudWxhckRhdGEYLCADKAsyGS5IcnZTZG5uR3JhbnVsYXJEYXRhUHJv'
    'dG9SE2hydlNkbm5HcmFudWxhckRhdGESTgoUaHJ2Um1zc2RHcmFudWxhckRhdGEYLSADKAsyGi'
    '5IcnZSbXNzZEdyYW51bGFyRGF0YVByb3RvUhRocnZSbXNzZEdyYW51bGFyRGF0YRI4ChdzYXR1'
    'cmF0aW9uQXZnUGVyY2VudGFnZRguIAEoAVIXc2F0dXJhdGlvbkF2Z1BlcmNlbnRhZ2USVAoWc2'
    'F0dXJhdGlvbkdyYW51bGFyRGF0YRgvIAMoCzIcLlNhdHVyYXRpb25HcmFudWxhckRhdGFQcm90'
    'b1IWc2F0dXJhdGlvbkdyYW51bGFyRGF0YRIwChN2bzJNYXhNbFBlck1pblBlcktnGDAgASgBUh'
    'N2bzJNYXhNbFBlck1pblBlcktnEj8KD3ZvMkdyYW51bGFyRGF0YRgxIAMoCzIVLlZvMkdyYW51'
    'bGFyRGF0YVByb3RvUg92bzJHcmFudWxhckRhdGESQAobc3RyZXNzQXRSZXN0RHVyYXRpb25TZW'
    'NvbmRzGDIgASgRUhtzdHJlc3NBdFJlc3REdXJhdGlvblNlY29uZHMSNAoVc3RyZXNzRHVyYXRp'
    'b25TZWNvbmRzGDMgASgRUhVzdHJlc3NEdXJhdGlvblNlY29uZHMSOgoYbG93U3RyZXNzRHVyYX'
    'Rpb25TZWNvbmRzGDQgASgRUhhsb3dTdHJlc3NEdXJhdGlvblNlY29uZHMSQAobbWVkaXVtU3Ry'
    'ZXNzRHVyYXRpb25TZWNvbmRzGDUgASgRUhttZWRpdW1TdHJlc3NEdXJhdGlvblNlY29uZHMSPA'
    'oZaGlnaFN0cmVzc0R1cmF0aW9uU2Vjb25kcxg2IAEoEVIZaGlnaFN0cmVzc0R1cmF0aW9uU2Vj'
    'b25kcxJIChJzdHJlc3NHcmFudWxhckRhdGEYNyADKAsyGC5TdHJlc3NHcmFudWxhckRhdGFQcm'
    '90b1ISc3RyZXNzR3JhbnVsYXJEYXRhEiYKDnN0cmVzc0F2Z0xldmVsGDggASgRUg5zdHJlc3NB'
    'dmdMZXZlbBIuChJzdHJlc3NNYXhpbXVtTGV2ZWwYOSABKBFSEnN0cmVzc01heGltdW1MZXZlbA'
    '==');

@$core.Deprecated('Use physicalSummaryResultProtoDescriptor instead')
const PhysicalSummaryResultProto$json = {
  '1': 'PhysicalSummaryResultProto',
  '2': [
    {
      '1': 'success',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.PhysicalSummaryProto',
      '9': 0,
      '10': 'success'
    },
    {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.SDKExceptionProto',
      '9': 0,
      '10': 'failure'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `PhysicalSummaryResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List physicalSummaryResultProtoDescriptor =
    $convert.base64Decode(
        'ChpQaHlzaWNhbFN1bW1hcnlSZXN1bHRQcm90bxIxCgdzdWNjZXNzGAEgASgLMhUuUGh5c2ljYW'
        'xTdW1tYXJ5UHJvdG9IAFIHc3VjY2VzcxIuCgdmYWlsdXJlGAIgASgLMhIuU0RLRXhjZXB0aW9u'
        'UHJvdG9IAFIHZmFpbHVyZUIICgZyZXN1bHQ=');

@$core.Deprecated('Use bodySummaryProtoDescriptor instead')
const BodySummaryProto$json = {
  '1': 'BodySummaryProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'sourceOfData', '3': 2, '4': 1, '5': 9, '10': 'sourceOfData'},
    {
      '1': 'wasTheUserUnderPhysicalActivity',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'wasTheUserUnderPhysicalActivity'
    },
    {
      '1': 'waistCircumferenceCm',
      '3': 4,
      '4': 1,
      '5': 1,
      '10': 'waistCircumferenceCm'
    },
    {
      '1': 'hipCircumferenceCm',
      '3': 5,
      '4': 1,
      '5': 1,
      '10': 'hipCircumferenceCm'
    },
    {
      '1': 'chestCircumferenceCm',
      '3': 6,
      '4': 1,
      '5': 1,
      '10': 'chestCircumferenceCm'
    },
    {
      '1': 'boneCompositionPercentage',
      '3': 7,
      '4': 1,
      '5': 1,
      '10': 'boneCompositionPercentage'
    },
    {
      '1': 'muscleCompositionPercentage',
      '3': 8,
      '4': 1,
      '5': 1,
      '10': 'muscleCompositionPercentage'
    },
    {
      '1': 'waterCompositionPercentage',
      '3': 9,
      '4': 1,
      '5': 1,
      '10': 'waterCompositionPercentage'
    },
    {'1': 'weightKg', '3': 10, '4': 1, '5': 1, '10': 'weightKg'},
    {'1': 'heightCm', '3': 11, '4': 1, '5': 1, '10': 'heightCm'},
    {'1': 'bmi', '3': 12, '4': 1, '5': 1, '10': 'bmi'},
    {
      '1': 'bloodGlucoseAvgMgPerDl',
      '3': 13,
      '4': 1,
      '5': 1,
      '10': 'bloodGlucoseAvgMgPerDl'
    },
    {
      '1': 'bloodGlucoseGranularData',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.BloodGlucoseGranularDataProto',
      '10': 'bloodGlucoseGranularData'
    },
    {
      '1': 'bloodPressureAvg',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.BloodPressureObjectProto',
      '10': 'bloodPressureAvg'
    },
    {
      '1': 'bloodPressureGranularData',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.BloodPressureGranularDataProto',
      '10': 'bloodPressureGranularData'
    },
    {
      '1': 'waterTotalConsumptionMl',
      '3': 17,
      '4': 1,
      '5': 1,
      '10': 'waterTotalConsumptionMl'
    },
    {
      '1': 'hydrationAmountGranularData',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.HydrationAmountGranularDataProto',
      '10': 'hydrationAmountGranularData'
    },
    {
      '1': 'hydrationLevelGranularData',
      '3': 19,
      '4': 3,
      '5': 11,
      '6': '.HydrationLevelGranularDataProto',
      '10': 'hydrationLevelGranularData'
    },
    {'1': 'hrMaximumBpm', '3': 20, '4': 1, '5': 17, '10': 'hrMaximumBpm'},
    {'1': 'hrMinimumBpm', '3': 21, '4': 1, '5': 17, '10': 'hrMinimumBpm'},
    {'1': 'hrAvgBpm', '3': 22, '4': 1, '5': 17, '10': 'hrAvgBpm'},
    {'1': 'hrRestingBpm', '3': 23, '4': 1, '5': 17, '10': 'hrRestingBpm'},
    {
      '1': 'hrGranularData',
      '3': 24,
      '4': 3,
      '5': 11,
      '6': '.HrGranularDataProto',
      '10': 'hrGranularData'
    },
    {'1': 'hrvAvgRmssd', '3': 25, '4': 1, '5': 1, '10': 'hrvAvgRmssd'},
    {'1': 'hrvAvgSdnn', '3': 26, '4': 1, '5': 1, '10': 'hrvAvgSdnn'},
    {
      '1': 'hrvSdnnGranularData',
      '3': 27,
      '4': 3,
      '5': 11,
      '6': '.HrvSdnnGranularDataProto',
      '10': 'hrvSdnnGranularData'
    },
    {
      '1': 'hrvRmssdGranularData',
      '3': 28,
      '4': 3,
      '5': 11,
      '6': '.HrvRmssdGranularDataProto',
      '10': 'hrvRmssdGranularData'
    },
    {
      '1': 'moodMinimumScale',
      '3': 29,
      '4': 1,
      '5': 1,
      '10': 'moodMinimumScale'
    },
    {'1': 'moodAvgScale', '3': 30, '4': 1, '5': 1, '10': 'moodAvgScale'},
    {
      '1': 'moodMaximumScale',
      '3': 31,
      '4': 1,
      '5': 1,
      '10': 'moodMaximumScale'
    },
    {
      '1': 'moodGranularData',
      '3': 32,
      '4': 3,
      '5': 11,
      '6': '.MoodGranularDataProto',
      '10': 'moodGranularData'
    },
    {'1': 'moodDeltaScale', '3': 33, '4': 1, '5': 1, '10': 'moodDeltaScale'},
    {'1': 'foodIntake', '3': 34, '4': 1, '5': 1, '10': 'foodIntake'},
    {
      '1': 'caloriesIntakeKcal',
      '3': 35,
      '4': 1,
      '5': 1,
      '10': 'caloriesIntakeKcal'
    },
    {'1': 'proteinIntakeG', '3': 36, '4': 1, '5': 1, '10': 'proteinIntakeG'},
    {'1': 'sugarIntakeG', '3': 37, '4': 1, '5': 1, '10': 'sugarIntakeG'},
    {'1': 'fatIntakeG', '3': 38, '4': 1, '5': 1, '10': 'fatIntakeG'},
    {'1': 'transFatIntakeG', '3': 39, '4': 1, '5': 1, '10': 'transFatIntakeG'},
    {
      '1': 'carbohydratesIntakeG',
      '3': 40,
      '4': 1,
      '5': 1,
      '10': 'carbohydratesIntakeG'
    },
    {'1': 'fiberIntakeG', '3': 41, '4': 1, '5': 1, '10': 'fiberIntakeG'},
    {'1': 'alcoholIntakeG', '3': 42, '4': 1, '5': 1, '10': 'alcoholIntakeG'},
    {'1': 'sodiumIntakeMg', '3': 43, '4': 1, '5': 1, '10': 'sodiumIntakeMg'},
    {
      '1': 'cholesterolIntakeMg',
      '3': 44,
      '4': 1,
      '5': 1,
      '10': 'cholesterolIntakeMg'
    },
    {
      '1': 'saturationAvgPercentage',
      '3': 45,
      '4': 1,
      '5': 1,
      '10': 'saturationAvgPercentage'
    },
    {
      '1': 'saturationGranularData',
      '3': 46,
      '4': 3,
      '5': 11,
      '6': '.SaturationGranularDataProto',
      '10': 'saturationGranularData'
    },
    {
      '1': 'vo2MaxMlPerMinPerKg',
      '3': 47,
      '4': 1,
      '5': 1,
      '10': 'vo2MaxMlPerMinPerKg'
    },
    {
      '1': 'vo2GranularData',
      '3': 48,
      '4': 3,
      '5': 11,
      '6': '.Vo2GranularDataProto',
      '10': 'vo2GranularData'
    },
    {
      '1': 'temperatureMinimum',
      '3': 49,
      '4': 3,
      '5': 11,
      '6': '.TemperatureObjectProto',
      '10': 'temperatureMinimum'
    },
    {
      '1': 'temperatureAvg',
      '3': 50,
      '4': 3,
      '5': 11,
      '6': '.TemperatureObjectProto',
      '10': 'temperatureAvg'
    },
    {
      '1': 'temperatureMaximum',
      '3': 51,
      '4': 3,
      '5': 11,
      '6': '.TemperatureObjectProto',
      '10': 'temperatureMaximum'
    },
    {
      '1': 'temperatureGranularData',
      '3': 52,
      '4': 3,
      '5': 11,
      '6': '.TemperatureGranularDataProto',
      '10': 'temperatureGranularData'
    },
    {
      '1': 'temperatureDelta',
      '3': 53,
      '4': 3,
      '5': 11,
      '6': '.TemperatureObjectProto',
      '10': 'temperatureDelta'
    },
    {
      '1': 'lastUpdatedDatetime',
      '3': 54,
      '4': 1,
      '5': 9,
      '10': 'lastUpdatedDatetime'
    },
    {'1': 'periodStartDate', '3': 55, '4': 1, '5': 9, '10': 'periodStartDate'},
    {'1': 'cycleDay', '3': 56, '4': 1, '5': 17, '10': 'cycleDay'},
    {'1': 'cycleLengthDays', '3': 57, '4': 1, '5': 17, '10': 'cycleLengthDays'},
    {
      '1': 'predictedCycleLengthDays',
      '3': 58,
      '4': 1,
      '5': 17,
      '10': 'predictedCycleLengthDays'
    },
    {'1': 'currentPhase', '3': 59, '4': 1, '5': 9, '10': 'currentPhase'},
    {
      '1': 'lengthOfCurrentPhaseDays',
      '3': 60,
      '4': 1,
      '5': 17,
      '10': 'lengthOfCurrentPhaseDays'
    },
    {
      '1': 'daysUntilNextPhase',
      '3': 61,
      '4': 1,
      '5': 17,
      '10': 'daysUntilNextPhase'
    },
    {
      '1': 'isAPredictedCycleValue',
      '3': 62,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'isAPredictedCycleValue'
    },
    {
      '1': 'isAPredictedCycleUnknown',
      '3': 63,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'isAPredictedCycleUnknown'
    },
    {
      '1': 'menstruationFlowGranularData',
      '3': 64,
      '4': 3,
      '5': 11,
      '6': '.MenstruationFlowGranularDataProto',
      '10': 'menstruationFlowGranularData'
    },
  ],
  '8': [
    {'1': 'isAPredictedCycle'},
  ],
};

/// Descriptor for `BodySummaryProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bodySummaryProtoDescriptor = $convert.base64Decode(
    'ChBCb2R5U3VtbWFyeVByb3RvEhoKCGRhdGVUaW1lGAEgASgJUghkYXRlVGltZRIiCgxzb3VyY2'
    'VPZkRhdGEYAiABKAlSDHNvdXJjZU9mRGF0YRJICh93YXNUaGVVc2VyVW5kZXJQaHlzaWNhbEFj'
    'dGl2aXR5GAMgASgIUh93YXNUaGVVc2VyVW5kZXJQaHlzaWNhbEFjdGl2aXR5EjIKFHdhaXN0Q2'
    'lyY3VtZmVyZW5jZUNtGAQgASgBUhR3YWlzdENpcmN1bWZlcmVuY2VDbRIuChJoaXBDaXJjdW1m'
    'ZXJlbmNlQ20YBSABKAFSEmhpcENpcmN1bWZlcmVuY2VDbRIyChRjaGVzdENpcmN1bWZlcmVuY2'
    'VDbRgGIAEoAVIUY2hlc3RDaXJjdW1mZXJlbmNlQ20SPAoZYm9uZUNvbXBvc2l0aW9uUGVyY2Vu'
    'dGFnZRgHIAEoAVIZYm9uZUNvbXBvc2l0aW9uUGVyY2VudGFnZRJAChttdXNjbGVDb21wb3NpdG'
    'lvblBlcmNlbnRhZ2UYCCABKAFSG211c2NsZUNvbXBvc2l0aW9uUGVyY2VudGFnZRI+Chp3YXRl'
    'ckNvbXBvc2l0aW9uUGVyY2VudGFnZRgJIAEoAVIad2F0ZXJDb21wb3NpdGlvblBlcmNlbnRhZ2'
    'USGgoId2VpZ2h0S2cYCiABKAFSCHdlaWdodEtnEhoKCGhlaWdodENtGAsgASgBUghoZWlnaHRD'
    'bRIQCgNibWkYDCABKAFSA2JtaRI2ChZibG9vZEdsdWNvc2VBdmdNZ1BlckRsGA0gASgBUhZibG'
    '9vZEdsdWNvc2VBdmdNZ1BlckRsEloKGGJsb29kR2x1Y29zZUdyYW51bGFyRGF0YRgOIAMoCzIe'
    'LkJsb29kR2x1Y29zZUdyYW51bGFyRGF0YVByb3RvUhhibG9vZEdsdWNvc2VHcmFudWxhckRhdG'
    'ESRQoQYmxvb2RQcmVzc3VyZUF2ZxgPIAMoCzIZLkJsb29kUHJlc3N1cmVPYmplY3RQcm90b1IQ'
    'Ymxvb2RQcmVzc3VyZUF2ZxJdChlibG9vZFByZXNzdXJlR3JhbnVsYXJEYXRhGBAgAygLMh8uQm'
    'xvb2RQcmVzc3VyZUdyYW51bGFyRGF0YVByb3RvUhlibG9vZFByZXNzdXJlR3JhbnVsYXJEYXRh'
    'EjgKF3dhdGVyVG90YWxDb25zdW1wdGlvbk1sGBEgASgBUhd3YXRlclRvdGFsQ29uc3VtcHRpb2'
    '5NbBJjChtoeWRyYXRpb25BbW91bnRHcmFudWxhckRhdGEYEiADKAsyIS5IeWRyYXRpb25BbW91'
    'bnRHcmFudWxhckRhdGFQcm90b1IbaHlkcmF0aW9uQW1vdW50R3JhbnVsYXJEYXRhEmAKGmh5ZH'
    'JhdGlvbkxldmVsR3JhbnVsYXJEYXRhGBMgAygLMiAuSHlkcmF0aW9uTGV2ZWxHcmFudWxhckRh'
    'dGFQcm90b1IaaHlkcmF0aW9uTGV2ZWxHcmFudWxhckRhdGESIgoMaHJNYXhpbXVtQnBtGBQgAS'
    'gRUgxock1heGltdW1CcG0SIgoMaHJNaW5pbXVtQnBtGBUgASgRUgxock1pbmltdW1CcG0SGgoI'
    'aHJBdmdCcG0YFiABKBFSCGhyQXZnQnBtEiIKDGhyUmVzdGluZ0JwbRgXIAEoEVIMaHJSZXN0aW'
    '5nQnBtEjwKDmhyR3JhbnVsYXJEYXRhGBggAygLMhQuSHJHcmFudWxhckRhdGFQcm90b1IOaHJH'
    'cmFudWxhckRhdGESIAoLaHJ2QXZnUm1zc2QYGSABKAFSC2hydkF2Z1Jtc3NkEh4KCmhydkF2Z1'
    'Nkbm4YGiABKAFSCmhydkF2Z1Nkbm4SSwoTaHJ2U2RubkdyYW51bGFyRGF0YRgbIAMoCzIZLkhy'
    'dlNkbm5HcmFudWxhckRhdGFQcm90b1ITaHJ2U2RubkdyYW51bGFyRGF0YRJOChRocnZSbXNzZE'
    'dyYW51bGFyRGF0YRgcIAMoCzIaLkhydlJtc3NkR3JhbnVsYXJEYXRhUHJvdG9SFGhydlJtc3Nk'
    'R3JhbnVsYXJEYXRhEioKEG1vb2RNaW5pbXVtU2NhbGUYHSABKAFSEG1vb2RNaW5pbXVtU2NhbG'
    'USIgoMbW9vZEF2Z1NjYWxlGB4gASgBUgxtb29kQXZnU2NhbGUSKgoQbW9vZE1heGltdW1TY2Fs'
    'ZRgfIAEoAVIQbW9vZE1heGltdW1TY2FsZRJCChBtb29kR3JhbnVsYXJEYXRhGCAgAygLMhYuTW'
    '9vZEdyYW51bGFyRGF0YVByb3RvUhBtb29kR3JhbnVsYXJEYXRhEiYKDm1vb2REZWx0YVNjYWxl'
    'GCEgASgBUg5tb29kRGVsdGFTY2FsZRIeCgpmb29kSW50YWtlGCIgASgBUgpmb29kSW50YWtlEi'
    '4KEmNhbG9yaWVzSW50YWtlS2NhbBgjIAEoAVISY2Fsb3JpZXNJbnRha2VLY2FsEiYKDnByb3Rl'
    'aW5JbnRha2VHGCQgASgBUg5wcm90ZWluSW50YWtlRxIiCgxzdWdhckludGFrZUcYJSABKAFSDH'
    'N1Z2FySW50YWtlRxIeCgpmYXRJbnRha2VHGCYgASgBUgpmYXRJbnRha2VHEigKD3RyYW5zRmF0'
    'SW50YWtlRxgnIAEoAVIPdHJhbnNGYXRJbnRha2VHEjIKFGNhcmJvaHlkcmF0ZXNJbnRha2VHGC'
    'ggASgBUhRjYXJib2h5ZHJhdGVzSW50YWtlRxIiCgxmaWJlckludGFrZUcYKSABKAFSDGZpYmVy'
    'SW50YWtlRxImCg5hbGNvaG9sSW50YWtlRxgqIAEoAVIOYWxjb2hvbEludGFrZUcSJgoOc29kaX'
    'VtSW50YWtlTWcYKyABKAFSDnNvZGl1bUludGFrZU1nEjAKE2Nob2xlc3Rlcm9sSW50YWtlTWcY'
    'LCABKAFSE2Nob2xlc3Rlcm9sSW50YWtlTWcSOAoXc2F0dXJhdGlvbkF2Z1BlcmNlbnRhZ2UYLS'
    'ABKAFSF3NhdHVyYXRpb25BdmdQZXJjZW50YWdlElQKFnNhdHVyYXRpb25HcmFudWxhckRhdGEY'
    'LiADKAsyHC5TYXR1cmF0aW9uR3JhbnVsYXJEYXRhUHJvdG9SFnNhdHVyYXRpb25HcmFudWxhck'
    'RhdGESMAoTdm8yTWF4TWxQZXJNaW5QZXJLZxgvIAEoAVITdm8yTWF4TWxQZXJNaW5QZXJLZxI/'
    'Cg92bzJHcmFudWxhckRhdGEYMCADKAsyFS5WbzJHcmFudWxhckRhdGFQcm90b1IPdm8yR3Jhbn'
    'VsYXJEYXRhEkcKEnRlbXBlcmF0dXJlTWluaW11bRgxIAMoCzIXLlRlbXBlcmF0dXJlT2JqZWN0'
    'UHJvdG9SEnRlbXBlcmF0dXJlTWluaW11bRI/Cg50ZW1wZXJhdHVyZUF2ZxgyIAMoCzIXLlRlbX'
    'BlcmF0dXJlT2JqZWN0UHJvdG9SDnRlbXBlcmF0dXJlQXZnEkcKEnRlbXBlcmF0dXJlTWF4aW11'
    'bRgzIAMoCzIXLlRlbXBlcmF0dXJlT2JqZWN0UHJvdG9SEnRlbXBlcmF0dXJlTWF4aW11bRJXCh'
    'd0ZW1wZXJhdHVyZUdyYW51bGFyRGF0YRg0IAMoCzIdLlRlbXBlcmF0dXJlR3JhbnVsYXJEYXRh'
    'UHJvdG9SF3RlbXBlcmF0dXJlR3JhbnVsYXJEYXRhEkMKEHRlbXBlcmF0dXJlRGVsdGEYNSADKA'
    'syFy5UZW1wZXJhdHVyZU9iamVjdFByb3RvUhB0ZW1wZXJhdHVyZURlbHRhEjAKE2xhc3RVcGRh'
    'dGVkRGF0ZXRpbWUYNiABKAlSE2xhc3RVcGRhdGVkRGF0ZXRpbWUSKAoPcGVyaW9kU3RhcnREYX'
    'RlGDcgASgJUg9wZXJpb2RTdGFydERhdGUSGgoIY3ljbGVEYXkYOCABKBFSCGN5Y2xlRGF5EigK'
    'D2N5Y2xlTGVuZ3RoRGF5cxg5IAEoEVIPY3ljbGVMZW5ndGhEYXlzEjoKGHByZWRpY3RlZEN5Y2'
    'xlTGVuZ3RoRGF5cxg6IAEoEVIYcHJlZGljdGVkQ3ljbGVMZW5ndGhEYXlzEiIKDGN1cnJlbnRQ'
    'aGFzZRg7IAEoCVIMY3VycmVudFBoYXNlEjoKGGxlbmd0aE9mQ3VycmVudFBoYXNlRGF5cxg8IA'
    'EoEVIYbGVuZ3RoT2ZDdXJyZW50UGhhc2VEYXlzEi4KEmRheXNVbnRpbE5leHRQaGFzZRg9IAEo'
    'EVISZGF5c1VudGlsTmV4dFBoYXNlEjgKFmlzQVByZWRpY3RlZEN5Y2xlVmFsdWUYPiABKAhIAF'
    'IWaXNBUHJlZGljdGVkQ3ljbGVWYWx1ZRI8Chhpc0FQcmVkaWN0ZWRDeWNsZVVua25vd24YPyAB'
    'KAhIAFIYaXNBUHJlZGljdGVkQ3ljbGVVbmtub3duEmYKHG1lbnN0cnVhdGlvbkZsb3dHcmFudW'
    'xhckRhdGEYQCADKAsyIi5NZW5zdHJ1YXRpb25GbG93R3JhbnVsYXJEYXRhUHJvdG9SHG1lbnN0'
    'cnVhdGlvbkZsb3dHcmFudWxhckRhdGFCEwoRaXNBUHJlZGljdGVkQ3ljbGU=');

@$core.Deprecated('Use bodySummaryResultProtoDescriptor instead')
const BodySummaryResultProto$json = {
  '1': 'BodySummaryResultProto',
  '2': [
    {
      '1': 'success',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.BodySummaryProto',
      '9': 0,
      '10': 'success'
    },
    {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.SDKExceptionProto',
      '9': 0,
      '10': 'failure'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `BodySummaryResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bodySummaryResultProtoDescriptor = $convert.base64Decode(
    'ChZCb2R5U3VtbWFyeVJlc3VsdFByb3RvEi0KB3N1Y2Nlc3MYASABKAsyES5Cb2R5U3VtbWFyeV'
    'Byb3RvSABSB3N1Y2Nlc3MSLgoHZmFpbHVyZRgCIAEoCzISLlNES0V4Y2VwdGlvblByb3RvSABS'
    'B2ZhaWx1cmVCCAoGcmVzdWx0');

@$core.Deprecated('Use activityEventProtoDescriptor instead')
const ActivityEventProto$json = {
  '1': 'ActivityEventProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'sourceOfData', '3': 2, '4': 1, '5': 9, '10': 'sourceOfData'},
    {
      '1': 'wasTheUserUnderPhysicalActivity',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'wasTheUserUnderPhysicalActivity'
    },
    {
      '1': 'activityStartDateTime',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'activityStartDateTime'
    },
    {
      '1': 'activityEndDateTime',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'activityEndDateTime'
    },
    {
      '1': 'activityDurationSeconds',
      '3': 6,
      '4': 1,
      '5': 17,
      '10': 'activityDurationSeconds'
    },
    {'1': 'activityTypeName', '3': 7, '4': 1, '5': 9, '10': 'activityTypeName'},
    {'1': 'activeSeconds', '3': 8, '4': 1, '5': 17, '10': 'activeSeconds'},
    {'1': 'restSeconds', '3': 9, '4': 1, '5': 17, '10': 'restSeconds'},
    {
      '1': 'lowIntensitySeconds',
      '3': 10,
      '4': 1,
      '5': 17,
      '10': 'lowIntensitySeconds'
    },
    {
      '1': 'moderateIntensitySeconds',
      '3': 11,
      '4': 1,
      '5': 17,
      '10': 'moderateIntensitySeconds'
    },
    {
      '1': 'vigorousIntensitySeconds',
      '3': 12,
      '4': 1,
      '5': 17,
      '10': 'vigorousIntensitySeconds'
    },
    {
      '1': 'inactivitySeconds',
      '3': 13,
      '4': 1,
      '5': 17,
      '10': 'inactivitySeconds'
    },
    {
      '1': 'activityLevelGranularData',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.ActivityLevelGranularDataProto',
      '10': 'activityLevelGranularData'
    },
    {
      '1': 'continuousInactivePeriods',
      '3': 15,
      '4': 1,
      '5': 17,
      '10': 'continuousInactivePeriods'
    },
    {
      '1': 'activityStrainLevel',
      '3': 16,
      '4': 1,
      '5': 17,
      '10': 'activityStrainLevel'
    },
    {
      '1': 'activityWorkKilojoules',
      '3': 17,
      '4': 1,
      '5': 1,
      '10': 'activityWorkKilojoules'
    },
    {
      '1': 'activityEnergyKilojoules',
      '3': 18,
      '4': 1,
      '5': 1,
      '10': 'activityEnergyKilojoules'
    },
    {
      '1': 'activityEnergyPlannedKilojoules',
      '3': 19,
      '4': 1,
      '5': 1,
      '10': 'activityEnergyPlannedKilojoules'
    },
    {
      '1': 'caloriesNetIntakeKcal',
      '3': 20,
      '4': 1,
      '5': 1,
      '10': 'caloriesNetIntakeKcal'
    },
    {
      '1': 'caloriesExpenditureKcal',
      '3': 21,
      '4': 1,
      '5': 1,
      '10': 'caloriesExpenditureKcal'
    },
    {
      '1': 'caloriesNetActiveKcal',
      '3': 22,
      '4': 1,
      '5': 1,
      '10': 'caloriesNetActiveKcal'
    },
    {
      '1': 'caloriesBasalMetabolicRateKcal',
      '3': 23,
      '4': 1,
      '5': 1,
      '10': 'caloriesBasalMetabolicRateKcal'
    },
    {
      '1': 'fatPercentageOfCalories',
      '3': 24,
      '4': 1,
      '5': 1,
      '10': 'fatPercentageOfCalories'
    },
    {
      '1': 'carbohydratePercentageOfCalories',
      '3': 25,
      '4': 1,
      '5': 1,
      '10': 'carbohydratePercentageOfCalories'
    },
    {
      '1': 'proteinPercentageOfCalories',
      '3': 26,
      '4': 1,
      '5': 1,
      '10': 'proteinPercentageOfCalories'
    },
    {'1': 'steps', '3': 27, '4': 1, '5': 17, '10': 'steps'},
    {
      '1': 'stepsGranularData',
      '3': 28,
      '4': 3,
      '5': 11,
      '6': '.StepsGranularDataProto',
      '10': 'stepsGranularData'
    },
    {
      '1': 'walkedDistanceMeters',
      '3': 29,
      '4': 1,
      '5': 1,
      '10': 'walkedDistanceMeters'
    },
    {
      '1': 'traveledDistanceMeters',
      '3': 30,
      '4': 1,
      '5': 1,
      '10': 'traveledDistanceMeters'
    },
    {
      '1': 'traveledDistanceGranularData',
      '3': 31,
      '4': 3,
      '5': 11,
      '6': '.TraveledDistanceGranularDataProto',
      '10': 'traveledDistanceGranularData'
    },
    {'1': 'floorsClimbed', '3': 32, '4': 1, '5': 1, '10': 'floorsClimbed'},
    {
      '1': 'floorsClimbedGranularData',
      '3': 33,
      '4': 3,
      '5': 11,
      '6': '.FloorsClimbedGranularDataProto',
      '10': 'floorsClimbedGranularData'
    },
    {
      '1': 'elevationAvgAltitudeMeters',
      '3': 34,
      '4': 1,
      '5': 1,
      '10': 'elevationAvgAltitudeMeters'
    },
    {
      '1': 'elevationMinimumAltitudeMeters',
      '3': 35,
      '4': 1,
      '5': 1,
      '10': 'elevationMinimumAltitudeMeters'
    },
    {
      '1': 'elevationMaximumAltitudeMeters',
      '3': 36,
      '4': 1,
      '5': 1,
      '10': 'elevationMaximumAltitudeMeters'
    },
    {
      '1': 'elevationLossActualAltitudeMeters',
      '3': 37,
      '4': 1,
      '5': 1,
      '10': 'elevationLossActualAltitudeMeters'
    },
    {
      '1': 'elevationGainActualAltitudeMeters',
      '3': 38,
      '4': 1,
      '5': 1,
      '10': 'elevationGainActualAltitudeMeters'
    },
    {
      '1': 'elevationPlannedGainMeters',
      '3': 39,
      '4': 1,
      '5': 1,
      '10': 'elevationPlannedGainMeters'
    },
    {
      '1': 'elevationGranularData',
      '3': 40,
      '4': 3,
      '5': 11,
      '6': '.ElevationGranularDataProto',
      '10': 'elevationGranularData'
    },
    {
      '1': 'swimmingNumStrokes',
      '3': 41,
      '4': 1,
      '5': 17,
      '10': 'swimmingNumStrokes'
    },
    {'1': 'swimmingNumLaps', '3': 42, '4': 1, '5': 17, '10': 'swimmingNumLaps'},
    {
      '1': 'swimmingPoolLengthMeters',
      '3': 43,
      '4': 1,
      '5': 1,
      '10': 'swimmingPoolLengthMeters'
    },
    {
      '1': 'swimmingTotalDistanceMeters',
      '3': 44,
      '4': 1,
      '5': 1,
      '10': 'swimmingTotalDistanceMeters'
    },
    {
      '1': 'swimmingDistanceGranularData',
      '3': 45,
      '4': 3,
      '5': 11,
      '6': '.SwimmingDistanceGranularDataProto',
      '10': 'swimmingDistanceGranularData'
    },
    {'1': 'hrMaximumBpm', '3': 46, '4': 1, '5': 17, '10': 'hrMaximumBpm'},
    {'1': 'hrMinimumBpm', '3': 47, '4': 1, '5': 17, '10': 'hrMinimumBpm'},
    {'1': 'hrAvgBpm', '3': 48, '4': 1, '5': 17, '10': 'hrAvgBpm'},
    {'1': 'hrRestingBpm', '3': 49, '4': 1, '5': 17, '10': 'hrRestingBpm'},
    {
      '1': 'hrGranularData',
      '3': 50,
      '4': 3,
      '5': 11,
      '6': '.HrGranularDataProto',
      '10': 'hrGranularData'
    },
    {'1': 'hrvAvgRmssd', '3': 51, '4': 1, '5': 1, '10': 'hrvAvgRmssd'},
    {'1': 'hrvAvgSdnn', '3': 52, '4': 1, '5': 1, '10': 'hrvAvgSdnn'},
    {
      '1': 'hrvSdnnGranularData',
      '3': 53,
      '4': 3,
      '5': 11,
      '6': '.HrvSdnnGranularDataProto',
      '10': 'hrvSdnnGranularData'
    },
    {
      '1': 'hrvRmssdGranularData',
      '3': 54,
      '4': 3,
      '5': 11,
      '6': '.HrvRmssdGranularDataProto',
      '10': 'hrvRmssdGranularData'
    },
    {
      '1': 'speedNormalizedMetersPerSecond',
      '3': 55,
      '4': 1,
      '5': 1,
      '10': 'speedNormalizedMetersPerSecond'
    },
    {
      '1': 'speedAvgMetersPerSecond',
      '3': 56,
      '4': 1,
      '5': 1,
      '10': 'speedAvgMetersPerSecond'
    },
    {
      '1': 'speedMaximumMetersPerSecond',
      '3': 57,
      '4': 1,
      '5': 1,
      '10': 'speedMaximumMetersPerSecond'
    },
    {
      '1': 'speedGranularData',
      '3': 58,
      '4': 3,
      '5': 11,
      '6': '.SpeedGranularDataProto',
      '10': 'speedGranularData'
    },
    {
      '1': 'velocityAvg',
      '3': 59,
      '4': 3,
      '5': 11,
      '6': '.VelocityObjectProto',
      '10': 'velocityAvg'
    },
    {
      '1': 'velocityMaximum',
      '3': 60,
      '4': 3,
      '5': 11,
      '6': '.VelocityObjectProto',
      '10': 'velocityMaximum'
    },
    {'1': 'paceAvgMinPerKm', '3': 61, '4': 1, '5': 1, '10': 'paceAvgMinPerKm'},
    {
      '1': 'paceMaximumMinPerKm',
      '3': 62,
      '4': 1,
      '5': 1,
      '10': 'paceMaximumMinPerKm'
    },
    {'1': 'cadenceAvgRpm', '3': 63, '4': 1, '5': 1, '10': 'cadenceAvgRpm'},
    {
      '1': 'cadenceMaximumRpm',
      '3': 64,
      '4': 1,
      '5': 1,
      '10': 'cadenceMaximumRpm'
    },
    {
      '1': 'cadenceGranularData',
      '3': 65,
      '4': 3,
      '5': 11,
      '6': '.CadenceGranularDataProto',
      '10': 'cadenceGranularData'
    },
    {
      '1': 'torqueAvgNewtonMeters',
      '3': 66,
      '4': 1,
      '5': 1,
      '10': 'torqueAvgNewtonMeters'
    },
    {
      '1': 'torqueMaximumNewtonMeters',
      '3': 67,
      '4': 1,
      '5': 1,
      '10': 'torqueMaximumNewtonMeters'
    },
    {
      '1': 'torqueGranularData',
      '3': 68,
      '4': 3,
      '5': 11,
      '6': '.TorqueGranularDataProto',
      '10': 'torqueGranularData'
    },
    {
      '1': 'lapGranularData',
      '3': 69,
      '4': 3,
      '5': 11,
      '6': '.LapGranularDataProto',
      '10': 'lapGranularData'
    },
    {
      '1': 'saturationAvgPercentage',
      '3': 70,
      '4': 1,
      '5': 1,
      '10': 'saturationAvgPercentage'
    },
    {
      '1': 'saturationGranularData',
      '3': 71,
      '4': 3,
      '5': 11,
      '6': '.SaturationGranularDataProto',
      '10': 'saturationGranularData'
    },
    {
      '1': 'vo2MaxMlPerMinPerKg',
      '3': 72,
      '4': 1,
      '5': 1,
      '10': 'vo2MaxMlPerMinPerKg'
    },
    {
      '1': 'vo2GranularData',
      '3': 73,
      '4': 3,
      '5': 11,
      '6': '.Vo2GranularDataProto',
      '10': 'vo2GranularData'
    },
    {
      '1': 'positionStart',
      '3': 74,
      '4': 3,
      '5': 11,
      '6': '.PositionObjectProto',
      '10': 'positionStart'
    },
    {
      '1': 'positionCentroid',
      '3': 75,
      '4': 3,
      '5': 11,
      '6': '.PositionObjectProto',
      '10': 'positionCentroid'
    },
    {
      '1': 'positionEnd',
      '3': 76,
      '4': 3,
      '5': 11,
      '6': '.PositionObjectProto',
      '10': 'positionEnd'
    },
    {
      '1': 'positionGranularData',
      '3': 77,
      '4': 3,
      '5': 11,
      '6': '.PositionGranularDataProto',
      '10': 'positionGranularData'
    },
    {
      '1': 'positionPolylineMapDataSummary',
      '3': 78,
      '4': 1,
      '5': 9,
      '10': 'positionPolylineMapDataSummary'
    },
    {'1': 'powerAvgWatts', '3': 79, '4': 1, '5': 1, '10': 'powerAvgWatts'},
    {
      '1': 'powerMaximumWatts',
      '3': 80,
      '4': 1,
      '5': 1,
      '10': 'powerMaximumWatts'
    },
    {
      '1': 'powerGranularData',
      '3': 81,
      '4': 3,
      '5': 11,
      '6': '.PowerGranularDataProto',
      '10': 'powerGranularData'
    },
    {
      '1': 'stressAtRestDurationSeconds',
      '3': 82,
      '4': 1,
      '5': 17,
      '10': 'stressAtRestDurationSeconds'
    },
    {
      '1': 'stressDurationSeconds',
      '3': 83,
      '4': 1,
      '5': 17,
      '10': 'stressDurationSeconds'
    },
    {
      '1': 'lowStressDurationSeconds',
      '3': 84,
      '4': 1,
      '5': 17,
      '10': 'lowStressDurationSeconds'
    },
    {
      '1': 'mediumStressDurationSeconds',
      '3': 85,
      '4': 1,
      '5': 17,
      '10': 'mediumStressDurationSeconds'
    },
    {
      '1': 'highStressDurationSeconds',
      '3': 86,
      '4': 1,
      '5': 17,
      '10': 'highStressDurationSeconds'
    },
    {
      '1': 'tssGranularData',
      '3': 87,
      '4': 3,
      '5': 11,
      '6': '.TssGranularDataProto',
      '10': 'tssGranularData'
    },
    {'1': 'stressAvgLevel', '3': 88, '4': 1, '5': 17, '10': 'stressAvgLevel'},
    {
      '1': 'stressMaximumLevel',
      '3': 89,
      '4': 1,
      '5': 17,
      '10': 'stressMaximumLevel'
    },
  ],
};

/// Descriptor for `ActivityEventProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityEventProtoDescriptor = $convert.base64Decode(
    'ChJBY3Rpdml0eUV2ZW50UHJvdG8SGgoIZGF0ZVRpbWUYASABKAlSCGRhdGVUaW1lEiIKDHNvdX'
    'JjZU9mRGF0YRgCIAEoCVIMc291cmNlT2ZEYXRhEkgKH3dhc1RoZVVzZXJVbmRlclBoeXNpY2Fs'
    'QWN0aXZpdHkYAyABKAhSH3dhc1RoZVVzZXJVbmRlclBoeXNpY2FsQWN0aXZpdHkSNAoVYWN0aX'
    'ZpdHlTdGFydERhdGVUaW1lGAQgASgJUhVhY3Rpdml0eVN0YXJ0RGF0ZVRpbWUSMAoTYWN0aXZp'
    'dHlFbmREYXRlVGltZRgFIAEoCVITYWN0aXZpdHlFbmREYXRlVGltZRI4ChdhY3Rpdml0eUR1cm'
    'F0aW9uU2Vjb25kcxgGIAEoEVIXYWN0aXZpdHlEdXJhdGlvblNlY29uZHMSKgoQYWN0aXZpdHlU'
    'eXBlTmFtZRgHIAEoCVIQYWN0aXZpdHlUeXBlTmFtZRIkCg1hY3RpdmVTZWNvbmRzGAggASgRUg'
    '1hY3RpdmVTZWNvbmRzEiAKC3Jlc3RTZWNvbmRzGAkgASgRUgtyZXN0U2Vjb25kcxIwChNsb3dJ'
    'bnRlbnNpdHlTZWNvbmRzGAogASgRUhNsb3dJbnRlbnNpdHlTZWNvbmRzEjoKGG1vZGVyYXRlSW'
    '50ZW5zaXR5U2Vjb25kcxgLIAEoEVIYbW9kZXJhdGVJbnRlbnNpdHlTZWNvbmRzEjoKGHZpZ29y'
    'b3VzSW50ZW5zaXR5U2Vjb25kcxgMIAEoEVIYdmlnb3JvdXNJbnRlbnNpdHlTZWNvbmRzEiwKEW'
    'luYWN0aXZpdHlTZWNvbmRzGA0gASgRUhFpbmFjdGl2aXR5U2Vjb25kcxJdChlhY3Rpdml0eUxl'
    'dmVsR3JhbnVsYXJEYXRhGA4gAygLMh8uQWN0aXZpdHlMZXZlbEdyYW51bGFyRGF0YVByb3RvUh'
    'lhY3Rpdml0eUxldmVsR3JhbnVsYXJEYXRhEjwKGWNvbnRpbnVvdXNJbmFjdGl2ZVBlcmlvZHMY'
    'DyABKBFSGWNvbnRpbnVvdXNJbmFjdGl2ZVBlcmlvZHMSMAoTYWN0aXZpdHlTdHJhaW5MZXZlbB'
    'gQIAEoEVITYWN0aXZpdHlTdHJhaW5MZXZlbBI2ChZhY3Rpdml0eVdvcmtLaWxvam91bGVzGBEg'
    'ASgBUhZhY3Rpdml0eVdvcmtLaWxvam91bGVzEjoKGGFjdGl2aXR5RW5lcmd5S2lsb2pvdWxlcx'
    'gSIAEoAVIYYWN0aXZpdHlFbmVyZ3lLaWxvam91bGVzEkgKH2FjdGl2aXR5RW5lcmd5UGxhbm5l'
    'ZEtpbG9qb3VsZXMYEyABKAFSH2FjdGl2aXR5RW5lcmd5UGxhbm5lZEtpbG9qb3VsZXMSNAoVY2'
    'Fsb3JpZXNOZXRJbnRha2VLY2FsGBQgASgBUhVjYWxvcmllc05ldEludGFrZUtjYWwSOAoXY2Fs'
    'b3JpZXNFeHBlbmRpdHVyZUtjYWwYFSABKAFSF2NhbG9yaWVzRXhwZW5kaXR1cmVLY2FsEjQKFW'
    'NhbG9yaWVzTmV0QWN0aXZlS2NhbBgWIAEoAVIVY2Fsb3JpZXNOZXRBY3RpdmVLY2FsEkYKHmNh'
    'bG9yaWVzQmFzYWxNZXRhYm9saWNSYXRlS2NhbBgXIAEoAVIeY2Fsb3JpZXNCYXNhbE1ldGFib2'
    'xpY1JhdGVLY2FsEjgKF2ZhdFBlcmNlbnRhZ2VPZkNhbG9yaWVzGBggASgBUhdmYXRQZXJjZW50'
    'YWdlT2ZDYWxvcmllcxJKCiBjYXJib2h5ZHJhdGVQZXJjZW50YWdlT2ZDYWxvcmllcxgZIAEoAV'
    'IgY2FyYm9oeWRyYXRlUGVyY2VudGFnZU9mQ2Fsb3JpZXMSQAobcHJvdGVpblBlcmNlbnRhZ2VP'
    'ZkNhbG9yaWVzGBogASgBUhtwcm90ZWluUGVyY2VudGFnZU9mQ2Fsb3JpZXMSFAoFc3RlcHMYGy'
    'ABKBFSBXN0ZXBzEkUKEXN0ZXBzR3JhbnVsYXJEYXRhGBwgAygLMhcuU3RlcHNHcmFudWxhckRh'
    'dGFQcm90b1IRc3RlcHNHcmFudWxhckRhdGESMgoUd2Fsa2VkRGlzdGFuY2VNZXRlcnMYHSABKA'
    'FSFHdhbGtlZERpc3RhbmNlTWV0ZXJzEjYKFnRyYXZlbGVkRGlzdGFuY2VNZXRlcnMYHiABKAFS'
    'FnRyYXZlbGVkRGlzdGFuY2VNZXRlcnMSZgocdHJhdmVsZWREaXN0YW5jZUdyYW51bGFyRGF0YR'
    'gfIAMoCzIiLlRyYXZlbGVkRGlzdGFuY2VHcmFudWxhckRhdGFQcm90b1IcdHJhdmVsZWREaXN0'
    'YW5jZUdyYW51bGFyRGF0YRIkCg1mbG9vcnNDbGltYmVkGCAgASgBUg1mbG9vcnNDbGltYmVkEl'
    '0KGWZsb29yc0NsaW1iZWRHcmFudWxhckRhdGEYISADKAsyHy5GbG9vcnNDbGltYmVkR3JhbnVs'
    'YXJEYXRhUHJvdG9SGWZsb29yc0NsaW1iZWRHcmFudWxhckRhdGESPgoaZWxldmF0aW9uQXZnQW'
    'x0aXR1ZGVNZXRlcnMYIiABKAFSGmVsZXZhdGlvbkF2Z0FsdGl0dWRlTWV0ZXJzEkYKHmVsZXZh'
    'dGlvbk1pbmltdW1BbHRpdHVkZU1ldGVycxgjIAEoAVIeZWxldmF0aW9uTWluaW11bUFsdGl0dW'
    'RlTWV0ZXJzEkYKHmVsZXZhdGlvbk1heGltdW1BbHRpdHVkZU1ldGVycxgkIAEoAVIeZWxldmF0'
    'aW9uTWF4aW11bUFsdGl0dWRlTWV0ZXJzEkwKIWVsZXZhdGlvbkxvc3NBY3R1YWxBbHRpdHVkZU'
    '1ldGVycxglIAEoAVIhZWxldmF0aW9uTG9zc0FjdHVhbEFsdGl0dWRlTWV0ZXJzEkwKIWVsZXZh'
    'dGlvbkdhaW5BY3R1YWxBbHRpdHVkZU1ldGVycxgmIAEoAVIhZWxldmF0aW9uR2FpbkFjdHVhbE'
    'FsdGl0dWRlTWV0ZXJzEj4KGmVsZXZhdGlvblBsYW5uZWRHYWluTWV0ZXJzGCcgASgBUhplbGV2'
    'YXRpb25QbGFubmVkR2Fpbk1ldGVycxJRChVlbGV2YXRpb25HcmFudWxhckRhdGEYKCADKAsyGy'
    '5FbGV2YXRpb25HcmFudWxhckRhdGFQcm90b1IVZWxldmF0aW9uR3JhbnVsYXJEYXRhEi4KEnN3'
    'aW1taW5nTnVtU3Ryb2tlcxgpIAEoEVISc3dpbW1pbmdOdW1TdHJva2VzEigKD3N3aW1taW5nTn'
    'VtTGFwcxgqIAEoEVIPc3dpbW1pbmdOdW1MYXBzEjoKGHN3aW1taW5nUG9vbExlbmd0aE1ldGVy'
    'cxgrIAEoAVIYc3dpbW1pbmdQb29sTGVuZ3RoTWV0ZXJzEkAKG3N3aW1taW5nVG90YWxEaXN0YW'
    '5jZU1ldGVycxgsIAEoAVIbc3dpbW1pbmdUb3RhbERpc3RhbmNlTWV0ZXJzEmYKHHN3aW1taW5n'
    'RGlzdGFuY2VHcmFudWxhckRhdGEYLSADKAsyIi5Td2ltbWluZ0Rpc3RhbmNlR3JhbnVsYXJEYX'
    'RhUHJvdG9SHHN3aW1taW5nRGlzdGFuY2VHcmFudWxhckRhdGESIgoMaHJNYXhpbXVtQnBtGC4g'
    'ASgRUgxock1heGltdW1CcG0SIgoMaHJNaW5pbXVtQnBtGC8gASgRUgxock1pbmltdW1CcG0SGg'
    'oIaHJBdmdCcG0YMCABKBFSCGhyQXZnQnBtEiIKDGhyUmVzdGluZ0JwbRgxIAEoEVIMaHJSZXN0'
    'aW5nQnBtEjwKDmhyR3JhbnVsYXJEYXRhGDIgAygLMhQuSHJHcmFudWxhckRhdGFQcm90b1IOaH'
    'JHcmFudWxhckRhdGESIAoLaHJ2QXZnUm1zc2QYMyABKAFSC2hydkF2Z1Jtc3NkEh4KCmhydkF2'
    'Z1Nkbm4YNCABKAFSCmhydkF2Z1Nkbm4SSwoTaHJ2U2RubkdyYW51bGFyRGF0YRg1IAMoCzIZLk'
    'hydlNkbm5HcmFudWxhckRhdGFQcm90b1ITaHJ2U2RubkdyYW51bGFyRGF0YRJOChRocnZSbXNz'
    'ZEdyYW51bGFyRGF0YRg2IAMoCzIaLkhydlJtc3NkR3JhbnVsYXJEYXRhUHJvdG9SFGhydlJtc3'
    'NkR3JhbnVsYXJEYXRhEkYKHnNwZWVkTm9ybWFsaXplZE1ldGVyc1BlclNlY29uZBg3IAEoAVIe'
    'c3BlZWROb3JtYWxpemVkTWV0ZXJzUGVyU2Vjb25kEjgKF3NwZWVkQXZnTWV0ZXJzUGVyU2Vjb2'
    '5kGDggASgBUhdzcGVlZEF2Z01ldGVyc1BlclNlY29uZBJAChtzcGVlZE1heGltdW1NZXRlcnNQ'
    'ZXJTZWNvbmQYOSABKAFSG3NwZWVkTWF4aW11bU1ldGVyc1BlclNlY29uZBJFChFzcGVlZEdyYW'
    '51bGFyRGF0YRg6IAMoCzIXLlNwZWVkR3JhbnVsYXJEYXRhUHJvdG9SEXNwZWVkR3JhbnVsYXJE'
    'YXRhEjYKC3ZlbG9jaXR5QXZnGDsgAygLMhQuVmVsb2NpdHlPYmplY3RQcm90b1ILdmVsb2NpdH'
    'lBdmcSPgoPdmVsb2NpdHlNYXhpbXVtGDwgAygLMhQuVmVsb2NpdHlPYmplY3RQcm90b1IPdmVs'
    'b2NpdHlNYXhpbXVtEigKD3BhY2VBdmdNaW5QZXJLbRg9IAEoAVIPcGFjZUF2Z01pblBlckttEj'
    'AKE3BhY2VNYXhpbXVtTWluUGVyS20YPiABKAFSE3BhY2VNYXhpbXVtTWluUGVyS20SJAoNY2Fk'
    'ZW5jZUF2Z1JwbRg/IAEoAVINY2FkZW5jZUF2Z1JwbRIsChFjYWRlbmNlTWF4aW11bVJwbRhAIA'
    'EoAVIRY2FkZW5jZU1heGltdW1ScG0SSwoTY2FkZW5jZUdyYW51bGFyRGF0YRhBIAMoCzIZLkNh'
    'ZGVuY2VHcmFudWxhckRhdGFQcm90b1ITY2FkZW5jZUdyYW51bGFyRGF0YRI0ChV0b3JxdWVBdm'
    'dOZXd0b25NZXRlcnMYQiABKAFSFXRvcnF1ZUF2Z05ld3Rvbk1ldGVycxI8Chl0b3JxdWVNYXhp'
    'bXVtTmV3dG9uTWV0ZXJzGEMgASgBUhl0b3JxdWVNYXhpbXVtTmV3dG9uTWV0ZXJzEkgKEnRvcn'
    'F1ZUdyYW51bGFyRGF0YRhEIAMoCzIYLlRvcnF1ZUdyYW51bGFyRGF0YVByb3RvUhJ0b3JxdWVH'
    'cmFudWxhckRhdGESPwoPbGFwR3JhbnVsYXJEYXRhGEUgAygLMhUuTGFwR3JhbnVsYXJEYXRhUH'
    'JvdG9SD2xhcEdyYW51bGFyRGF0YRI4ChdzYXR1cmF0aW9uQXZnUGVyY2VudGFnZRhGIAEoAVIX'
    'c2F0dXJhdGlvbkF2Z1BlcmNlbnRhZ2USVAoWc2F0dXJhdGlvbkdyYW51bGFyRGF0YRhHIAMoCz'
    'IcLlNhdHVyYXRpb25HcmFudWxhckRhdGFQcm90b1IWc2F0dXJhdGlvbkdyYW51bGFyRGF0YRIw'
    'ChN2bzJNYXhNbFBlck1pblBlcktnGEggASgBUhN2bzJNYXhNbFBlck1pblBlcktnEj8KD3ZvMk'
    'dyYW51bGFyRGF0YRhJIAMoCzIVLlZvMkdyYW51bGFyRGF0YVByb3RvUg92bzJHcmFudWxhckRh'
    'dGESOgoNcG9zaXRpb25TdGFydBhKIAMoCzIULlBvc2l0aW9uT2JqZWN0UHJvdG9SDXBvc2l0aW'
    '9uU3RhcnQSQAoQcG9zaXRpb25DZW50cm9pZBhLIAMoCzIULlBvc2l0aW9uT2JqZWN0UHJvdG9S'
    'EHBvc2l0aW9uQ2VudHJvaWQSNgoLcG9zaXRpb25FbmQYTCADKAsyFC5Qb3NpdGlvbk9iamVjdF'
    'Byb3RvUgtwb3NpdGlvbkVuZBJOChRwb3NpdGlvbkdyYW51bGFyRGF0YRhNIAMoCzIaLlBvc2l0'
    'aW9uR3JhbnVsYXJEYXRhUHJvdG9SFHBvc2l0aW9uR3JhbnVsYXJEYXRhEkYKHnBvc2l0aW9uUG'
    '9seWxpbmVNYXBEYXRhU3VtbWFyeRhOIAEoCVIecG9zaXRpb25Qb2x5bGluZU1hcERhdGFTdW1t'
    'YXJ5EiQKDXBvd2VyQXZnV2F0dHMYTyABKAFSDXBvd2VyQXZnV2F0dHMSLAoRcG93ZXJNYXhpbX'
    'VtV2F0dHMYUCABKAFSEXBvd2VyTWF4aW11bVdhdHRzEkUKEXBvd2VyR3JhbnVsYXJEYXRhGFEg'
    'AygLMhcuUG93ZXJHcmFudWxhckRhdGFQcm90b1IRcG93ZXJHcmFudWxhckRhdGESQAobc3RyZX'
    'NzQXRSZXN0RHVyYXRpb25TZWNvbmRzGFIgASgRUhtzdHJlc3NBdFJlc3REdXJhdGlvblNlY29u'
    'ZHMSNAoVc3RyZXNzRHVyYXRpb25TZWNvbmRzGFMgASgRUhVzdHJlc3NEdXJhdGlvblNlY29uZH'
    'MSOgoYbG93U3RyZXNzRHVyYXRpb25TZWNvbmRzGFQgASgRUhhsb3dTdHJlc3NEdXJhdGlvblNl'
    'Y29uZHMSQAobbWVkaXVtU3RyZXNzRHVyYXRpb25TZWNvbmRzGFUgASgRUhttZWRpdW1TdHJlc3'
    'NEdXJhdGlvblNlY29uZHMSPAoZaGlnaFN0cmVzc0R1cmF0aW9uU2Vjb25kcxhWIAEoEVIZaGln'
    'aFN0cmVzc0R1cmF0aW9uU2Vjb25kcxI/Cg90c3NHcmFudWxhckRhdGEYVyADKAsyFS5Uc3NHcm'
    'FudWxhckRhdGFQcm90b1IPdHNzR3JhbnVsYXJEYXRhEiYKDnN0cmVzc0F2Z0xldmVsGFggASgR'
    'Ug5zdHJlc3NBdmdMZXZlbBIuChJzdHJlc3NNYXhpbXVtTGV2ZWwYWSABKBFSEnN0cmVzc01heG'
    'ltdW1MZXZlbA==');

@$core.Deprecated('Use activityEventsProtoDescriptor instead')
const ActivityEventsProto$json = {
  '1': 'ActivityEventsProto',
  '2': [
    {
      '1': 'elements',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.ActivityEventProto',
      '10': 'elements'
    },
  ],
};

/// Descriptor for `ActivityEventsProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityEventsProtoDescriptor = $convert.base64Decode(
    'ChNBY3Rpdml0eUV2ZW50c1Byb3RvEi8KCGVsZW1lbnRzGAEgAygLMhMuQWN0aXZpdHlFdmVudF'
    'Byb3RvUghlbGVtZW50cw==');

@$core.Deprecated('Use activityEventResultProtoDescriptor instead')
const ActivityEventResultProto$json = {
  '1': 'ActivityEventResultProto',
  '2': [
    {
      '1': 'success',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.ActivityEventsProto',
      '9': 0,
      '10': 'success'
    },
    {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.SDKExceptionProto',
      '9': 0,
      '10': 'failure'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `ActivityEventResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityEventResultProtoDescriptor = $convert.base64Decode(
    'ChhBY3Rpdml0eUV2ZW50UmVzdWx0UHJvdG8SMAoHc3VjY2VzcxgBIAEoCzIULkFjdGl2aXR5RX'
    'ZlbnRzUHJvdG9IAFIHc3VjY2VzcxIuCgdmYWlsdXJlGAIgASgLMhIuU0RLRXhjZXB0aW9uUHJv'
    'dG9IAFIHZmFpbHVyZUIICgZyZXN1bHQ=');

@$core.Deprecated('Use activeStepsGranularDataProtoDescriptor instead')
const ActiveStepsGranularDataProto$json = {
  '1': 'ActiveStepsGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {'1': 'activeSteps', '3': 3, '4': 1, '5': 17, '10': 'activeSteps'},
  ],
};

/// Descriptor for `ActiveStepsGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activeStepsGranularDataProtoDescriptor =
    $convert.base64Decode(
        'ChxBY3RpdmVTdGVwc0dyYW51bGFyRGF0YVByb3RvEhoKCGRhdGVUaW1lGAEgASgJUghkYXRlVG'
        'ltZRI4ChdpbnRlcnZhbER1cmF0aW9uU2Vjb25kcxgCIAEoEVIXaW50ZXJ2YWxEdXJhdGlvblNl'
        'Y29uZHMSIAoLYWN0aXZlU3RlcHMYAyABKBFSC2FjdGl2ZVN0ZXBz');

@$core.Deprecated('Use activityLevelGranularDataProtoDescriptor instead')
const ActivityLevelGranularDataProto$json = {
  '1': 'ActivityLevelGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'activityLevel', '3': 2, '4': 1, '5': 17, '10': 'activityLevel'},
  ],
};

/// Descriptor for `ActivityLevelGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityLevelGranularDataProtoDescriptor =
    $convert.base64Decode(
        'Ch5BY3Rpdml0eUxldmVsR3JhbnVsYXJEYXRhUHJvdG8SGgoIZGF0ZVRpbWUYASABKAlSCGRhdG'
        'VUaW1lEiQKDWFjdGl2aXR5TGV2ZWwYAiABKBFSDWFjdGl2aXR5TGV2ZWw=');

@$core.Deprecated('Use bloodGlucoseGranularDataProtoDescriptor instead')
const BloodGlucoseGranularDataProto$json = {
  '1': 'BloodGlucoseGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'bloodGlucoseMgPerDl',
      '3': 2,
      '4': 1,
      '5': 1,
      '10': 'bloodGlucoseMgPerDl'
    },
  ],
};

/// Descriptor for `BloodGlucoseGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bloodGlucoseGranularDataProtoDescriptor =
    $convert.base64Decode(
        'Ch1CbG9vZEdsdWNvc2VHcmFudWxhckRhdGFQcm90bxIaCghkYXRlVGltZRgBIAEoCVIIZGF0ZV'
        'RpbWUSMAoTYmxvb2RHbHVjb3NlTWdQZXJEbBgCIAEoAVITYmxvb2RHbHVjb3NlTWdQZXJEbA==');

@$core.Deprecated('Use bloodPressureGranularDataProtoDescriptor instead')
const BloodPressureGranularDataProto$json = {
  '1': 'BloodPressureGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'systolicMmHg', '3': 2, '4': 1, '5': 1, '10': 'systolicMmHg'},
    {'1': 'diastolicMmHg', '3': 3, '4': 1, '5': 1, '10': 'diastolicMmHg'},
  ],
};

/// Descriptor for `BloodPressureGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bloodPressureGranularDataProtoDescriptor =
    $convert.base64Decode(
        'Ch5CbG9vZFByZXNzdXJlR3JhbnVsYXJEYXRhUHJvdG8SGgoIZGF0ZVRpbWUYASABKAlSCGRhdG'
        'VUaW1lEiIKDHN5c3RvbGljTW1IZxgCIAEoAVIMc3lzdG9saWNNbUhnEiQKDWRpYXN0b2xpY01t'
        'SGcYAyABKAFSDWRpYXN0b2xpY01tSGc=');

@$core.Deprecated('Use breathingGranularDataProtoDescriptor instead')
const BreathingGranularDataProto$json = {
  '1': 'BreathingGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'breathsPerMin', '3': 2, '4': 1, '5': 1, '10': 'breathsPerMin'},
  ],
};

/// Descriptor for `BreathingGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List breathingGranularDataProtoDescriptor =
    $convert.base64Decode(
        'ChpCcmVhdGhpbmdHcmFudWxhckRhdGFQcm90bxIaCghkYXRlVGltZRgBIAEoCVIIZGF0ZVRpbW'
        'USJAoNYnJlYXRoc1Blck1pbhgCIAEoAVINYnJlYXRoc1Blck1pbg==');

@$core.Deprecated('Use cadenceGranularDataProtoDescriptor instead')
const CadenceGranularDataProto$json = {
  '1': 'CadenceGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {'1': 'cadenceRpm', '3': 3, '4': 1, '5': 1, '10': 'cadenceRpm'},
  ],
};

/// Descriptor for `CadenceGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cadenceGranularDataProtoDescriptor = $convert.base64Decode(
    'ChhDYWRlbmNlR3JhbnVsYXJEYXRhUHJvdG8SGgoIZGF0ZVRpbWUYASABKAlSCGRhdGVUaW1lEj'
    'gKF2ludGVydmFsRHVyYXRpb25TZWNvbmRzGAIgASgRUhdpbnRlcnZhbER1cmF0aW9uU2Vjb25k'
    'cxIeCgpjYWRlbmNlUnBtGAMgASgBUgpjYWRlbmNlUnBt');

@$core.Deprecated('Use elevationGranularDataProtoDescriptor instead')
const ElevationGranularDataProto$json = {
  '1': 'ElevationGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {
      '1': 'elevationChangeMeters',
      '3': 3,
      '4': 1,
      '5': 1,
      '10': 'elevationChangeMeters'
    },
  ],
};

/// Descriptor for `ElevationGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List elevationGranularDataProtoDescriptor = $convert.base64Decode(
    'ChpFbGV2YXRpb25HcmFudWxhckRhdGFQcm90bxIaCghkYXRlVGltZRgBIAEoCVIIZGF0ZVRpbW'
    'USOAoXaW50ZXJ2YWxEdXJhdGlvblNlY29uZHMYAiABKBFSF2ludGVydmFsRHVyYXRpb25TZWNv'
    'bmRzEjQKFWVsZXZhdGlvbkNoYW5nZU1ldGVycxgDIAEoAVIVZWxldmF0aW9uQ2hhbmdlTWV0ZX'
    'Jz');

@$core.Deprecated('Use floorsClimbedGranularDataProtoDescriptor instead')
const FloorsClimbedGranularDataProto$json = {
  '1': 'FloorsClimbedGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {'1': 'floorsClimbed', '3': 3, '4': 1, '5': 1, '10': 'floorsClimbed'},
  ],
};

/// Descriptor for `FloorsClimbedGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floorsClimbedGranularDataProtoDescriptor =
    $convert.base64Decode(
        'Ch5GbG9vcnNDbGltYmVkR3JhbnVsYXJEYXRhUHJvdG8SGgoIZGF0ZVRpbWUYASABKAlSCGRhdG'
        'VUaW1lEjgKF2ludGVydmFsRHVyYXRpb25TZWNvbmRzGAIgASgRUhdpbnRlcnZhbER1cmF0aW9u'
        'U2Vjb25kcxIkCg1mbG9vcnNDbGltYmVkGAMgASgBUg1mbG9vcnNDbGltYmVk');

@$core.Deprecated('Use hrGranularDataProtoDescriptor instead')
const HrGranularDataProto$json = {
  '1': 'HrGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'hrBpm', '3': 2, '4': 1, '5': 17, '10': 'hrBpm'},
  ],
};

/// Descriptor for `HrGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hrGranularDataProtoDescriptor = $convert.base64Decode(
    'ChNIckdyYW51bGFyRGF0YVByb3RvEhoKCGRhdGVUaW1lGAEgASgJUghkYXRlVGltZRIUCgVock'
    'JwbRgCIAEoEVIFaHJCcG0=');

@$core.Deprecated('Use hrvSdnnGranularDataProtoDescriptor instead')
const HrvSdnnGranularDataProto$json = {
  '1': 'HrvSdnnGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'hrvSdnn', '3': 2, '4': 1, '5': 1, '10': 'hrvSdnn'},
  ],
};

/// Descriptor for `HrvSdnnGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hrvSdnnGranularDataProtoDescriptor =
    $convert.base64Decode(
        'ChhIcnZTZG5uR3JhbnVsYXJEYXRhUHJvdG8SGgoIZGF0ZVRpbWUYASABKAlSCGRhdGVUaW1lEh'
        'gKB2hydlNkbm4YAiABKAFSB2hydlNkbm4=');

@$core.Deprecated('Use menstruationFlowGranularDataProtoDescriptor instead')
const MenstruationFlowGranularDataProto$json = {
  '1': 'MenstruationFlowGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'flowMl', '3': 2, '4': 1, '5': 1, '10': 'flowMl'},
  ],
};

/// Descriptor for `MenstruationFlowGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List menstruationFlowGranularDataProtoDescriptor =
    $convert.base64Decode(
        'CiFNZW5zdHJ1YXRpb25GbG93R3JhbnVsYXJEYXRhUHJvdG8SGgoIZGF0ZVRpbWUYASABKAlSCG'
        'RhdGVUaW1lEhYKBmZsb3dNbBgCIAEoAVIGZmxvd01s');

@$core.Deprecated('Use moodGranularDataProtoDescriptor instead')
const MoodGranularDataProto$json = {
  '1': 'MoodGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {'1': 'moodScale', '3': 3, '4': 1, '5': 1, '10': 'moodScale'},
  ],
};

/// Descriptor for `MoodGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moodGranularDataProtoDescriptor = $convert.base64Decode(
    'ChVNb29kR3JhbnVsYXJEYXRhUHJvdG8SGgoIZGF0ZVRpbWUYASABKAlSCGRhdGVUaW1lEjgKF2'
    'ludGVydmFsRHVyYXRpb25TZWNvbmRzGAIgASgRUhdpbnRlcnZhbER1cmF0aW9uU2Vjb25kcxIc'
    'Cgltb29kU2NhbGUYAyABKAFSCW1vb2RTY2FsZQ==');

@$core.Deprecated('Use lapGranularDataProtoDescriptor instead')
const LapGranularDataProto$json = {
  '1': 'LapGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {'1': 'laps', '3': 3, '4': 1, '5': 17, '10': 'laps'},
  ],
};

/// Descriptor for `LapGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lapGranularDataProtoDescriptor = $convert.base64Decode(
    'ChRMYXBHcmFudWxhckRhdGFQcm90bxIaCghkYXRlVGltZRgBIAEoCVIIZGF0ZVRpbWUSOAoXaW'
    '50ZXJ2YWxEdXJhdGlvblNlY29uZHMYAiABKBFSF2ludGVydmFsRHVyYXRpb25TZWNvbmRzEhIK'
    'BGxhcHMYAyABKBFSBGxhcHM=');

@$core.Deprecated('Use powerGranularDataProtoDescriptor instead')
const PowerGranularDataProto$json = {
  '1': 'PowerGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {'1': 'powerWatts', '3': 3, '4': 1, '5': 1, '10': 'powerWatts'},
  ],
};

/// Descriptor for `PowerGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List powerGranularDataProtoDescriptor = $convert.base64Decode(
    'ChZQb3dlckdyYW51bGFyRGF0YVByb3RvEhoKCGRhdGVUaW1lGAEgASgJUghkYXRlVGltZRI4Ch'
    'dpbnRlcnZhbER1cmF0aW9uU2Vjb25kcxgCIAEoEVIXaW50ZXJ2YWxEdXJhdGlvblNlY29uZHMS'
    'HgoKcG93ZXJXYXR0cxgDIAEoAVIKcG93ZXJXYXR0cw==');

@$core.Deprecated('Use positionGranularDataProtoDescriptor instead')
const PositionGranularDataProto$json = {
  '1': 'PositionGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {'1': 'latDeg', '3': 3, '4': 1, '5': 1, '10': 'latDeg'},
    {'1': 'lngDeg', '3': 4, '4': 1, '5': 1, '10': 'lngDeg'},
  ],
};

/// Descriptor for `PositionGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionGranularDataProtoDescriptor = $convert.base64Decode(
    'ChlQb3NpdGlvbkdyYW51bGFyRGF0YVByb3RvEhoKCGRhdGVUaW1lGAEgASgJUghkYXRlVGltZR'
    'I4ChdpbnRlcnZhbER1cmF0aW9uU2Vjb25kcxgCIAEoEVIXaW50ZXJ2YWxEdXJhdGlvblNlY29u'
    'ZHMSFgoGbGF0RGVnGAMgASgBUgZsYXREZWcSFgoGbG5nRGVnGAQgASgBUgZsbmdEZWc=');

@$core.Deprecated('Use hydrationAmountGranularDataProtoDescriptor instead')
const HydrationAmountGranularDataProto$json = {
  '1': 'HydrationAmountGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {
      '1': 'hydrationAmountMl',
      '3': 3,
      '4': 1,
      '5': 1,
      '10': 'hydrationAmountMl'
    },
  ],
};

/// Descriptor for `HydrationAmountGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hydrationAmountGranularDataProtoDescriptor =
    $convert.base64Decode(
        'CiBIeWRyYXRpb25BbW91bnRHcmFudWxhckRhdGFQcm90bxIaCghkYXRlVGltZRgBIAEoCVIIZG'
        'F0ZVRpbWUSOAoXaW50ZXJ2YWxEdXJhdGlvblNlY29uZHMYAiABKBFSF2ludGVydmFsRHVyYXRp'
        'b25TZWNvbmRzEiwKEWh5ZHJhdGlvbkFtb3VudE1sGAMgASgBUhFoeWRyYXRpb25BbW91bnRNbA'
        '==');

@$core.Deprecated('Use saturationGranularDataProtoDescriptor instead')
const SaturationGranularDataProto$json = {
  '1': 'SaturationGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'saturationPercentage',
      '3': 2,
      '4': 1,
      '5': 1,
      '10': 'saturationPercentage'
    },
  ],
};

/// Descriptor for `SaturationGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saturationGranularDataProtoDescriptor =
    $convert.base64Decode(
        'ChtTYXR1cmF0aW9uR3JhbnVsYXJEYXRhUHJvdG8SGgoIZGF0ZVRpbWUYASABKAlSCGRhdGVUaW'
        '1lEjIKFHNhdHVyYXRpb25QZXJjZW50YWdlGAIgASgBUhRzYXR1cmF0aW9uUGVyY2VudGFnZQ==');

@$core.Deprecated('Use hydrationLevelGranularDataProtoDescriptor instead')
const HydrationLevelGranularDataProto$json = {
  '1': 'HydrationLevelGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {
      '1': 'hydrationLevelPercentage',
      '3': 3,
      '4': 1,
      '5': 1,
      '10': 'hydrationLevelPercentage'
    },
  ],
};

/// Descriptor for `HydrationLevelGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hydrationLevelGranularDataProtoDescriptor =
    $convert.base64Decode(
        'Ch9IeWRyYXRpb25MZXZlbEdyYW51bGFyRGF0YVByb3RvEhoKCGRhdGVUaW1lGAEgASgJUghkYX'
        'RlVGltZRI4ChdpbnRlcnZhbER1cmF0aW9uU2Vjb25kcxgCIAEoEVIXaW50ZXJ2YWxEdXJhdGlv'
        'blNlY29uZHMSOgoYaHlkcmF0aW9uTGV2ZWxQZXJjZW50YWdlGAMgASgBUhhoeWRyYXRpb25MZX'
        'ZlbFBlcmNlbnRhZ2U=');

@$core.Deprecated('Use hrvRmssdGranularDataProtoDescriptor instead')
const HrvRmssdGranularDataProto$json = {
  '1': 'HrvRmssdGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'hrvRmssd', '3': 2, '4': 1, '5': 1, '10': 'hrvRmssd'},
  ],
};

/// Descriptor for `HrvRmssdGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hrvRmssdGranularDataProtoDescriptor =
    $convert.base64Decode(
        'ChlIcnZSbXNzZEdyYW51bGFyRGF0YVByb3RvEhoKCGRhdGVUaW1lGAEgASgJUghkYXRlVGltZR'
        'IaCghocnZSbXNzZBgCIAEoAVIIaHJ2Um1zc2Q=');

@$core.Deprecated('Use snoringGranularDataProtoDescriptor instead')
const SnoringGranularDataProto$json = {
  '1': 'SnoringGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {
      '1': 'snoringEventsCount',
      '3': 3,
      '4': 1,
      '5': 17,
      '10': 'snoringEventsCount'
    },
  ],
};

/// Descriptor for `SnoringGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snoringGranularDataProtoDescriptor = $convert.base64Decode(
    'ChhTbm9yaW5nR3JhbnVsYXJEYXRhUHJvdG8SGgoIZGF0ZVRpbWUYASABKAlSCGRhdGVUaW1lEj'
    'gKF2ludGVydmFsRHVyYXRpb25TZWNvbmRzGAIgASgRUhdpbnRlcnZhbER1cmF0aW9uU2Vjb25k'
    'cxIuChJzbm9yaW5nRXZlbnRzQ291bnQYAyABKBFSEnNub3JpbmdFdmVudHNDb3VudA==');

@$core.Deprecated('Use speedGranularDataProtoDescriptor instead')
const SpeedGranularDataProto$json = {
  '1': 'SpeedGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {
      '1': 'speedMetersPerSecond',
      '3': 3,
      '4': 1,
      '5': 1,
      '10': 'speedMetersPerSecond'
    },
  ],
};

/// Descriptor for `SpeedGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speedGranularDataProtoDescriptor = $convert.base64Decode(
    'ChZTcGVlZEdyYW51bGFyRGF0YVByb3RvEhoKCGRhdGVUaW1lGAEgASgJUghkYXRlVGltZRI4Ch'
    'dpbnRlcnZhbER1cmF0aW9uU2Vjb25kcxgCIAEoEVIXaW50ZXJ2YWxEdXJhdGlvblNlY29uZHMS'
    'MgoUc3BlZWRNZXRlcnNQZXJTZWNvbmQYAyABKAFSFHNwZWVkTWV0ZXJzUGVyU2Vjb25k');

@$core.Deprecated('Use stepsGranularDataProtoDescriptor instead')
const StepsGranularDataProto$json = {
  '1': 'StepsGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {'1': 'steps', '3': 3, '4': 1, '5': 17, '10': 'steps'},
  ],
};

/// Descriptor for `StepsGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepsGranularDataProtoDescriptor = $convert.base64Decode(
    'ChZTdGVwc0dyYW51bGFyRGF0YVByb3RvEhoKCGRhdGVUaW1lGAEgASgJUghkYXRlVGltZRI4Ch'
    'dpbnRlcnZhbER1cmF0aW9uU2Vjb25kcxgCIAEoEVIXaW50ZXJ2YWxEdXJhdGlvblNlY29uZHMS'
    'FAoFc3RlcHMYAyABKBFSBXN0ZXBz');

@$core.Deprecated('Use stressGranularDataProtoDescriptor instead')
const StressGranularDataProto$json = {
  '1': 'StressGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'stressScore', '3': 2, '4': 1, '5': 17, '10': 'stressScore'},
  ],
};

/// Descriptor for `StressGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stressGranularDataProtoDescriptor =
    $convert.base64Decode(
        'ChdTdHJlc3NHcmFudWxhckRhdGFQcm90bxIaCghkYXRlVGltZRgBIAEoCVIIZGF0ZVRpbWUSIA'
        'oLc3RyZXNzU2NvcmUYAiABKBFSC3N0cmVzc1Njb3Jl');

@$core.Deprecated('Use swimmingDistanceGranularDataProtoDescriptor instead')
const SwimmingDistanceGranularDataProto$json = {
  '1': 'SwimmingDistanceGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {
      '1': 'swimmingDistanceMeters',
      '3': 3,
      '4': 1,
      '5': 1,
      '10': 'swimmingDistanceMeters'
    },
  ],
};

/// Descriptor for `SwimmingDistanceGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swimmingDistanceGranularDataProtoDescriptor =
    $convert.base64Decode(
        'CiFTd2ltbWluZ0Rpc3RhbmNlR3JhbnVsYXJEYXRhUHJvdG8SGgoIZGF0ZVRpbWUYASABKAlSCG'
        'RhdGVUaW1lEjgKF2ludGVydmFsRHVyYXRpb25TZWNvbmRzGAIgASgRUhdpbnRlcnZhbER1cmF0'
        'aW9uU2Vjb25kcxI2ChZzd2ltbWluZ0Rpc3RhbmNlTWV0ZXJzGAMgASgBUhZzd2ltbWluZ0Rpc3'
        'RhbmNlTWV0ZXJz');

@$core.Deprecated('Use temperatureGranularDataProtoDescriptor instead')
const TemperatureGranularDataProto$json = {
  '1': 'TemperatureGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'temperatureCelsius',
      '3': 2,
      '4': 1,
      '5': 1,
      '10': 'temperatureCelsius'
    },
    {'1': 'measurementType', '3': 3, '4': 1, '5': 9, '10': 'measurementType'},
  ],
};

/// Descriptor for `TemperatureGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List temperatureGranularDataProtoDescriptor =
    $convert.base64Decode(
        'ChxUZW1wZXJhdHVyZUdyYW51bGFyRGF0YVByb3RvEhoKCGRhdGVUaW1lGAEgASgJUghkYXRlVG'
        'ltZRIuChJ0ZW1wZXJhdHVyZUNlbHNpdXMYAiABKAFSEnRlbXBlcmF0dXJlQ2Vsc2l1cxIoCg9t'
        'ZWFzdXJlbWVudFR5cGUYAyABKAlSD21lYXN1cmVtZW50VHlwZQ==');

@$core.Deprecated('Use torqueGranularDataProtoDescriptor instead')
const TorqueGranularDataProto$json = {
  '1': 'TorqueGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {
      '1': 'torqueNewtonMeters',
      '3': 3,
      '4': 1,
      '5': 1,
      '10': 'torqueNewtonMeters'
    },
  ],
};

/// Descriptor for `TorqueGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List torqueGranularDataProtoDescriptor = $convert.base64Decode(
    'ChdUb3JxdWVHcmFudWxhckRhdGFQcm90bxIaCghkYXRlVGltZRgBIAEoCVIIZGF0ZVRpbWUSOA'
    'oXaW50ZXJ2YWxEdXJhdGlvblNlY29uZHMYAiABKBFSF2ludGVydmFsRHVyYXRpb25TZWNvbmRz'
    'Ei4KEnRvcnF1ZU5ld3Rvbk1ldGVycxgDIAEoAVISdG9ycXVlTmV3dG9uTWV0ZXJz');

@$core.Deprecated('Use traveledDistanceGranularDataProtoDescriptor instead')
const TraveledDistanceGranularDataProto$json = {
  '1': 'TraveledDistanceGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {
      '1': 'traveledDistanceMeters',
      '3': 3,
      '4': 1,
      '5': 1,
      '10': 'traveledDistanceMeters'
    },
  ],
};

/// Descriptor for `TraveledDistanceGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List traveledDistanceGranularDataProtoDescriptor =
    $convert.base64Decode(
        'CiFUcmF2ZWxlZERpc3RhbmNlR3JhbnVsYXJEYXRhUHJvdG8SGgoIZGF0ZVRpbWUYASABKAlSCG'
        'RhdGVUaW1lEjgKF2ludGVydmFsRHVyYXRpb25TZWNvbmRzGAIgASgRUhdpbnRlcnZhbER1cmF0'
        'aW9uU2Vjb25kcxI2ChZ0cmF2ZWxlZERpc3RhbmNlTWV0ZXJzGAMgASgBUhZ0cmF2ZWxlZERpc3'
        'RhbmNlTWV0ZXJz');

@$core.Deprecated('Use tssGranularDataProtoDescriptor instead')
const TssGranularDataProto$json = {
  '1': 'TssGranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {
      '1': 'intervalDurationSeconds',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'intervalDurationSeconds'
    },
    {'1': 'tssScore', '3': 3, '4': 1, '5': 17, '10': 'tssScore'},
  ],
};

/// Descriptor for `TssGranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tssGranularDataProtoDescriptor = $convert.base64Decode(
    'ChRUc3NHcmFudWxhckRhdGFQcm90bxIaCghkYXRlVGltZRgBIAEoCVIIZGF0ZVRpbWUSOAoXaW'
    '50ZXJ2YWxEdXJhdGlvblNlY29uZHMYAiABKBFSF2ludGVydmFsRHVyYXRpb25TZWNvbmRzEhoK'
    'CHRzc1Njb3JlGAMgASgRUgh0c3NTY29yZQ==');

@$core.Deprecated('Use vo2GranularDataProtoDescriptor instead')
const Vo2GranularDataProto$json = {
  '1': 'Vo2GranularDataProto',
  '2': [
    {'1': 'dateTime', '3': 1, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'vo2MlPerMinPerKg', '3': 2, '4': 1, '5': 1, '10': 'vo2MlPerMinPerKg'},
  ],
};

/// Descriptor for `Vo2GranularDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vo2GranularDataProtoDescriptor = $convert.base64Decode(
    'ChRWbzJHcmFudWxhckRhdGFQcm90bxIaCghkYXRlVGltZRgBIAEoCVIIZGF0ZVRpbWUSKgoQdm'
    '8yTWxQZXJNaW5QZXJLZxgCIAEoAVIQdm8yTWxQZXJNaW5QZXJLZw==');

@$core.Deprecated('Use bloodPressureObjectProtoDescriptor instead')
const BloodPressureObjectProto$json = {
  '1': 'BloodPressureObjectProto',
  '2': [
    {'1': 'systolicMmHg', '3': 1, '4': 1, '5': 1, '10': 'systolicMmHg'},
    {'1': 'diastolicMmHg', '3': 2, '4': 1, '5': 1, '10': 'diastolicMmHg'},
  ],
};

/// Descriptor for `BloodPressureObjectProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bloodPressureObjectProtoDescriptor =
    $convert.base64Decode(
        'ChhCbG9vZFByZXNzdXJlT2JqZWN0UHJvdG8SIgoMc3lzdG9saWNNbUhnGAEgASgBUgxzeXN0b2'
        'xpY01tSGcSJAoNZGlhc3RvbGljTW1IZxgCIAEoAVINZGlhc3RvbGljTW1IZw==');

@$core.Deprecated('Use positionObjectProtoDescriptor instead')
const PositionObjectProto$json = {
  '1': 'PositionObjectProto',
  '2': [
    {'1': 'latDeg', '3': 1, '4': 1, '5': 1, '10': 'latDeg'},
    {'1': 'lngDeg', '3': 2, '4': 1, '5': 1, '10': 'lngDeg'},
  ],
};

/// Descriptor for `PositionObjectProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionObjectProtoDescriptor = $convert.base64Decode(
    'ChNQb3NpdGlvbk9iamVjdFByb3RvEhYKBmxhdERlZxgBIAEoAVIGbGF0RGVnEhYKBmxuZ0RlZx'
    'gCIAEoAVIGbG5nRGVn');

@$core.Deprecated('Use temperatureObjectProtoDescriptor instead')
const TemperatureObjectProto$json = {
  '1': 'TemperatureObjectProto',
  '2': [
    {
      '1': 'temperatureCelsius',
      '3': 1,
      '4': 1,
      '5': 1,
      '10': 'temperatureCelsius'
    },
    {'1': 'measurementType', '3': 2, '4': 1, '5': 9, '10': 'measurementType'},
  ],
};

/// Descriptor for `TemperatureObjectProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List temperatureObjectProtoDescriptor = $convert.base64Decode(
    'ChZUZW1wZXJhdHVyZU9iamVjdFByb3RvEi4KEnRlbXBlcmF0dXJlQ2Vsc2l1cxgBIAEoAVISdG'
    'VtcGVyYXR1cmVDZWxzaXVzEigKD21lYXN1cmVtZW50VHlwZRgCIAEoCVIPbWVhc3VyZW1lbnRU'
    'eXBl');

@$core.Deprecated('Use velocityObjectProtoDescriptor instead')
const VelocityObjectProto$json = {
  '1': 'VelocityObjectProto',
  '2': [
    {
      '1': 'speedMetersPerSecond',
      '3': 1,
      '4': 1,
      '5': 1,
      '10': 'speedMetersPerSecond'
    },
    {'1': 'direction', '3': 2, '4': 1, '5': 9, '10': 'direction'},
  ],
};

/// Descriptor for `VelocityObjectProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List velocityObjectProtoDescriptor = $convert.base64Decode(
    'ChNWZWxvY2l0eU9iamVjdFByb3RvEjIKFHNwZWVkTWV0ZXJzUGVyU2Vjb25kGAEgASgBUhRzcG'
    'VlZE1ldGVyc1BlclNlY29uZBIcCglkaXJlY3Rpb24YAiABKAlSCWRpcmVjdGlvbg==');
