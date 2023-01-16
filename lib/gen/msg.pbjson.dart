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
    const {'1': 'masters', '3': 7, '4': 3, '5': 11, '6': '.msg.MasterReply', '10': 'masters'},
  ],
};

/// Descriptor for `CompanyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List companyReplyDescriptor = $convert.base64Decode('CgxDb21wYW55UmVwbHkSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRndWlkGAIgASgJUgRndWlkEhwKCW93bmVyR3VpZBgDIAEoCVIJb3duZXJHdWlkEhwKCW93bmVyTmFtZRgEIAEoCVIJb3duZXJOYW1lEhAKA2xhdBgFIAEoCVIDbGF0EhAKA2xuZxgGIAEoCVIDbG5nEioKB21hc3RlcnMYByADKAsyEC5tc2cuTWFzdGVyUmVwbHlSB21hc3RlcnM=');
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
    const {'1': 'master', '3': 1, '4': 1, '5': 11, '6': '.msg.MasterReply', '10': 'master'},
  ],
};

/// Descriptor for `AddMasterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addMasterRequestDescriptor = $convert.base64Decode('ChBBZGRNYXN0ZXJSZXF1ZXN0EigKBm1hc3RlchgBIAEoCzIQLm1zZy5NYXN0ZXJSZXBseVIGbWFzdGVy');
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
    const {'1': 'master', '3': 1, '4': 1, '5': 11, '6': '.msg.MasterReply', '10': 'master'},
  ],
};

/// Descriptor for `DelMasterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delMasterRequestDescriptor = $convert.base64Decode('ChBEZWxNYXN0ZXJSZXF1ZXN0EigKBm1hc3RlchgBIAEoCzIQLm1zZy5NYXN0ZXJSZXBseVIGbWFzdGVy');
@$core.Deprecated('Use delMasterReplyDescriptor instead')
const DelMasterReply$json = const {
  '1': 'DelMasterReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `DelMasterReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delMasterReplyDescriptor = $convert.base64Decode('Cg5EZWxNYXN0ZXJSZXBseRIWCgZyZXN1bHQYASABKAhSBnJlc3VsdA==');
@$core.Deprecated('Use masterReplyDescriptor instead')
const MasterReply$json = const {
  '1': 'MasterReply',
  '2': const [
    const {'1': 'uidFB', '3': 1, '4': 1, '5': 9, '10': 'uidFB'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'companyGuid', '3': 3, '4': 1, '5': 9, '10': 'companyGuid'},
    const {'1': 'companyName', '3': 4, '4': 1, '5': 9, '10': 'companyName'},
    const {'1': 'offers', '3': 5, '4': 3, '5': 11, '6': '.msg.OfferApi', '10': 'offers'},
  ],
};

/// Descriptor for `MasterReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List masterReplyDescriptor = $convert.base64Decode('CgtNYXN0ZXJSZXBseRIUCgV1aWRGQhgBIAEoCVIFdWlkRkISEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtjb21wYW55R3VpZBgDIAEoCVILY29tcGFueUd1aWQSIAoLY29tcGFueU5hbWUYBCABKAlSC2NvbXBhbnlOYW1lEiUKBm9mZmVycxgFIAMoCzINLm1zZy5PZmZlckFwaVIGb2ZmZXJz');
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
    const {'1': 'offer', '3': 1, '4': 1, '5': 11, '6': '.msg.OfferApi', '10': 'offer'},
  ],
};

/// Descriptor for `AddOfferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOfferRequestDescriptor = $convert.base64Decode('Cg9BZGRPZmZlclJlcXVlc3QSIwoFb2ZmZXIYASABKAsyDS5tc2cuT2ZmZXJBcGlSBW9mZmVy');
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
    const {'1': 'offer', '3': 1, '4': 1, '5': 11, '6': '.msg.OfferApi', '10': 'offer'},
    const {'1': 'result', '3': 2, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `GetOfferReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOfferReplyDescriptor = $convert.base64Decode('Cg1HZXRPZmZlclJlcGx5EiMKBW9mZmVyGAEgASgLMg0ubXNnLk9mZmVyQXBpUgVvZmZlchIWCgZyZXN1bHQYAiABKAhSBnJlc3VsdA==');
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
    const {'1': 'offers', '3': 1, '4': 3, '5': 11, '6': '.msg.OfferApi', '10': 'offers'},
  ],
};

/// Descriptor for `GetOffersReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOffersReplyDescriptor = $convert.base64Decode('Cg5HZXRPZmZlcnNSZXBseRIlCgZvZmZlcnMYASADKAsyDS5tc2cuT2ZmZXJBcGlSBm9mZmVycw==');
@$core.Deprecated('Use delOfferRequestDescriptor instead')
const DelOfferRequest$json = const {
  '1': 'DelOfferRequest',
  '2': const [
    const {'1': 'offer', '3': 1, '4': 1, '5': 11, '6': '.msg.OfferApi', '10': 'offer'},
  ],
};

/// Descriptor for `DelOfferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delOfferRequestDescriptor = $convert.base64Decode('Cg9EZWxPZmZlclJlcXVlc3QSIwoFb2ZmZXIYASABKAsyDS5tc2cuT2ZmZXJBcGlSBW9mZmVy');
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
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.msg.OrderApi', '10': 'order'},
  ],
};

/// Descriptor for `AddOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOrderRequestDescriptor = $convert.base64Decode('Cg9BZGRPcmRlclJlcXVlc3QSIwoFb3JkZXIYASABKAsyDS5tc2cuT3JkZXJBcGlSBW9yZGVy');
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
    const {'1': 'offer', '3': 1, '4': 1, '5': 11, '6': '.msg.OrderApi', '10': 'offer'},
    const {'1': 'result', '3': 2, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `GetOrderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrderReplyDescriptor = $convert.base64Decode('Cg1HZXRPcmRlclJlcGx5EiMKBW9mZmVyGAEgASgLMg0ubXNnLk9yZGVyQXBpUgVvZmZlchIWCgZyZXN1bHQYAiABKAhSBnJlc3VsdA==');
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
    const {'1': 'offers', '3': 1, '4': 3, '5': 11, '6': '.msg.OfferApi', '10': 'offers'},
  ],
};

/// Descriptor for `GetOrdersReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrdersReplyDescriptor = $convert.base64Decode('Cg5HZXRPcmRlcnNSZXBseRIlCgZvZmZlcnMYASADKAsyDS5tc2cuT2ZmZXJBcGlSBm9mZmVycw==');
@$core.Deprecated('Use delOrderRequestDescriptor instead')
const DelOrderRequest$json = const {
  '1': 'DelOrderRequest',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.msg.OrderApi', '10': 'order'},
  ],
};

/// Descriptor for `DelOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delOrderRequestDescriptor = $convert.base64Decode('Cg9EZWxPcmRlclJlcXVlc3QSIwoFb3JkZXIYASABKAsyDS5tc2cuT3JkZXJBcGlSBW9yZGVy');
@$core.Deprecated('Use delOrderReplyDescriptor instead')
const DelOrderReply$json = const {
  '1': 'DelOrderReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `DelOrderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delOrderReplyDescriptor = $convert.base64Decode('Cg1EZWxPcmRlclJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
