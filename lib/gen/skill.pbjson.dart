///
//  Generated code. Do not modify.
//  source: skill.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use addSkillRequestDescriptor instead')
const AddSkillRequest$json = const {
  '1': 'AddSkillRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
  ],
};

/// Descriptor for `AddSkillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSkillRequestDescriptor = $convert.base64Decode('Cg9BZGRTa2lsbFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRkZXNjGAIgASgJUgRkZXNj');
@$core.Deprecated('Use addSkillReplyDescriptor instead')
const AddSkillReply$json = const {
  '1': 'AddSkillReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `AddSkillReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSkillReplyDescriptor = $convert.base64Decode('Cg1BZGRTa2lsbFJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
@$core.Deprecated('Use getSkillsRequestDescriptor instead')
const GetSkillsRequest$json = const {
  '1': 'GetSkillsRequest',
  '2': const [
    const {'1': 'userGuid', '3': 1, '4': 1, '5': 9, '10': 'userGuid'},
  ],
};

/// Descriptor for `GetSkillsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSkillsRequestDescriptor = $convert.base64Decode('ChBHZXRTa2lsbHNSZXF1ZXN0EhoKCHVzZXJHdWlkGAEgASgJUgh1c2VyR3VpZA==');
@$core.Deprecated('Use getSkillsReplyDescriptor instead')
const GetSkillsReply$json = const {
  '1': 'GetSkillsReply',
  '2': const [
    const {'1': 'names', '3': 1, '4': 3, '5': 9, '10': 'names'},
    const {'1': 'guids', '3': 2, '4': 3, '5': 9, '10': 'guids'},
    const {'1': 'desc', '3': 3, '4': 3, '5': 9, '10': 'desc'},
  ],
};

/// Descriptor for `GetSkillsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSkillsReplyDescriptor = $convert.base64Decode('Cg5HZXRTa2lsbHNSZXBseRIUCgVuYW1lcxgBIAMoCVIFbmFtZXMSFAoFZ3VpZHMYAiADKAlSBWd1aWRzEhIKBGRlc2MYAyADKAlSBGRlc2M=');
@$core.Deprecated('Use getSkillRequestDescriptor instead')
const GetSkillRequest$json = const {
  '1': 'GetSkillRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `GetSkillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSkillRequestDescriptor = $convert.base64Decode('Cg9HZXRTa2lsbFJlcXVlc3QSEgoEZ3VpZBgBIAEoCVIEZ3VpZA==');
@$core.Deprecated('Use getSkillReplyDescriptor instead')
const GetSkillReply$json = const {
  '1': 'GetSkillReply',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'guid', '3': 2, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `GetSkillReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSkillReplyDescriptor = $convert.base64Decode('Cg1HZXRTa2lsbFJlcGx5EhIKBG5hbWUYASABKAlSBG5hbWUSEgoEZ3VpZBgCIAEoCVIEZ3VpZA==');
@$core.Deprecated('Use updateSkillRequestDescriptor instead')
const UpdateSkillRequest$json = const {
  '1': 'UpdateSkillRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `UpdateSkillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSkillRequestDescriptor = $convert.base64Decode('ChJVcGRhdGVTa2lsbFJlcXVlc3QSEgoEZ3VpZBgBIAEoCVIEZ3VpZBISCgRuYW1lGAIgASgJUgRuYW1l');
@$core.Deprecated('Use updateSkillReplyDescriptor instead')
const UpdateSkillReply$json = const {
  '1': 'UpdateSkillReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `UpdateSkillReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSkillReplyDescriptor = $convert.base64Decode('ChBVcGRhdGVTa2lsbFJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
@$core.Deprecated('Use delSkillRequestDescriptor instead')
const DelSkillRequest$json = const {
  '1': 'DelSkillRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `DelSkillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delSkillRequestDescriptor = $convert.base64Decode('Cg9EZWxTa2lsbFJlcXVlc3QSEgoEZ3VpZBgBIAEoCVIEZ3VpZA==');
@$core.Deprecated('Use delSkillReplyDescriptor instead')
const DelSkillReply$json = const {
  '1': 'DelSkillReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `DelSkillReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delSkillReplyDescriptor = $convert.base64Decode('Cg1EZWxTa2lsbFJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
