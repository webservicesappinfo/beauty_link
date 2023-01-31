///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getMainDataForUserRequestDescriptor instead')
const GetMainDataForUserRequest$json = const {
  '1': 'GetMainDataForUserRequest',
  '2': const [
    const {'1': 'userUIDFB', '3': 1, '4': 1, '5': 9, '10': 'userUIDFB'},
  ],
};

/// Descriptor for `GetMainDataForUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMainDataForUserRequestDescriptor = $convert.base64Decode('ChlHZXRNYWluRGF0YUZvclVzZXJSZXF1ZXN0EhwKCXVzZXJVSURGQhgBIAEoCVIJdXNlclVJREZC');
@$core.Deprecated('Use getMainDataForUserReplyDescriptor instead')
const GetMainDataForUserReply$json = const {
  '1': 'GetMainDataForUserReply',
  '2': const [
    const {'1': 'userName', '3': 1, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'userUIDFB', '3': 2, '4': 1, '5': 9, '10': 'userUIDFB'},
    const {'1': 'companies', '3': 3, '4': 3, '5': 11, '6': '.mobileApi.CompanyReply', '10': 'companies'},
  ],
};

/// Descriptor for `GetMainDataForUserReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMainDataForUserReplyDescriptor = $convert.base64Decode('ChdHZXRNYWluRGF0YUZvclVzZXJSZXBseRIaCgh1c2VyTmFtZRgBIAEoCVIIdXNlck5hbWUSHAoJdXNlclVJREZCGAIgASgJUgl1c2VyVUlERkISNQoJY29tcGFuaWVzGAMgAygLMhcubW9iaWxlQXBpLkNvbXBhbnlSZXBseVIJY29tcGFuaWVz');
@$core.Deprecated('Use getFitForCompanyUsersRequestDescriptor instead')
const GetFitForCompanyUsersRequest$json = const {
  '1': 'GetFitForCompanyUsersRequest',
  '2': const [
    const {'1': 'companyGuid', '3': 1, '4': 1, '5': 9, '10': 'companyGuid'},
    const {'1': 'isConsistIn', '3': 2, '4': 1, '5': 8, '10': 'isConsistIn'},
  ],
};

/// Descriptor for `GetFitForCompanyUsersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFitForCompanyUsersRequestDescriptor = $convert.base64Decode('ChxHZXRGaXRGb3JDb21wYW55VXNlcnNSZXF1ZXN0EiAKC2NvbXBhbnlHdWlkGAEgASgJUgtjb21wYW55R3VpZBIgCgtpc0NvbnNpc3RJbhgCIAEoCFILaXNDb25zaXN0SW4=');
@$core.Deprecated('Use getFitForCompanyUsersReplyDescriptor instead')
const GetFitForCompanyUsersReply$json = const {
  '1': 'GetFitForCompanyUsersReply',
  '2': const [
    const {'1': 'guids', '3': 1, '4': 3, '5': 9, '10': 'guids'},
    const {'1': 'names', '3': 2, '4': 3, '5': 9, '10': 'names'},
  ],
};

/// Descriptor for `GetFitForCompanyUsersReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFitForCompanyUsersReplyDescriptor = $convert.base64Decode('ChpHZXRGaXRGb3JDb21wYW55VXNlcnNSZXBseRIUCgVndWlkcxgBIAMoCVIFZ3VpZHMSFAoFbmFtZXMYAiADKAlSBW5hbWVz');
@$core.Deprecated('Use masterReplyDescriptor instead')
const MasterReply$json = const {
  '1': 'MasterReply',
  '2': const [
    const {'1': 'uidFB', '3': 1, '4': 1, '5': 9, '10': 'uidFB'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'companyGuid', '3': 3, '4': 1, '5': 9, '10': 'companyGuid'},
    const {'1': 'companyName', '3': 4, '4': 1, '5': 9, '10': 'companyName'},
    const {'1': 'offers', '3': 5, '4': 3, '5': 11, '6': '.mobileApi.OfferApi', '10': 'offers'},
  ],
};

