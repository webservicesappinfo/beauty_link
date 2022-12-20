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
    const {'1': 'company', '3': 1, '4': 1, '5': 11, '6': '.msg.CompanyReply', '10': 'company'},
  ],
};

/// Descriptor for `GetCompanyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCompanyReplyDescriptor = $convert.base64Decode('Cg9HZXRDb21wYW55UmVwbHkSKwoHY29tcGFueRgBIAEoCzIRLm1zZy5Db21wYW55UmVwbHlSB2NvbXBhbnk=');
@$core.Deprecated('Use getCompaniesRequestDescriptor instead')
const GetCompaniesRequest$json = const {
  '1': 'GetCompaniesRequest',
  '2': const [
    const {'1': 'userUIDFB', '3': 1, '4': 1, '5': 9, '10': 'userUIDFB'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `GetCompaniesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCompaniesRequestDescriptor = $convert.base64Decode('ChNHZXRDb21wYW5pZXNSZXF1ZXN0EhwKCXVzZXJVSURGQhgBIAEoCVIJdXNlclVJREZCEhIKBHR5cGUYAiABKAlSBHR5cGU=');
@$core.Deprecated('Use getCompaniesReplyDescriptor instead')
const GetCompaniesReply$json = const {
  '1': 'GetCompaniesReply',
  '2': const [
    const {'1': 'companies', '3': 1, '4': 3, '5': 11, '6': '.msg.CompanyReply', '10': 'companies'},
  ],
};

/// Descriptor for `GetCompaniesReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCompaniesReplyDescriptor = $convert.base64Decode('ChFHZXRDb21wYW5pZXNSZXBseRIvCgljb21wYW5pZXMYASADKAsyES5tc2cuQ29tcGFueVJlcGx5Ugljb21wYW5pZXM=');
@$core.Deprecated('Use joinToCompanyRequestDescriptor instead')
const JoinToCompanyRequest$json = const {
  '1': 'JoinToCompanyRequest',
  '2': const [
    const {'1': 'companyGuid', '3': 1, '4': 1, '5': 9, '10': 'companyGuid'},
    const {'1': 'companyName', '3': 2, '4': 1, '5': 9, '10': 'companyName'},
    const {'1': 'userUIDFB', '3': 3, '4': 1, '5': 9, '10': 'userUIDFB'},
    const {'1': 'userName', '3': 4, '4': 1, '5': 9, '10': 'userName'},
  ],
};

/// Descriptor for `JoinToCompanyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinToCompanyRequestDescriptor = $convert.base64Decode('ChRKb2luVG9Db21wYW55UmVxdWVzdBIgCgtjb21wYW55R3VpZBgBIAEoCVILY29tcGFueUd1aWQSIAoLY29tcGFueU5hbWUYAiABKAlSC2NvbXBhbnlOYW1lEhwKCXVzZXJVSURGQhgDIAEoCVIJdXNlclVJREZCEhoKCHVzZXJOYW1lGAQgASgJUgh1c2VyTmFtZQ==');
@$core.Deprecated('Use joinToCompanyReplyDescriptor instead')
const JoinToCompanyReply$json = const {
  '1': 'JoinToCompanyReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `JoinToCompanyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinToCompanyReplyDescriptor = $convert.base64Decode('ChJKb2luVG9Db21wYW55UmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
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
@$core.Deprecated('Use setCompanyLocationRequestDescriptor instead')
const SetCompanyLocationRequest$json = const {
  '1': 'SetCompanyLocationRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'lat', '3': 2, '4': 1, '5': 1, '10': 'lat'},
    const {'1': 'lng', '3': 3, '4': 1, '5': 1, '10': 'lng'},
  ],
};

/// Descriptor for `SetCompanyLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCompanyLocationRequestDescriptor = $convert.base64Decode('ChlTZXRDb21wYW55TG9jYXRpb25SZXF1ZXN0EhIKBGd1aWQYASABKAlSBGd1aWQSEAoDbGF0GAIgASgBUgNsYXQSEAoDbG5nGAMgASgBUgNsbmc=');
@$core.Deprecated('Use setCompanyLocationReplyDescriptor instead')
const SetCompanyLocationReply$json = const {
  '1': 'SetCompanyLocationReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `SetCompanyLocationReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCompanyLocationReplyDescriptor = $convert.base64Decode('ChdTZXRDb21wYW55TG9jYXRpb25SZXBseRIWCgZyZXN1bHQYASABKAhSBnJlc3VsdA==');
