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
final $typed_data.Uint8List rookEnvironmentProtoDescriptor = $convert.base64Decode(
    'ChRSb29rRW52aXJvbm1lbnRQcm90bxILCgdTQU5EQk9YEAASDgoKUFJPRFVDVElPThAB');

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

@$core.Deprecated('Use rookConfigurationProtoDescriptor instead')
const RookConfigurationProto$json = {
  '1': 'RookConfigurationProto',
  '2': [
    {'1': 'clientUUID', '3': 1, '4': 1, '5': 9, '10': 'clientUUID'},
    {'1': 'secretKey', '3': 2, '4': 1, '5': 9, '10': 'secretKey'},
    {'1': 'environment', '3': 3, '4': 1, '5': 14, '6': '.RookEnvironmentProto', '10': 'environment'},
    {'1': 'enableBackgroundSync', '3': 4, '4': 1, '5': 8, '10': 'enableBackgroundSync'},
  ],
};

/// Descriptor for `RookConfigurationProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rookConfigurationProtoDescriptor = $convert.base64Decode(
    'ChZSb29rQ29uZmlndXJhdGlvblByb3RvEh4KCmNsaWVudFVVSUQYASABKAlSCmNsaWVudFVVSU'
    'QSHAoJc2VjcmV0S2V5GAIgASgJUglzZWNyZXRLZXkSNwoLZW52aXJvbm1lbnQYAyABKA4yFS5S'
    'b29rRW52aXJvbm1lbnRQcm90b1ILZW52aXJvbm1lbnQSMgoUZW5hYmxlQmFja2dyb3VuZFN5bm'
    'MYBCABKAhSFGVuYWJsZUJhY2tncm91bmRTeW5j');

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

@$core.Deprecated('Use syncStatusWithIntProtoDescriptor instead')
const SyncStatusWithIntProto$json = {
  '1': 'SyncStatusWithIntProto',
  '2': [
    {'1': 'syncStatus', '3': 1, '4': 1, '5': 14, '6': '.SyncStatusProto', '10': 'syncStatus'},
    {'1': 'steps', '3': 2, '4': 1, '5': 13, '10': 'steps'},
  ],
};

/// Descriptor for `SyncStatusWithIntProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncStatusWithIntProtoDescriptor = $convert.base64Decode(
    'ChZTeW5jU3RhdHVzV2l0aEludFByb3RvEjAKCnN5bmNTdGF0dXMYASABKA4yEC5TeW5jU3RhdH'
    'VzUHJvdG9SCnN5bmNTdGF0dXMSFAoFc3RlcHMYAiABKA1SBXN0ZXBz');

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

@$core.Deprecated('Use syncStatusWithDailyCaloriesProtoDescriptor instead')
const SyncStatusWithDailyCaloriesProto$json = {
  '1': 'SyncStatusWithDailyCaloriesProto',
  '2': [
    {'1': 'syncStatus', '3': 1, '4': 1, '5': 14, '6': '.SyncStatusProto', '10': 'syncStatus'},
    {'1': 'dailyCalories', '3': 2, '4': 1, '5': 11, '6': '.DailyCaloriesProto', '10': 'dailyCalories'},
  ],
};

/// Descriptor for `SyncStatusWithDailyCaloriesProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncStatusWithDailyCaloriesProtoDescriptor = $convert.base64Decode(
    'CiBTeW5jU3RhdHVzV2l0aERhaWx5Q2Fsb3JpZXNQcm90bxIwCgpzeW5jU3RhdHVzGAEgASgOMh'
    'AuU3luY1N0YXR1c1Byb3RvUgpzeW5jU3RhdHVzEjkKDWRhaWx5Q2Fsb3JpZXMYAiABKAsyEy5E'
    'YWlseUNhbG9yaWVzUHJvdG9SDWRhaWx5Q2Fsb3JpZXM=');

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
    {'1': 'pluginExceptionProto', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'pluginExceptionProto'},
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
    {'1': 'pluginExceptionProto', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'pluginExceptionProto'},
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

