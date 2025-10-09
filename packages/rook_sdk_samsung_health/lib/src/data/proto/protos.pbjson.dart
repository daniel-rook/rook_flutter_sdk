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

@$core.Deprecated('Use samsungHealthAvailabilityProtoDescriptor instead')
const SamsungHealthAvailabilityProto$json = {
  '1': 'SamsungHealthAvailabilityProto',
  '2': [
    {'1': 'INSTALLED', '2': 0},
    {'1': 'NOT_INSTALLED', '2': 1},
    {'1': 'OUTDATED', '2': 2},
    {'1': 'DISABLED', '2': 3},
    {'1': 'NOT_READY', '2': 4},
  ],
};

/// Descriptor for `SamsungHealthAvailabilityProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List samsungHealthAvailabilityProtoDescriptor = $convert.base64Decode(
    'Ch5TYW1zdW5nSGVhbHRoQXZhaWxhYmlsaXR5UHJvdG8SDQoJSU5TVEFMTEVEEAASEQoNTk9UX0'
    'lOU1RBTExFRBABEgwKCE9VVERBVEVEEAISDAoIRElTQUJMRUQQAxINCglOT1RfUkVBRFkQBA==');

@$core.Deprecated('Use requestPermissionsStatusProtoDescriptor instead')
const RequestPermissionsStatusProto$json = {
  '1': 'RequestPermissionsStatusProto',
  '2': [
    {'1': 'REQUEST_SENT', '2': 0},
    {'1': 'ALREADY_GRANTED', '2': 1},
  ],
};

/// Descriptor for `RequestPermissionsStatusProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List requestPermissionsStatusProtoDescriptor = $convert.base64Decode(
    'Ch1SZXF1ZXN0UGVybWlzc2lvbnNTdGF0dXNQcm90bxIQCgxSRVFVRVNUX1NFTlQQABITCg9BTF'
    'JFQURZX0dSQU5URUQQAQ==');

@$core.Deprecated('Use samsungHealthPermissionProtoDescriptor instead')
const SamsungHealthPermissionProto$json = {
  '1': 'SamsungHealthPermissionProto',
  '2': [
    {'1': 'ACTIVITY_SUMMARY_PERMISSION', '2': 0},
    {'1': 'BLOOD_GLUCOSE_PERMISSION', '2': 1},
    {'1': 'BLOOD_OXYGEN_PERMISSION', '2': 2},
    {'1': 'BLOOD_PRESSURE_PERMISSION', '2': 3},
    {'1': 'BODY_COMPOSITION_PERMISSION', '2': 4},
    {'1': 'EXERCISE_PERMISSION', '2': 5},
    {'1': 'EXERCISE_LOCATION_PERMISSION', '2': 6},
    {'1': 'FLOORS_CLIMBED_PERMISSION', '2': 7},
    {'1': 'HEART_RATE_PERMISSION', '2': 8},
    {'1': 'NUTRITION_PERMISSION', '2': 9},
    {'1': 'SLEEP_PERMISSION', '2': 10},
    {'1': 'STEPS_PERMISSION', '2': 11},
    {'1': 'WATER_INTAKE_PERMISSION', '2': 12},
  ],
};

/// Descriptor for `SamsungHealthPermissionProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List samsungHealthPermissionProtoDescriptor = $convert.base64Decode(
    'ChxTYW1zdW5nSGVhbHRoUGVybWlzc2lvblByb3RvEh8KG0FDVElWSVRZX1NVTU1BUllfUEVSTU'
    'lTU0lPThAAEhwKGEJMT09EX0dMVUNPU0VfUEVSTUlTU0lPThABEhsKF0JMT09EX09YWUdFTl9Q'
    'RVJNSVNTSU9OEAISHQoZQkxPT0RfUFJFU1NVUkVfUEVSTUlTU0lPThADEh8KG0JPRFlfQ09NUE'
    '9TSVRJT05fUEVSTUlTU0lPThAEEhcKE0VYRVJDSVNFX1BFUk1JU1NJT04QBRIgChxFWEVSQ0lT'
    'RV9MT0NBVElPTl9QRVJNSVNTSU9OEAYSHQoZRkxPT1JTX0NMSU1CRURfUEVSTUlTU0lPThAHEh'
    'kKFUhFQVJUX1JBVEVfUEVSTUlTU0lPThAIEhgKFE5VVFJJVElPTl9QRVJNSVNTSU9OEAkSFAoQ'
    'U0xFRVBfUEVSTUlTU0lPThAKEhQKEFNURVBTX1BFUk1JU1NJT04QCxIbChdXQVRFUl9JTlRBS0'
    'VfUEVSTUlTU0lPThAM');

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
    {'1': 'STEPS', '2': 8},
    {'1': 'CALORIES', '2': 9},
  ],
};

