///
//  Generated code. Do not modify.
//  source: msg.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use companyReplyDescriptor instead')
const CompanyReply$json = const {
  '1': 'CompanyReply',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'guid', '3': 2, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'ownerGuid', '3': 3, '4': 1, '5': 9, '10': 'ownerGuid'},
    const {'1': 'ownerName', '3': 4, '4': 1, '5': 9, '10': 'ownerName'},
    const {'1': 'lat', '3': 5, '4': 1, '5': 9, '10': 'lat'},
    const {'1': 'lng', '3': 6, '4': 1, '5': 9, '10': 'lng'},
    const {'1': 'masterGuids', '3': 7, '4': 3, '5': 9, '10': 'masterGuids'},
    const {'1': 'masterNames', '3': 8, '4': 3, '5': 9, '10': 'masterNames'},
  ],
};

/// Descriptor for `CompanyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List companyReplyDescriptor = $convert.base64Decode('CgxDb21wYW55UmVwbHkSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRndWlkGAIgASgJUgRndWlkEhwKCW93bmVyR3VpZBgDIAEoCVIJb3duZXJHdWlkEhwKCW93bmVyTmFtZRgEIAEoCVIJb3duZXJOYW1lEhAKA2xhdBgFIAEoCVIDbGF0EhAKA2xuZxgGIAEoCVIDbG5nEiAKC21hc3Rlckd1aWRzGAcgAygJUgttYXN0ZXJHdWlkcxIgCgttYXN0ZXJOYW1lcxgIIAMoCVILbWFzdGVyTmFtZXM=');
@$core.Deprecated('Use addCompanyRequestDescriptor instead')
const AddCompanyRequest$json = const {
  '1': 'AddCompanyRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'ownerGuid', '3': 2, '4': 1, '5': 9, '10': 'ownerGuid'},
    const {'1': 'ownerName', '3': 3, '4': 1, '5': 9, '10': 'ownerName'},
  ],
};

/// Descriptor for `AddCompanyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCompanyRequestDescriptor = $convert.base64Decode('ChFBZGRDb21wYW55UmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhwKCW93bmVyR3VpZBgCIAEoCVIJb3duZXJHdWlkEhwKCW93bmVyTmFtZRgDIAEoCVIJb3duZXJOYW1l');
@$core.Deprecated('Use addCompanyReplyDescriptor instead')
const AddCompanyReply$json = const {
  '1': 'AddCompanyReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `AddCompanyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCompanyReplyDescriptor = $convert.base64Decode('Cg9BZGRDb21wYW55UmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
@$core.Deprecated('Use delCompanyRequestDescriptor instead')
const DelCompanyRequest$json = const {
  '1': 'DelCompanyRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `DelCompanyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delCompanyRequestDescriptor = $convert.base64Decode('ChFEZWxDb21wYW55UmVxdWVzdBISCgRndWlkGAEgASgJUgRndWlk');
@$core.Deprecated('Use delCompanyReplyDescriptor instead')
const DelCompanyReply$json = const {
  '1': 'DelCompanyReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `DelCompanyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delCompanyReplyDescriptor = $convert.base64Decode('Cg9EZWxDb21wYW55UmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
