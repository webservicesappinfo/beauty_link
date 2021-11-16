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
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `GetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRequestDescriptor = $convert.base64Decode('Cg5HZXRVc2VyUmVxdWVzdBISCgRndWlkGAEgASgJUgRndWlk');
@$core.Deprecated('Use getUserReplyDescriptor instead')
const GetUserReply$json = const {
  '1': 'GetUserReply',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'guid', '3': 2, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `GetUserReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserReplyDescriptor = $convert.base64Decode('CgxHZXRVc2VyUmVwbHkSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRndWlkGAIgASgJUgRndWlk');
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
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `AddUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserRequestDescriptor = $convert.base64Decode('Cg5BZGRVc2VyUmVxdWVzdBISCgRndWlkGAEgASgJUgRndWlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFdG9rZW4YAyABKAlSBXRva2Vu');
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
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVVc2VyUmVxdWVzdBISCgRndWlkGAEgASgJUgRndWlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFdG9rZW4YAyABKAlSBXRva2Vu');
@$core.Deprecated('Use updateUserReplyDescriptor instead')
const UpdateUserReply$json = const {
  '1': 'UpdateUserReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `UpdateUserReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserReplyDescriptor = $convert.base64Decode('Cg9VcGRhdGVVc2VyUmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
@$core.Deprecated('Use removeUserRequestDescriptor instead')
const RemoveUserRequest$json = const {
  '1': 'RemoveUserRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `RemoveUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeUserRequestDescriptor = $convert.base64Decode('ChFSZW1vdmVVc2VyUmVxdWVzdBISCgRndWlkGAEgASgJUgRndWlk');
@$core.Deprecated('Use removeUserReplyDescriptor instead')
const RemoveUserReply$json = const {
  '1': 'RemoveUserReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `RemoveUserReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeUserReplyDescriptor = $convert.base64Decode('Cg9SZW1vdmVVc2VyUmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