/// Descriptor for `EventSyncTypeProto`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eventSyncTypeProtoDescriptor = $convert.base64Decode(
    'ChJFdmVudFN5bmNUeXBlUHJvdG8SDAoIQUNUSVZJVFkQABIRCg1CTE9PRF9HTFVDT1NFEAESEg'
    'oOQkxPT0RfUFJFU1NVUkUQAhIQCgxCT0RZX01FVFJJQ1MQAxIOCgpIRUFSVF9SQVRFEAQSDQoJ'
    'SFlEUkFUSU9OEAUSDQoJTlVUUklUSU9OEAYSDwoLT1hZR0VOQVRJT04QBxIJCgVTVEVQUxAIEg'
    'wKCENBTE9SSUVTEAk=');

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

@$core.Deprecated('Use booleanResultProtoDescriptor instead')
const BooleanResultProto$json = {
  '1': 'BooleanResultProto',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'success'},
    {'1': 'failure', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'failure'},
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `BooleanResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List booleanResultProtoDescriptor = $convert.base64Decode(
    'ChJCb29sZWFuUmVzdWx0UHJvdG8SGgoHc3VjY2VzcxgBIAEoCEgAUgdzdWNjZXNzEjEKB2ZhaW'
    'x1cmUYAiABKAsyFS5QbHVnaW5FeGNlcHRpb25Qcm90b0gAUgdmYWlsdXJlQggKBnJlc3VsdA==');

@$core.Deprecated('Use int64ResultProtoDescriptor instead')
const Int64ResultProto$json = {
  '1': 'Int64ResultProto',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'success'},
    {'1': 'failure', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'failure'},
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `Int64ResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int64ResultProtoDescriptor = $convert.base64Decode(
    'ChBJbnQ2NFJlc3VsdFByb3RvEhoKB3N1Y2Nlc3MYASABKANIAFIHc3VjY2VzcxIxCgdmYWlsdX'
    'JlGAIgASgLMhUuUGx1Z2luRXhjZXB0aW9uUHJvdG9IAFIHZmFpbHVyZUIICgZyZXN1bHQ=');

@$core.Deprecated('Use configurationProtoDescriptor instead')
const ConfigurationProto$json = {
  '1': 'ConfigurationProto',
  '2': [
    {'1': 'clientUUID', '3': 1, '4': 1, '5': 9, '10': 'clientUUID'},
    {'1': 'secretKey', '3': 2, '4': 1, '5': 9, '10': 'secretKey'},
    {'1': 'environment', '3': 3, '4': 1, '5': 14, '6': '.EnvironmentProto', '10': 'environment'},
    {'1': 'enableBackgroundSync', '3': 4, '4': 1, '5': 8, '10': 'enableBackgroundSync'},
  ],
};

/// Descriptor for `ConfigurationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configurationProtoDescriptor = $convert.base64Decode(
    'ChJDb25maWd1cmF0aW9uUHJvdG8SHgoKY2xpZW50VVVJRBgBIAEoCVIKY2xpZW50VVVJRBIcCg'
    'lzZWNyZXRLZXkYAiABKAlSCXNlY3JldEtleRIzCgtlbnZpcm9ubWVudBgDIAEoDjIRLkVudmly'
    'b25tZW50UHJvdG9SC2Vudmlyb25tZW50EjIKFGVuYWJsZUJhY2tncm91bmRTeW5jGAQgASgIUh'
    'RlbmFibGVCYWNrZ3JvdW5kU3luYw==');

@$core.Deprecated('Use requestPermissionsStatusResultProtoDescriptor instead')
const RequestPermissionsStatusResultProto$json = {
  '1': 'RequestPermissionsStatusResultProto',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 14, '6': '.RequestPermissionsStatusProto', '9': 0, '10': 'success'},
    {'1': 'failure', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'failure'},
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `RequestPermissionsStatusResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestPermissionsStatusResultProtoDescriptor = $convert.base64Decode(
    'CiNSZXF1ZXN0UGVybWlzc2lvbnNTdGF0dXNSZXN1bHRQcm90bxI6CgdzdWNjZXNzGAEgASgOMh'
    '4uUmVxdWVzdFBlcm1pc3Npb25zU3RhdHVzUHJvdG9IAFIHc3VjY2VzcxIxCgdmYWlsdXJlGAIg'
    'ASgLMhUuUGx1Z2luRXhjZXB0aW9uUHJvdG9IAFIHZmFpbHVyZUIICgZyZXN1bHQ=');

@$core.Deprecated('Use samsungHealthPermissionsSummaryProtoDescriptor instead')
const SamsungHealthPermissionsSummaryProto$json = {
  '1': 'SamsungHealthPermissionsSummaryProto',
  '2': [
    {'1': 'dataTypesGranted', '3': 1, '4': 1, '5': 8, '10': 'dataTypesGranted'},
    {'1': 'dataTypesPartiallyGranted', '3': 2, '4': 1, '5': 8, '10': 'dataTypesPartiallyGranted'},
  ],
};

/// Descriptor for `SamsungHealthPermissionsSummaryProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List samsungHealthPermissionsSummaryProtoDescriptor = $convert.base64Decode(
    'CiRTYW1zdW5nSGVhbHRoUGVybWlzc2lvbnNTdW1tYXJ5UHJvdG8SKgoQZGF0YVR5cGVzR3Jhbn'
    'RlZBgBIAEoCFIQZGF0YVR5cGVzR3JhbnRlZBI8ChlkYXRhVHlwZXNQYXJ0aWFsbHlHcmFudGVk'
    'GAIgASgIUhlkYXRhVHlwZXNQYXJ0aWFsbHlHcmFudGVk');

