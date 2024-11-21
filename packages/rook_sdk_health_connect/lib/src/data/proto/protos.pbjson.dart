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
final $typed_data.Uint8List availabilityStatusProtoDescriptor = $convert.base64Decode(
    'ChdBdmFpbGFiaWxpdHlTdGF0dXNQcm90bxINCglJTlNUQUxMRUQQABIRCg1OT1RfSU5TVEFMTE'
    'VEEAESEQoNTk9UX1NVUFBPUlRFRBAC');

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

@$core.Deprecated('Use dataSourceProtoDescriptor instead')
const DataSourceProto$json = {
  '1': 'DataSourceProto',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'connected', '3': 4, '4': 1, '5': 8, '10': 'connected'},
    {'1': 'authorizationUrl', '3': 5, '4': 1, '5': 9, '10': 'authorizationUrl'},
    {'1': 'authorizationUrlIsNull', '3': 6, '4': 1, '5': 8, '10': 'authorizationUrlIsNull'},
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
    {'1': 'dataSources', '3': 1, '4': 3, '5': 11, '6': '.DataSourceProto', '10': 'dataSources'},
  ],
};

/// Descriptor for `DataSourcesProtoListWrapper`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataSourcesProtoListWrapperDescriptor = $convert.base64Decode(
    'ChtEYXRhU291cmNlc1Byb3RvTGlzdFdyYXBwZXISMgoLZGF0YVNvdXJjZXMYASADKAsyEC5EYX'
    'RhU291cmNlUHJvdG9SC2RhdGFTb3VyY2Vz');

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

@$core.Deprecated('Use healthConnectPermissionsSummaryProtoDescriptor instead')
const HealthConnectPermissionsSummaryProto$json = {
  '1': 'HealthConnectPermissionsSummaryProto',
  '2': [
    {'1': 'dataTypesGranted', '3': 1, '4': 1, '5': 8, '10': 'dataTypesGranted'},
    {'1': 'dataTypesPartiallyGranted', '3': 2, '4': 1, '5': 8, '10': 'dataTypesPartiallyGranted'},
  ],
};

/// Descriptor for `HealthConnectPermissionsSummaryProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthConnectPermissionsSummaryProtoDescriptor = $convert.base64Decode(
    'CiRIZWFsdGhDb25uZWN0UGVybWlzc2lvbnNTdW1tYXJ5UHJvdG8SKgoQZGF0YVR5cGVzR3Jhbn'
    'RlZBgBIAEoCFIQZGF0YVR5cGVzR3JhbnRlZBI8ChlkYXRhVHlwZXNQYXJ0aWFsbHlHcmFudGVk'
    'GAIgASgIUhlkYXRhVHlwZXNQYXJ0aWFsbHlHcmFudGVk');

@$core.Deprecated('Use androidPermissionsSummaryProtoDescriptor instead')
const AndroidPermissionsSummaryProto$json = {
  '1': 'AndroidPermissionsSummaryProto',
  '2': [
    {'1': 'permissionsGranted', '3': 1, '4': 1, '5': 8, '10': 'permissionsGranted'},
    {'1': 'dialogDisplayed', '3': 2, '4': 1, '5': 8, '10': 'dialogDisplayed'},
  ],
};

/// Descriptor for `AndroidPermissionsSummaryProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List androidPermissionsSummaryProtoDescriptor = $convert.base64Decode(
    'Ch5BbmRyb2lkUGVybWlzc2lvbnNTdW1tYXJ5UHJvdG8SLgoScGVybWlzc2lvbnNHcmFudGVkGA'
    'EgASgIUhJwZXJtaXNzaW9uc0dyYW50ZWQSKAoPZGlhbG9nRGlzcGxheWVkGAIgASgIUg9kaWFs'
    'b2dEaXNwbGF5ZWQ=');

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

@$core.Deprecated('Use resultDataSourcesProtoDescriptor instead')
const ResultDataSourcesProto$json = {
  '1': 'ResultDataSourcesProto',
  '2': [
    {'1': 'dataSourcesProtoListWrapper', '3': 1, '4': 1, '5': 11, '6': '.DataSourcesProtoListWrapper', '9': 0, '10': 'dataSourcesProtoListWrapper'},
    {'1': 'pluginExceptionProto', '3': 2, '4': 1, '5': 11, '6': '.PluginExceptionProto', '9': 0, '10': 'pluginExceptionProto'},
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

