///
//  Generated code. Do not modify.
//  source: offer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use addOfferRequestDescriptor instead')
const AddOfferRequest$json = const {
  '1': 'AddOfferRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'companyGuid', '3': 2, '4': 1, '5': 9, '10': 'companyGuid'},
    const {'1': 'companyName', '3': 3, '4': 1, '5': 9, '10': 'companyName'},
    const {'1': 'masterGuid', '3': 4, '4': 1, '5': 9, '10': 'masterGuid'},
    const {'1': 'masterName', '3': 5, '4': 1, '5': 9, '10': 'masterName'},
    const {'1': 'skillGuid', '3': 6, '4': 1, '5': 9, '10': 'skillGuid'},
    const {'1': 'skillName', '3': 7, '4': 1, '5': 9, '10': 'skillName'},
  ],
};

/// Descriptor for `AddOfferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOfferRequestDescriptor = $convert.base64Decode('Cg9BZGRPZmZlclJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIgCgtjb21wYW55R3VpZBgCIAEoCVILY29tcGFueUd1aWQSIAoLY29tcGFueU5hbWUYAyABKAlSC2NvbXBhbnlOYW1lEh4KCm1hc3Rlckd1aWQYBCABKAlSCm1hc3Rlckd1aWQSHgoKbWFzdGVyTmFtZRgFIAEoCVIKbWFzdGVyTmFtZRIcCglza2lsbEd1aWQYBiABKAlSCXNraWxsR3VpZBIcCglza2lsbE5hbWUYByABKAlSCXNraWxsTmFtZQ==');
@$core.Deprecated('Use addOfferReplyDescriptor instead')
const AddOfferReply$json = const {
  '1': 'AddOfferReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `AddOfferReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOfferReplyDescriptor = $convert.base64Decode('Cg1BZGRPZmZlclJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
@$core.Deprecated('Use getOffersRequestDescriptor instead')
const GetOffersRequest$json = const {
  '1': 'GetOffersRequest',
  '2': const [
    const {'1': 'masterGuid', '3': 1, '4': 1, '5': 9, '10': 'masterGuid'},
    const {'1': 'skillGuid', '3': 2, '4': 1, '5': 9, '10': 'skillGuid'},
    const {'1': 'clientGuid', '3': 3, '4': 1, '5': 9, '10': 'clientGuid'},
    const {'1': 'forMaster', '3': 4, '4': 1, '5': 8, '10': 'forMaster'},
  ],
};

/// Descriptor for `GetOffersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOffersRequestDescriptor = $convert.base64Decode('ChBHZXRPZmZlcnNSZXF1ZXN0Eh4KCm1hc3Rlckd1aWQYASABKAlSCm1hc3Rlckd1aWQSHAoJc2tpbGxHdWlkGAIgASgJUglza2lsbEd1aWQSHgoKY2xpZW50R3VpZBgDIAEoCVIKY2xpZW50R3VpZBIcCglmb3JNYXN0ZXIYBCABKAhSCWZvck1hc3Rlcg==');
@$core.Deprecated('Use getOffersReplyDescriptor instead')
const GetOffersReply$json = const {
  '1': 'GetOffersReply',
  '2': const [
    const {'1': 'names', '3': 1, '4': 3, '5': 9, '10': 'names'},
    const {'1': 'guids', '3': 2, '4': 3, '5': 9, '10': 'guids'},
    const {'1': 'orderGuids', '3': 3, '4': 3, '5': 9, '10': 'orderGuids'},
    const {'1': 'companyGuids', '3': 4, '4': 3, '5': 9, '10': 'companyGuids'},
    const {'1': 'companyNames', '3': 5, '4': 3, '5': 9, '10': 'companyNames'},
    const {'1': 'masterGuids', '3': 6, '4': 3, '5': 9, '10': 'masterGuids'},
    const {'1': 'masterNames', '3': 7, '4': 3, '5': 9, '10': 'masterNames'},
    const {'1': 'skillGuids', '3': 8, '4': 3, '5': 9, '10': 'skillGuids'},
    const {'1': 'skillNames', '3': 9, '4': 3, '5': 9, '10': 'skillNames'},
    const {'1': 'statuses', '3': 10, '4': 3, '5': 9, '10': 'statuses'},
  ],
};

/// Descriptor for `GetOffersReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOffersReplyDescriptor = $convert.base64Decode('Cg5HZXRPZmZlcnNSZXBseRIUCgVuYW1lcxgBIAMoCVIFbmFtZXMSFAoFZ3VpZHMYAiADKAlSBWd1aWRzEh4KCm9yZGVyR3VpZHMYAyADKAlSCm9yZGVyR3VpZHMSIgoMY29tcGFueUd1aWRzGAQgAygJUgxjb21wYW55R3VpZHMSIgoMY29tcGFueU5hbWVzGAUgAygJUgxjb21wYW55TmFtZXMSIAoLbWFzdGVyR3VpZHMYBiADKAlSC21hc3Rlckd1aWRzEiAKC21hc3Rlck5hbWVzGAcgAygJUgttYXN0ZXJOYW1lcxIeCgpza2lsbEd1aWRzGAggAygJUgpza2lsbEd1aWRzEh4KCnNraWxsTmFtZXMYCSADKAlSCnNraWxsTmFtZXMSGgoIc3RhdHVzZXMYCiADKAlSCHN0YXR1c2Vz');
@$core.Deprecated('Use getOffersByMasterRequestDescriptor instead')
const GetOffersByMasterRequest$json = const {
  '1': 'GetOffersByMasterRequest',
  '2': const [
    const {'1': 'masterGuid', '3': 1, '4': 1, '5': 9, '10': 'masterGuid'},
    const {'1': 'clientGuid', '3': 2, '4': 1, '5': 9, '10': 'clientGuid'},
    const {'1': 'forMaster', '3': 3, '4': 1, '5': 8, '10': 'forMaster'},
  ],
};

/// Descriptor for `GetOffersByMasterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOffersByMasterRequestDescriptor = $convert.base64Decode('ChhHZXRPZmZlcnNCeU1hc3RlclJlcXVlc3QSHgoKbWFzdGVyR3VpZBgBIAEoCVIKbWFzdGVyR3VpZBIeCgpjbGllbnRHdWlkGAIgASgJUgpjbGllbnRHdWlkEhwKCWZvck1hc3RlchgDIAEoCFIJZm9yTWFzdGVy');
@$core.Deprecated('Use getOffersBySkillRequestDescriptor instead')
const GetOffersBySkillRequest$json = const {
  '1': 'GetOffersBySkillRequest',
  '2': const [
    const {'1': 'skillGuid', '3': 1, '4': 1, '5': 9, '10': 'skillGuid'},
  ],
};

/// Descriptor for `GetOffersBySkillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOffersBySkillRequestDescriptor = $convert.base64Decode('ChdHZXRPZmZlcnNCeVNraWxsUmVxdWVzdBIcCglza2lsbEd1aWQYASABKAlSCXNraWxsR3VpZA==');
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
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetOfferReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOfferReplyDescriptor = $convert.base64Decode('Cg1HZXRPZmZlclJlcGx5EhIKBGd1aWQYASABKAlSBGd1aWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use updateOfferRequestDescriptor instead')
const UpdateOfferRequest$json = const {
  '1': 'UpdateOfferRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `UpdateOfferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOfferRequestDescriptor = $convert.base64Decode('ChJVcGRhdGVPZmZlclJlcXVlc3QSEgoEZ3VpZBgBIAEoCVIEZ3VpZBISCgRuYW1lGAIgASgJUgRuYW1l');
@$core.Deprecated('Use updateOfferReplyDescriptor instead')
const UpdateOfferReply$json = const {
  '1': 'UpdateOfferReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `UpdateOfferReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOfferReplyDescriptor = $convert.base64Decode('ChBVcGRhdGVPZmZlclJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
@$core.Deprecated('Use delOfferRequestDescriptor instead')
const DelOfferRequest$json = const {
  '1': 'DelOfferRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `DelOfferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delOfferRequestDescriptor = $convert.base64Decode('Cg9EZWxPZmZlclJlcXVlc3QSEgoEZ3VpZBgBIAEoCVIEZ3VpZA==');
@$core.Deprecated('Use delOfferReplyDescriptor instead')
const DelOfferReply$json = const {
  '1': 'DelOfferReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `DelOfferReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delOfferReplyDescriptor = $convert.base64Decode('Cg1EZWxPZmZlclJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
