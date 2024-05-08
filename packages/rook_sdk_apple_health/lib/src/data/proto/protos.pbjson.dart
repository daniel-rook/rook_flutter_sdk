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

@$core.Deprecated('Use rookConfigurationProtoDescriptor instead')
const RookConfigurationProto$json = {
  '1': 'RookConfigurationProto',
  '2': [
    {'1': 'clientUUID', '3': 1, '4': 1, '5': 9, '10': 'clientUUID'},
    {'1': 'secretKey', '3': 2, '4': 1, '5': 9, '10': 'secretKey'},
    {'1': 'environment', '3': 3, '4': 1, '5': 14, '6': '.RookEnvironmentProto', '10': 'environment'},
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

@$core.Deprecated('Use dataSourceProtoListWrapperDescriptor instead')
const DataSourceProtoListWrapper$json = {
  '1': 'DataSourceProtoListWrapper',
  '2': [
    {'1': 'dataSources', '3': 1, '4': 3, '5': 11, '6': '.DataSourceProto', '10': 'dataSources'},
  ],
};

/// Descriptor for `DataSourceProtoListWrapper`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataSourceProtoListWrapperDescriptor = $convert.base64Decode(
    'ChpEYXRhU291cmNlUHJvdG9MaXN0V3JhcHBlchIyCgtkYXRhU291cmNlcxgBIAMoCzIQLkRhdG'
    'FTb3VyY2VQcm90b1ILZGF0YVNvdXJjZXM=');

@$core.Deprecated('Use missingConfigurationExceptionProtoDescriptor instead')
const MissingConfigurationExceptionProto$json = {
  '1': 'MissingConfigurationExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `MissingConfigurationExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List missingConfigurationExceptionProtoDescriptor = $convert.base64Decode(
    'CiJNaXNzaW5nQ29uZmlndXJhdGlvbkV4Y2VwdGlvblByb3RvEhgKB21lc3NhZ2UYASABKAlSB2'
    '1lc3NhZ2U=');

@$core.Deprecated('Use genericExceptionProtoDescriptor instead')
const GenericExceptionProto$json = {
  '1': 'GenericExceptionProto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `GenericExceptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genericExceptionProtoDescriptor = $convert.base64Decode(
    'ChVHZW5lcmljRXhjZXB0aW9uUHJvdG8SGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use resultBooleanProtoDescriptor instead')
const ResultBooleanProto$json = {
  '1': 'ResultBooleanProto',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'success'},
    {'1': 'missingConfigurationExceptionProto', '3': 5, '4': 1, '5': 11, '6': '.MissingConfigurationExceptionProto', '9': 0, '10': 'missingConfigurationExceptionProto'},
    {'1': 'genericExceptionProto', '3': 11, '4': 1, '5': 11, '6': '.GenericExceptionProto', '9': 0, '10': 'genericExceptionProto'},
  ],
  '8': [
    {'1': 'result'},
  ],
  '9': [
    {'1': 2, '2': 3},
    {'1': 3, '2': 4},
    {'1': 4, '2': 5},
    {'1': 6, '2': 7},
    {'1': 7, '2': 8},
    {'1': 8, '2': 9},
    {'1': 9, '2': 10},
    {'1': 10, '2': 11},
    {'1': 12, '2': 13},
  ],
};

/// Descriptor for `ResultBooleanProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultBooleanProtoDescriptor = $convert.base64Decode(
    'ChJSZXN1bHRCb29sZWFuUHJvdG8SGgoHc3VjY2VzcxgBIAEoCEgAUgdzdWNjZXNzEnUKIm1pc3'
    'NpbmdDb25maWd1cmF0aW9uRXhjZXB0aW9uUHJvdG8YBSABKAsyIy5NaXNzaW5nQ29uZmlndXJh'
    'dGlvbkV4Y2VwdGlvblByb3RvSABSIm1pc3NpbmdDb25maWd1cmF0aW9uRXhjZXB0aW9uUHJvdG'
    '8STgoVZ2VuZXJpY0V4Y2VwdGlvblByb3RvGAsgASgLMhYuR2VuZXJpY0V4Y2VwdGlvblByb3Rv'
    'SABSFWdlbmVyaWNFeGNlcHRpb25Qcm90b0IICgZyZXN1bHRKBAgCEANKBAgDEARKBAgEEAVKBA'
    'gGEAdKBAgHEAhKBAgIEAlKBAgJEApKBAgKEAtKBAgMEA0=');

@$core.Deprecated('Use resultInt64ProtoDescriptor instead')
const ResultInt64Proto$json = {
  '1': 'ResultInt64Proto',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'value'},
    {'1': 'genericExceptionProto', '3': 11, '4': 1, '5': 11, '6': '.GenericExceptionProto', '9': 0, '10': 'genericExceptionProto'},
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
    {'1': 8, '2': 9},
    {'1': 9, '2': 10},
    {'1': 10, '2': 11},
    {'1': 12, '2': 13},
  ],
};

/// Descriptor for `ResultInt64Proto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultInt64ProtoDescriptor = $convert.base64Decode(
    'ChBSZXN1bHRJbnQ2NFByb3RvEhYKBXZhbHVlGAEgASgDSABSBXZhbHVlEk4KFWdlbmVyaWNFeG'
    'NlcHRpb25Qcm90bxgLIAEoCzIWLkdlbmVyaWNFeGNlcHRpb25Qcm90b0gAUhVnZW5lcmljRXhj'
    'ZXB0aW9uUHJvdG9CCAoGcmVzdWx0SgQIAhADSgQIAxAESgQIBBAFSgQIBRAGSgQIBhAHSgQIBx'
    'AISgQICBAJSgQICRAKSgQIChALSgQIDBAN');

@$core.Deprecated('Use resultDataSourceProtoDescriptor instead')
const ResultDataSourceProto$json = {
  '1': 'ResultDataSourceProto',
  '2': [
    {'1': 'dataSourceProtoListWrapper', '3': 1, '4': 1, '5': 11, '6': '.DataSourceProtoListWrapper', '9': 0, '10': 'dataSourceProtoListWrapper'},
    {'1': 'genericExceptionProto', '3': 11, '4': 1, '5': 11, '6': '.GenericExceptionProto', '9': 0, '10': 'genericExceptionProto'},
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
    {'1': 8, '2': 9},
    {'1': 9, '2': 10},
    {'1': 10, '2': 11},
    {'1': 12, '2': 13},
  ],
};

/// Descriptor for `ResultDataSourceProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDataSourceProtoDescriptor = $convert.base64Decode(
    'ChVSZXN1bHREYXRhU291cmNlUHJvdG8SXQoaZGF0YVNvdXJjZVByb3RvTGlzdFdyYXBwZXIYAS'
    'ABKAsyGy5EYXRhU291cmNlUHJvdG9MaXN0V3JhcHBlckgAUhpkYXRhU291cmNlUHJvdG9MaXN0'
    'V3JhcHBlchJOChVnZW5lcmljRXhjZXB0aW9uUHJvdG8YCyABKAsyFi5HZW5lcmljRXhjZXB0aW'
    '9uUHJvdG9IAFIVZ2VuZXJpY0V4Y2VwdGlvblByb3RvQggKBnJlc3VsdEoECAIQA0oECAMQBEoE'
    'CAQQBUoECAUQBkoECAYQB0oECAcQCEoECAgQCUoECAkQCkoECAoQC0oECAwQDQ==');