/// Descriptor for `MasterReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List masterReplyDescriptor = $convert.base64Decode('CgtNYXN0ZXJSZXBseRIUCgV1aWRGQhgBIAEoCVIFdWlkRkISEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtjb21wYW55R3VpZBgDIAEoCVILY29tcGFueUd1aWQSIAoLY29tcGFueU5hbWUYBCABKAlSC2NvbXBhbnlOYW1lEisKBm9mZmVycxgFIAMoCzITLm1vYmlsZUFwaS5PZmZlckFwaVIGb2ZmZXJz');
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
    const {'1': 'uids', '3': 1, '4': 3, '5': 9, '10': 'uids'},
    const {'1': 'names', '3': 2, '4': 3, '5': 9, '10': 'names'},
  ],
};

/// Descriptor for `GetUsersReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUsersReplyDescriptor = $convert.base64Decode('Cg1HZXRVc2Vyc1JlcGx5EhIKBHVpZHMYASADKAlSBHVpZHMSFAoFbmFtZXMYAiADKAlSBW5hbWVz');
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
    const {'1': 'masters', '3': 7, '4': 3, '5': 11, '6': '.mobileApi.MasterReply', '10': 'masters'},
  ],
};

/// Descriptor for `CompanyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List companyReplyDescriptor = $convert.base64Decode('CgxDb21wYW55UmVwbHkSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRndWlkGAIgASgJUgRndWlkEhwKCW93bmVyR3VpZBgDIAEoCVIJb3duZXJHdWlkEhwKCW93bmVyTmFtZRgEIAEoCVIJb3duZXJOYW1lEhAKA2xhdBgFIAEoCVIDbGF0EhAKA2xuZxgGIAEoCVIDbG5nEjAKB21hc3RlcnMYByADKAsyFi5tb2JpbGVBcGkuTWFzdGVyUmVwbHlSB21hc3RlcnM=');
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
@$core.Deprecated('Use addMasterRequestDescriptor instead')
const AddMasterRequest$json = const {
  '1': 'AddMasterRequest',
  '2': const [
    const {'1': 'master', '3': 1, '4': 1, '5': 11, '6': '.mobileApi.MasterReply', '10': 'master'},
  ],
};