@$core.Deprecated('Use resultRequestPermissionsStatusProtoDescriptor instead')
const ResultRequestPermissionsStatusProto$json = {
  '1': 'ResultRequestPermissionsStatusProto',
  '2': [
    {'1': 'requestPermissionsStatusProto', '3': 1, '4': 1, '5': 14, '6': '.RequestPermissionsStatusProto', '9': 0, '10': 'requestPermissionsStatusProto'},
    {'1': 'pluginExceptionProto', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'pluginExceptionProto'},
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `ResultRequestPermissionsStatusProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultRequestPermissionsStatusProtoDescriptor = $convert.base64Decode(
    'CiNSZXN1bHRSZXF1ZXN0UGVybWlzc2lvbnNTdGF0dXNQcm90bxJmCh1yZXF1ZXN0UGVybWlzc2'
    'lvbnNTdGF0dXNQcm90bxgBIAEoDjIeLlJlcXVlc3RQZXJtaXNzaW9uc1N0YXR1c1Byb3RvSABS'
    'HXJlcXVlc3RQZXJtaXNzaW9uc1N0YXR1c1Byb3RvEksKFHBsdWdpbkV4Y2VwdGlvblByb3RvGA'
    'IgASgLMhUuUGx1Z2luRXhjZXB0aW9uUHJvdG9IAFIUcGx1Z2luRXhjZXB0aW9uUHJvdG9CCAoG'
    'cmVzdWx0');

@$core.Deprecated('Use resultSyncStatusProtoDescriptor instead')
const ResultSyncStatusProto$json = {
  '1': 'ResultSyncStatusProto',
  '2': [
    {'1': 'syncStatusProto', '3': 1, '4': 1, '5': 14, '6': '.SyncStatusProto', '9': 0, '10': 'syncStatusProto'},
    {'1': 'pluginExceptionProto', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'pluginExceptionProto'},
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `ResultSyncStatusProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultSyncStatusProtoDescriptor = $convert.base64Decode(
    'ChVSZXN1bHRTeW5jU3RhdHVzUHJvdG8SPAoPc3luY1N0YXR1c1Byb3RvGAEgASgOMhAuU3luY1'
    'N0YXR1c1Byb3RvSABSD3N5bmNTdGF0dXNQcm90bxJLChRwbHVnaW5FeGNlcHRpb25Qcm90bxgC'
    'IAEoCzIVLlBsdWdpbkV4Y2VwdGlvblByb3RvSABSFHBsdWdpbkV4Y2VwdGlvblByb3RvQggKBn'
    'Jlc3VsdA==');

@$core.Deprecated('Use resultSyncStatusWithIntProtoDescriptor instead')
const ResultSyncStatusWithIntProto$json = {
  '1': 'ResultSyncStatusWithIntProto',
  '2': [
    {'1': 'syncStatusWithIntProto', '3': 1, '4': 1, '5': 11, '6': '.SyncStatusWithIntProto', '9': 0, '10': 'syncStatusWithIntProto'},
    {'1': 'pluginExceptionProto', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'pluginExceptionProto'},
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `ResultSyncStatusWithIntProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultSyncStatusWithIntProtoDescriptor = $convert.base64Decode(
    'ChxSZXN1bHRTeW5jU3RhdHVzV2l0aEludFByb3RvElEKFnN5bmNTdGF0dXNXaXRoSW50UHJvdG'
    '8YASABKAsyFy5TeW5jU3RhdHVzV2l0aEludFByb3RvSABSFnN5bmNTdGF0dXNXaXRoSW50UHJv'
    'dG8SSwoUcGx1Z2luRXhjZXB0aW9uUHJvdG8YAiABKAsyFS5QbHVnaW5FeGNlcHRpb25Qcm90b0'
    'gAUhRwbHVnaW5FeGNlcHRpb25Qcm90b0IICgZyZXN1bHQ=');

@$core.Deprecated('Use resultSyncStatusWithDailyCaloriesProtoDescriptor instead')
const ResultSyncStatusWithDailyCaloriesProto$json = {
  '1': 'ResultSyncStatusWithDailyCaloriesProto',
  '2': [
    {'1': 'syncStatusWithDailyCaloriesProto', '3': 1, '4': 1, '5': 11, '6': '.SyncStatusWithDailyCaloriesProto', '9': 0, '10': 'syncStatusWithDailyCaloriesProto'},
    {'1': 'pluginExceptionProto', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'pluginExceptionProto'},
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `ResultSyncStatusWithDailyCaloriesProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultSyncStatusWithDailyCaloriesProtoDescriptor = $convert.base64Decode(
    'CiZSZXN1bHRTeW5jU3RhdHVzV2l0aERhaWx5Q2Fsb3JpZXNQcm90bxJvCiBzeW5jU3RhdHVzV2'
    'l0aERhaWx5Q2Fsb3JpZXNQcm90bxgBIAEoCzIhLlN5bmNTdGF0dXNXaXRoRGFpbHlDYWxvcmll'
    'c1Byb3RvSABSIHN5bmNTdGF0dXNXaXRoRGFpbHlDYWxvcmllc1Byb3RvEksKFHBsdWdpbkV4Y2'
    'VwdGlvblByb3RvGAIgASgLMhUuUGx1Z2luRXhjZXB0aW9uUHJvdG9IAFIUcGx1Z2luRXhjZXB0'
    'aW9uUHJvdG9CCAoGcmVzdWx0');

