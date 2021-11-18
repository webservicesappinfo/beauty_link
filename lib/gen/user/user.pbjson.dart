///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getUserRequestDescriptor instead')
const GetUserRequest$json = const {
  '1': 'GetUserRequest',
  '2': const [
    const {'1': 'uidFB', '3': 1, '4': 1, '5': 9, '10': 'uidFB'},
  ],
};

/// Descriptor for `GetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRequestDescriptor = $convert.base64Decode('Cg5HZXRVc2VyUmVxdWVzdBIUCgV1aWRGQhgBIAEoCVIFdWlkRkI=');
@$core.Deprecated('Use getUserReplyDescriptor instead')
const GetUserReply$json = const {
  '1': 'GetUserReply',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'uidFB', '3': 2, '4': 1, '5': 9, '10': 'uidFB'},
  ],
};

/// Descriptor for `GetUserReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserReplyDescriptor = $convert.base64Decode('CgxHZXRVc2VyUmVwbHkSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgV1aWRGQhgCIAEoCVIFdWlkRkI=');
@$core.Deprecated('Use getUsersRequestDescriptor instead')
const GetUsersRequest$json = const {
  '1': 'GetUsersRequest',
  '2': const [
    const {'1': 'restriction', '3': 1, '4': 1, '5': 9, '10': 'restriction'},
  ],
};

/// Descriptor for `GetUsersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUsersRequestDescriptor = $convert.base64Decode('Cg9HZXRVc2Vyc1JlcXVlc3QSIAoLcmVzdHJpY3Rpb24YASABKAlSC3Jlc3RyaWN0aW9u');
@$core.Deprecated('Use getUsersReplyDescriptor instead')
const GetUsersReply$json = const {
  '1': 'GetUsersReply',
  '2': const [
    const {'1': 'names', '3': 1, '4': 3, '5': 9, '10': 'names'},
  ],
};

/// Descriptor for `GetUsersReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUsersReplyDescriptor = $convert.base64Decode('Cg1HZXRVc2Vyc1JlcGx5EhQKBW5hbWVzGAEgAygJUgVuYW1lcw==');
@$core.Deprecated('Use addUserRequestDescriptor instead')
const AddUserRequest$json = const {
  '1': 'AddUserRequest',
  '2': const [
    const {'1': 'uidFB', '3': 1, '4': 1, '5': 9, '10': 'uidFB'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `AddUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserRequestDescriptor = $convert.base64Decode('Cg5BZGRVc2VyUmVxdWVzdBIUCgV1aWRGQhgBIAEoCVIFdWlkRkISEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgV0b2tlbhgDIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use addUserReplyDescriptor instead')
const AddUserReply$json = const {
  '1': 'AddUserReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `AddUserReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserReplyDescriptor = $convert.base64Decode('CgxBZGRVc2VyUmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = const {
  '1': 'UpdateUserRequest',
  '2': const [
    const {'1': 'uidFB', '3': 1, '4': 1, '5': 9, '10': 'uidFB'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVVc2VyUmVxdWVzdBIUCgV1aWRGQhgBIAEoCVIFdWlkRkISEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgV0b2tlbhgDIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use updateUserReplyDescriptor instead')
const UpdateUserReply$json = const {
  '1': 'UpdateUserReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `UpdateUserReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserReplyDescriptor = $convert.base64Decode('Cg9VcGRhdGVVc2VyUmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
@$core.Deprecated('Use delUserRequestDescriptor instead')
const DelUserRequest$json = const {
  '1': 'DelUserRequest',
  '2': const [
    const {'1': 'uidFB', '3': 1, '4': 1, '5': 9, '10': 'uidFB'},
  ],
};

/// Descriptor for `DelUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delUserRequestDescriptor = $convert.base64Decode('Cg5EZWxVc2VyUmVxdWVzdBIUCgV1aWRGQhgBIAEoCVIFdWlkRkI=');
@$core.Deprecated('Use delUserReplyDescriptor instead')
const DelUserReply$json = const {
  '1': 'DelUserReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `DelUserReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delUserReplyDescriptor = $convert.base64Decode('CgxEZWxVc2VyUmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