/// Descriptor for `AddMasterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addMasterRequestDescriptor = $convert.base64Decode('ChBBZGRNYXN0ZXJSZXF1ZXN0Ei4KBm1hc3RlchgBIAEoCzIWLm1vYmlsZUFwaS5NYXN0ZXJSZXBseVIGbWFzdGVy');
@$core.Deprecated('Use addMasterReplyDescriptor instead')
const AddMasterReply$json = const {
  '1': 'AddMasterReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `AddMasterReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addMasterReplyDescriptor = $convert.base64Decode('Cg5BZGRNYXN0ZXJSZXBseRIWCgZyZXN1bHQYASABKAhSBnJlc3VsdA==');
@$core.Deprecated('Use delMasterRequestDescriptor instead')
const DelMasterRequest$json = const {
  '1': 'DelMasterRequest',
  '2': const [
    const {'1': 'master', '3': 1, '4': 1, '5': 11, '6': '.mobileApi.MasterReply', '10': 'master'},
  ],
};

/// Descriptor for `DelMasterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delMasterRequestDescriptor = $convert.base64Decode('ChBEZWxNYXN0ZXJSZXF1ZXN0Ei4KBm1hc3RlchgBIAEoCzIWLm1vYmlsZUFwaS5NYXN0ZXJSZXBseVIGbWFzdGVy');
@$core.Deprecated('Use delMasterReplyDescriptor instead')
const DelMasterReply$json = const {
  '1': 'DelMasterReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `DelMasterReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delMasterReplyDescriptor = $convert.base64Decode('Cg5EZWxNYXN0ZXJSZXBseRIWCgZyZXN1bHQYASABKAhSBnJlc3VsdA==');
@$core.Deprecated('Use offerApiDescriptor instead')
const OfferApi$json = const {
  '1': 'OfferApi',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'companyGuid', '3': 4, '4': 1, '5': 9, '10': 'companyGuid'},
    const {'1': 'companyName', '3': 5, '4': 1, '5': 9, '10': 'companyName'},
    const {'1': 'masterGuid', '3': 6, '4': 1, '5': 9, '10': 'masterGuid'},
    const {'1': 'masterName', '3': 7, '4': 1, '5': 9, '10': 'masterName'},
    const {'1': 'orderGuid', '3': 8, '4': 1, '5': 9, '10': 'orderGuid'},
    const {'1': 'orderName', '3': 9, '4': 1, '5': 9, '10': 'orderName'},
    const {'1': 'skillGuid', '3': 10, '4': 1, '5': 9, '10': 'skillGuid'},
    const {'1': 'skillName', '3': 11, '4': 1, '5': 9, '10': 'skillName'},
    const {'1': 'status', '3': 12, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `OfferApi`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offerApiDescriptor = $convert.base64Decode('CghPZmZlckFwaRISCgRndWlkGAEgASgJUgRndWlkEhIKBG5hbWUYAiABKAlSBG5hbWUSEgoEZGVzYxgDIAEoCVIEZGVzYxIgCgtjb21wYW55R3VpZBgEIAEoCVILY29tcGFueUd1aWQSIAoLY29tcGFueU5hbWUYBSABKAlSC2NvbXBhbnlOYW1lEh4KCm1hc3Rlckd1aWQYBiABKAlSCm1hc3Rlckd1aWQSHgoKbWFzdGVyTmFtZRgHIAEoCVIKbWFzdGVyTmFtZRIcCglvcmRlckd1aWQYCCABKAlSCW9yZGVyR3VpZBIcCglvcmRlck5hbWUYCSABKAlSCW9yZGVyTmFtZRIcCglza2lsbEd1aWQYCiABKAlSCXNraWxsR3VpZBIcCglza2lsbE5hbWUYCyABKAlSCXNraWxsTmFtZRIWCgZzdGF0dXMYDCABKAlSBnN0YXR1cw==');
@$core.Deprecated('Use addOfferRequestDescriptor instead')
const AddOfferRequest$json = const {
  '1': 'AddOfferRequest',
  '2': const [
    const {'1': 'offer', '3': 1, '4': 1, '5': 11, '6': '.mobileApi.OfferApi', '10': 'offer'},
  ],
};

/// Descriptor for `AddOfferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOfferRequestDescriptor = $convert.base64Decode('Cg9BZGRPZmZlclJlcXVlc3QSKQoFb2ZmZXIYASABKAsyEy5tb2JpbGVBcGkuT2ZmZXJBcGlSBW9mZmVy');
@$core.Deprecated('Use addOfferReplyDescriptor instead')
const AddOfferReply$json = const {
  '1': 'AddOfferReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `AddOfferReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOfferReplyDescriptor = $convert.base64Decode('Cg1BZGRPZmZlclJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
@$core.Deprecated('Use getOfferRequestDescriptor instead')
const GetOfferRequest$json = const {
  '1': 'GetOfferRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `GetOfferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOfferRequestDescriptor = $convert.base64Decode('Cg9HZXRPZmZlclJlcXVlc3QSEgoEZ3VpZBgBIAEoCVIEZ3VpZA==');
@$core.Deprecated('Use getOfferReplyDescriptor instead')
const GetOfferReply$json = const {
  '1': 'GetOfferReply',
  '2': const [
    const {'1': 'offer', '3': 1, '4': 1, '5': 11, '6': '.mobileApi.OfferApi', '10': 'offer'},
    const {'1': 'result', '3': 2, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `GetOfferReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOfferReplyDescriptor = $convert.base64Decode('Cg1HZXRPZmZlclJlcGx5EikKBW9mZmVyGAEgASgLMhMubW9iaWxlQXBpLk9mZmVyQXBpUgVvZmZlchIWCgZyZXN1bHQYAiABKAhSBnJlc3VsdA==');
@$core.Deprecated('Use getOffersRequestDescriptor instead')
const GetOffersRequest$json = const {
  '1': 'GetOffersRequest',
  '2': const [
    const {'1': 'guids', '3': 1, '4': 3, '5': 9, '10': 'guids'},
  ],
};

/// Descriptor for `GetOffersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOffersRequestDescriptor = $convert.base64Decode('ChBHZXRPZmZlcnNSZXF1ZXN0EhQKBWd1aWRzGAEgAygJUgVndWlkcw==');
@$core.Deprecated('Use getOffersReplyDescriptor instead')
const GetOffersReply$json = const {
  '1': 'GetOffersReply',
  '2': const [
    const {'1': 'offers', '3': 1, '4': 3, '5': 11, '6': '.mobileApi.OfferApi', '10': 'offers'},
  ],
};

/// Descriptor for `GetOffersReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOffersReplyDescriptor = $convert.base64Decode('Cg5HZXRPZmZlcnNSZXBseRIrCgZvZmZlcnMYASADKAsyEy5tb2JpbGVBcGkuT2ZmZXJBcGlSBm9mZmVycw==');
@$core.Deprecated('Use delOfferRequestDescriptor instead')
const DelOfferRequest$json = const {
  '1': 'DelOfferRequest',
  '2': const [
    const {'1': 'offer', '3': 1, '4': 1, '5': 11, '6': '.mobileApi.OfferApi', '10': 'offer'},
  ],
};

/// Descriptor for `DelOfferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delOfferRequestDescriptor = $convert.base64Decode('Cg9EZWxPZmZlclJlcXVlc3QSKQoFb2ZmZXIYASABKAsyEy5tb2JpbGVBcGkuT2ZmZXJBcGlSBW9mZmVy');
@$core.Deprecated('Use delOfferReplyDescriptor instead')
const DelOfferReply$json = const {
  '1': 'DelOfferReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `DelOfferReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delOfferReplyDescriptor = $convert.base64Decode('Cg1EZWxPZmZlclJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
@$core.Deprecated('Use orderApiDescriptor instead')
const OrderApi$json = const {
  '1': 'OrderApi',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'guid', '3': 2, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'offerGuid', '3': 3, '4': 1, '5': 9, '10': 'offerGuid'},
    const {'1': 'userName', '3': 4, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'masterName', '3': 5, '4': 1, '5': 9, '10': 'masterName'},
    const {'1': 'skillName', '3': 6, '4': 1, '5': 9, '10': 'skillName'},
    const {'1': 'userGuid', '3': 7, '4': 1, '5': 9, '10': 'userGuid'},
    const {'1': 'masterGuid', '3': 8, '4': 1, '5': 9, '10': 'masterGuid'},
    const {'1': 'skillGuid', '3': 9, '4': 1, '5': 9, '10': 'skillGuid'},
    const {'1': 'status', '3': 10, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `OrderApi`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderApiDescriptor = $convert.base64Decode('CghPcmRlckFwaRISCgRuYW1lGAEgASgJUgRuYW1lEhIKBGd1aWQYAiABKAlSBGd1aWQSHAoJb2ZmZXJHdWlkGAMgASgJUglvZmZlckd1aWQSGgoIdXNlck5hbWUYBCABKAlSCHVzZXJOYW1lEh4KCm1hc3Rlck5hbWUYBSABKAlSCm1hc3Rlck5hbWUSHAoJc2tpbGxOYW1lGAYgASgJUglza2lsbE5hbWUSGgoIdXNlckd1aWQYByABKAlSCHVzZXJHdWlkEh4KCm1hc3Rlckd1aWQYCCABKAlSCm1hc3Rlckd1aWQSHAoJc2tpbGxHdWlkGAkgASgJUglza2lsbEd1aWQSFgoGc3RhdHVzGAogASgJUgZzdGF0dXM=');
@$core.Deprecated('Use addOrderRequestDescriptor instead')
const AddOrderRequest$json = const {
  '1': 'AddOrderRequest',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.mobileApi.OrderApi', '10': 'order'},
  ],
};

/// Descriptor for `AddOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOrderRequestDescriptor = $convert.base64Decode('Cg9BZGRPcmRlclJlcXVlc3QSKQoFb3JkZXIYASABKAsyEy5tb2JpbGVBcGkuT3JkZXJBcGlSBW9yZGVy');
@$core.Deprecated('Use addOrderReplyDescriptor instead')
const AddOrderReply$json = const {
  '1': 'AddOrderReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `AddOrderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOrderReplyDescriptor = $convert.base64Decode('Cg1BZGRPcmRlclJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
@$core.Deprecated('Use getOrderRequestDescriptor instead')
const GetOrderRequest$json = const {
  '1': 'GetOrderRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `GetOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrderRequestDescriptor = $convert.base64Decode('Cg9HZXRPcmRlclJlcXVlc3QSEgoEZ3VpZBgBIAEoCVIEZ3VpZA==');
@$core.Deprecated('Use getOrderReplyDescriptor instead')
const GetOrderReply$json = const {
  '1': 'GetOrderReply',
  '2': const [
    const {'1': 'offer', '3': 1, '4': 1, '5': 11, '6': '.mobileApi.OrderApi', '10': 'offer'},
    const {'1': 'result', '3': 2, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `GetOrderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrderReplyDescriptor = $convert.base64Decode('Cg1HZXRPcmRlclJlcGx5EikKBW9mZmVyGAEgASgLMhMubW9iaWxlQXBpLk9yZGVyQXBpUgVvZmZlchIWCgZyZXN1bHQYAiABKAhSBnJlc3VsdA==');
@$core.Deprecated('Use getOrdersRequestDescriptor instead')
const GetOrdersRequest$json = const {
  '1': 'GetOrdersRequest',
  '2': const [
    const {'1': 'guids', '3': 1, '4': 3, '5': 9, '10': 'guids'},
  ],
};

/// Descriptor for `GetOrdersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrdersRequestDescriptor = $convert.base64Decode('ChBHZXRPcmRlcnNSZXF1ZXN0EhQKBWd1aWRzGAEgAygJUgVndWlkcw==');
@$core.Deprecated('Use getOrdersReplyDescriptor instead')
const GetOrdersReply$json = const {
  '1': 'GetOrdersReply',
  '2': const [
    const {'1': 'offers', '3': 1, '4': 3, '5': 11, '6': '.mobileApi.OfferApi', '10': 'offers'},
  ],
};

/// Descriptor for `GetOrdersReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrdersReplyDescriptor = $convert.base64Decode('Cg5HZXRPcmRlcnNSZXBseRIrCgZvZmZlcnMYASADKAsyEy5tb2JpbGVBcGkuT2ZmZXJBcGlSBm9mZmVycw==');
@$core.Deprecated('Use delOrderRequestDescriptor instead')
const DelOrderRequest$json = const {
  '1': 'DelOrderRequest',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.mobileApi.OrderApi', '10': 'order'},
  ],
};

/// Descriptor for `DelOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delOrderRequestDescriptor = $convert.base64Decode('Cg9EZWxPcmRlclJlcXVlc3QSKQoFb3JkZXIYASABKAsyEy5tb2JpbGVBcGkuT3JkZXJBcGlSBW9yZGVy');
@$core.Deprecated('Use delOrderReplyDescriptor instead')
const DelOrderReply$json = const {
  '1': 'DelOrderReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `DelOrderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delOrderReplyDescriptor = $convert.base64Decode('Cg1EZWxPcmRlclJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
@$core.Deprecated('Use findLastGetMessageRequestDescriptor instead')
const FindLastGetMessageRequest$json = const {
  '1': 'FindLastGetMessageRequest',
  '2': const [
    const {'1': 'fromGuid', '3': 1, '4': 1, '5': 9, '10': 'fromGuid'},
    const {'1': 'forGuid', '3': 2, '4': 1, '5': 9, '10': 'forGuid'},
  ],
};

/// Descriptor for `FindLastGetMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findLastGetMessageRequestDescriptor = $convert.base64Decode('ChlGaW5kTGFzdEdldE1lc3NhZ2VSZXF1ZXN0EhoKCGZyb21HdWlkGAEgASgJUghmcm9tR3VpZBIYCgdmb3JHdWlkGAIgASgJUgdmb3JHdWlk');
@$core.Deprecated('Use findLastGetMessageReplyDescriptor instead')
const FindLastGetMessageReply$json = const {
  '1': 'FindLastGetMessageReply',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `FindLastGetMessageReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findLastGetMessageReplyDescriptor = $convert.base64Decode('ChdGaW5kTGFzdEdldE1lc3NhZ2VSZXBseRIQCgNtc2cYASABKAlSA21zZw==');
@$core.Deprecated('Use sendNotificationRequestDescriptor instead')
const SendNotificationRequest$json = const {
  '1': 'SendNotificationRequest',
  '2': const [
    const {'1': 'forGuid', '3': 1, '4': 1, '5': 9, '10': 'forGuid'},
    const {'1': 'fromGuid', '3': 2, '4': 1, '5': 9, '10': 'fromGuid'},
    const {'1': 'msg', '3': 3, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `SendNotificationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendNotificationRequestDescriptor = $convert.base64Decode('ChdTZW5kTm90aWZpY2F0aW9uUmVxdWVzdBIYCgdmb3JHdWlkGAEgASgJUgdmb3JHdWlkEhoKCGZyb21HdWlkGAIgASgJUghmcm9tR3VpZBIQCgNtc2cYAyABKAlSA21zZw==');
@$core.Deprecated('Use sendNotificationReplyDescriptor instead')
const SendNotificationReply$json = const {
  '1': 'SendNotificationReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SendNotificationReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendNotificationReplyDescriptor = $convert.base64Decode('ChVTZW5kTm90aWZpY2F0aW9uUmVwbHkSFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');
@$core.Deprecated('Use apiGetUserLocationRequestDescriptor instead')
const ApiGetUserLocationRequest$json = const {
  '1': 'ApiGetUserLocationRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `ApiGetUserLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiGetUserLocationRequestDescriptor = $convert.base64Decode('ChlBcGlHZXRVc2VyTG9jYXRpb25SZXF1ZXN0EhIKBGd1aWQYASABKAlSBGd1aWQ=');
@$core.Deprecated('Use apiGetUserLocationReplyDescriptor instead')
const ApiGetUserLocationReply$json = const {
  '1': 'ApiGetUserLocationReply',
  '2': const [
    const {'1': 'forGuid', '3': 1, '4': 1, '5': 9, '10': 'forGuid'},
    const {'1': 'lat', '3': 2, '4': 1, '5': 9, '10': 'lat'},
    const {'1': 'lng', '3': 3, '4': 1, '5': 9, '10': 'lng'},
  ],
};

/// Descriptor for `ApiGetUserLocationReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiGetUserLocationReplyDescriptor = $convert.base64Decode('ChdBcGlHZXRVc2VyTG9jYXRpb25SZXBseRIYCgdmb3JHdWlkGAEgASgJUgdmb3JHdWlkEhAKA2xhdBgCIAEoCVIDbGF0EhAKA2xuZxgDIAEoCVIDbG5n');
@$core.Deprecated('Use apiSetUserLocationRequestDescriptor instead')
const ApiSetUserLocationRequest$json = const {
  '1': 'ApiSetUserLocationRequest',
  '2': const [
    const {'1': 'forGuid', '3': 1, '4': 1, '5': 9, '10': 'forGuid'},
    const {'1': 'lat', '3': 2, '4': 1, '5': 9, '10': 'lat'},
    const {'1': 'lng', '3': 3, '4': 1, '5': 9, '10': 'lng'},
  ],
};

/// Descriptor for `ApiSetUserLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiSetUserLocationRequestDescriptor = $convert.base64Decode('ChlBcGlTZXRVc2VyTG9jYXRpb25SZXF1ZXN0EhgKB2Zvckd1aWQYASABKAlSB2Zvckd1aWQSEAoDbGF0GAIgASgJUgNsYXQSEAoDbG5nGAMgASgJUgNsbmc=');
@$core.Deprecated('Use apiSetUserLocationReplyDescriptor instead')
const ApiSetUserLocationReply$json = const {
  '1': 'ApiSetUserLocationReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `ApiSetUserLocationReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiSetUserLocationReplyDescriptor = $convert.base64Decode('ChdBcGlTZXRVc2VyTG9jYXRpb25SZXBseRIWCgZyZXN1bHQYASABKAhSBnJlc3VsdA==');
