///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getMainDataForUserRequestDescriptor instead')
const GetMainDataForUserRequest$json = const {
  '1': 'GetMainDataForUserRequest',
  '2': const [
    const {'1': 'userGuid', '3': 1, '4': 1, '5': 9, '10': 'userGuid'},
  ],
};

/// Descriptor for `GetMainDataForUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMainDataForUserRequestDescriptor = $convert.base64Decode('ChlHZXRNYWluRGF0YUZvclVzZXJSZXF1ZXN0EhoKCHVzZXJHdWlkGAEgASgJUgh1c2VyR3VpZA==');
@$core.Deprecated('Use getMainDataForUserReplyDescriptor instead')
const GetMainDataForUserReply$json = const {
  '1': 'GetMainDataForUserReply',
  '2': const [
    const {'1': 'userName', '3': 1, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'userUidFB', '3': 2, '4': 1, '5': 9, '10': 'userUidFB'},
    const {'1': 'companies', '3': 3, '4': 3, '5': 11, '6': '.msg.CompanyReply', '10': 'companies'},
  ],
};

/// Descriptor for `GetMainDataForUserReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMainDataForUserReplyDescriptor = $convert.base64Decode('ChdHZXRNYWluRGF0YUZvclVzZXJSZXBseRIaCgh1c2VyTmFtZRgBIAEoCVIIdXNlck5hbWUSHAoJdXNlclVpZEZCGAIgASgJUgl1c2VyVWlkRkISLwoJY29tcGFuaWVzGAMgAygLMhEubXNnLkNvbXBhbnlSZXBseVIJY29tcGFuaWVz');
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