@$core.Deprecated('Use syncStatusResultProtoDescriptor instead')
const SyncStatusResultProto$json = {
  '1': 'SyncStatusResultProto',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 14, '6': '.SyncStatusProto', '9': 0, '10': 'success'},
    {'1': 'failure', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'failure'},
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `SyncStatusResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncStatusResultProtoDescriptor = $convert.base64Decode(
    'ChVTeW5jU3RhdHVzUmVzdWx0UHJvdG8SLAoHc3VjY2VzcxgBIAEoDjIQLlN5bmNTdGF0dXNQcm'
    '90b0gAUgdzdWNjZXNzEjEKB2ZhaWx1cmUYAiABKAsyFS5QbHVnaW5FeGNlcHRpb25Qcm90b0gA'
    'UgdmYWlsdXJlQggKBnJlc3VsdA==');

@$core.Deprecated('Use syncStatusWithIntProtoDescriptor instead')
const SyncStatusWithIntProto$json = {
  '1': 'SyncStatusWithIntProto',
  '2': [
    {'1': 'syncStatus', '3': 1, '4': 1, '5': 14, '6': '.SyncStatusProto', '10': 'syncStatus'},
    {'1': 'value', '3': 2, '4': 1, '5': 13, '10': 'value'},
  ],
};

/// Descriptor for `SyncStatusWithIntProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncStatusWithIntProtoDescriptor = $convert.base64Decode(
    'ChZTeW5jU3RhdHVzV2l0aEludFByb3RvEjAKCnN5bmNTdGF0dXMYASABKA4yEC5TeW5jU3RhdH'
    'VzUHJvdG9SCnN5bmNTdGF0dXMSFAoFdmFsdWUYAiABKA1SBXZhbHVl');

@$core.Deprecated('Use syncStatusWithIntResultProtoDescriptor instead')
const SyncStatusWithIntResultProto$json = {
  '1': 'SyncStatusWithIntResultProto',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 11, '6': '.SyncStatusWithIntProto', '9': 0, '10': 'success'},
    {'1': 'failure', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'failure'},
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `SyncStatusWithIntResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncStatusWithIntResultProtoDescriptor = $convert.base64Decode(
    'ChxTeW5jU3RhdHVzV2l0aEludFJlc3VsdFByb3RvEjMKB3N1Y2Nlc3MYASABKAsyFy5TeW5jU3'
    'RhdHVzV2l0aEludFByb3RvSABSB3N1Y2Nlc3MSMQoHZmFpbHVyZRgCIAEoCzIVLlBsdWdpbkV4'
    'Y2VwdGlvblByb3RvSABSB2ZhaWx1cmVCCAoGcmVzdWx0');

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

@$core.Deprecated('Use syncStatusWithCaloriesProtoDescriptor instead')
const SyncStatusWithCaloriesProto$json = {
  '1': 'SyncStatusWithCaloriesProto',
  '2': [
    {'1': 'syncStatus', '3': 1, '4': 1, '5': 14, '6': '.SyncStatusProto', '10': 'syncStatus'},
    {'1': 'calories', '3': 2, '4': 1, '5': 11, '6': '.CaloriesProto', '10': 'calories'},
  ],
};

/// Descriptor for `SyncStatusWithCaloriesProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncStatusWithCaloriesProtoDescriptor = $convert.base64Decode(
    'ChtTeW5jU3RhdHVzV2l0aENhbG9yaWVzUHJvdG8SMAoKc3luY1N0YXR1cxgBIAEoDjIQLlN5bm'
    'NTdGF0dXNQcm90b1IKc3luY1N0YXR1cxIqCghjYWxvcmllcxgCIAEoCzIOLkNhbG9yaWVzUHJv'
    'dG9SCGNhbG9yaWVz');

@$core.Deprecated('Use syncStatusWithCaloriesResultProtoDescriptor instead')
const SyncStatusWithCaloriesResultProto$json = {
  '1': 'SyncStatusWithCaloriesResultProto',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 11, '6': '.SyncStatusWithCaloriesProto', '9': 0, '10': 'success'},
    {'1': 'failure', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'failure'},
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `SyncStatusWithCaloriesResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncStatusWithCaloriesResultProtoDescriptor = $convert.base64Decode(
    'CiFTeW5jU3RhdHVzV2l0aENhbG9yaWVzUmVzdWx0UHJvdG8SOAoHc3VjY2VzcxgBIAEoCzIcLl'
    'N5bmNTdGF0dXNXaXRoQ2Fsb3JpZXNQcm90b0gAUgdzdWNjZXNzEjEKB2ZhaWx1cmUYAiABKAsy'
    'FS5QbHVnaW5FeGNlcHRpb25Qcm90b0gAUgdmYWlsdXJlQggKBnJlc3VsdA==');

