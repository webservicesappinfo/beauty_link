///
//  Generated code. Do not modify.
//  source: company.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getCompanyRequestDescriptor instead')
const GetCompanyRequest$json = const {
  '1': 'GetCompanyRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `GetCompanyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCompanyRequestDescriptor = $convert.base64Decode('ChFHZXRDb21wYW55UmVxdWVzdBISCgRndWlkGAEgASgJUgRndWlk');
@$core.Deprecated('Use getCompanyReplyDescriptor instead')
const GetCompanyReply$json = const {
  '1': 'GetCompanyReply',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'guid', '3': 2, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `GetCompanyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCompanyReplyDescriptor = $convert.base64Decode('Cg9HZXRDb21wYW55UmVwbHkSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRndWlkGAIgASgJUgRndWlk');
@$core.Deprecated('Use getCompaniesRequestDescriptor instead')
const GetCompaniesRequest$json = const {
  '1': 'GetCompaniesRequest',
  '2': const [
    const {'1': 'userGuid', '3': 1, '4': 1, '5': 9, '10': 'userGuid'},
    const {'1': 'owner', '3': 2, '4': 1, '5': 8, '10': 'owner'},
  ],
};

/// Descriptor for `GetCompaniesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCompaniesRequestDescriptor = $convert.base64Decode('ChNHZXRDb21wYW5pZXNSZXF1ZXN0EhoKCHVzZXJHdWlkGAEgASgJUgh1c2VyR3VpZBIUCgVvd25lchgCIAEoCFIFb3duZXI=');
@$core.Deprecated('Use getCompaniesReplyDescriptor instead')
const GetCompaniesReply$json = const {
  '1': 'GetCompaniesReply',
  '2': const [
    const {'1': 'names', '3': 1, '4': 3, '5': 9, '10': 'names'},
  ],
};

/// Descriptor for `GetCompaniesReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCompaniesReplyDescriptor = $convert.base64Decode('ChFHZXRDb21wYW5pZXNSZXBseRIUCgVuYW1lcxgBIAMoCVIFbmFtZXM=');
@$core.Deprecated('Use addCompanyRequestDescriptor instead')
const AddCompanyRequest$json = const {
  '1': 'AddCompanyRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'userGuid', '3': 2, '4': 1, '5': 9, '10': 'userGuid'},
  ],
};

/// Descriptor for `AddCompanyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCompanyRequestDescriptor = $convert.base64Decode('ChFBZGRDb21wYW55UmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhoKCHVzZXJHdWlkGAIgASgJUgh1c2VyR3VpZA==');
@$core.Deprecated('Use addCompanyReplyDescriptor instead')
const AddCompanyReply$json = const {
  '1': 'AddCompanyReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `AddCompanyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCompanyReplyDescriptor = $convert.base64Decode('Cg9BZGRDb21wYW55UmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
@$core.Deprecated('Use updateCompanyRequestDescriptor instead')
const UpdateCompanyRequest$json = const {
  '1': 'UpdateCompanyRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `UpdateCompanyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCompanyRequestDescriptor = $convert.base64Decode('ChRVcGRhdGVDb21wYW55UmVxdWVzdBISCgRndWlkGAEgASgJUgRndWlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFdG9rZW4YAyABKAlSBXRva2Vu');
@$core.Deprecated('Use updateCompanyReplyDescriptor instead')
const UpdateCompanyReply$json = const {
  '1': 'UpdateCompanyReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `UpdateCompanyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCompanyReplyDescriptor = $convert.base64Decode('ChJVcGRhdGVDb21wYW55UmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
@$core.Deprecated('Use removeCompanyRequestDescriptor instead')
const RemoveCompanyRequest$json = const {
  '1': 'RemoveCompanyRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `RemoveCompanyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeCompanyRequestDescriptor = $convert.base64Decode('ChRSZW1vdmVDb21wYW55UmVxdWVzdBISCgRndWlkGAEgASgJUgRndWlk');
@$core.Deprecated('Use removeCompanyReplyDescriptor instead')
const RemoveCompanyReply$json = const {
  '1': 'RemoveCompanyReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `RemoveCompanyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeCompanyReplyDescriptor = $convert.base64Decode('ChJSZW1vdmVDb21wYW55UmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
