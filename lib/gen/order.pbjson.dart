///
//  Generated code. Do not modify.
//  source: order.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use addOrderRequestDescriptor instead')
const AddOrderRequest$json = const {
  '1': 'AddOrderRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'userGuid', '3': 2, '4': 1, '5': 9, '10': 'userGuid'},
    const {'1': 'userName', '3': 3, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'masterGuid', '3': 4, '4': 1, '5': 9, '10': 'masterGuid'},
    const {'1': 'masterName', '3': 5, '4': 1, '5': 9, '10': 'masterName'},
    const {'1': 'skillGuid', '3': 6, '4': 1, '5': 9, '10': 'skillGuid'},
    const {'1': 'skillName', '3': 7, '4': 1, '5': 9, '10': 'skillName'},
  ],
};

/// Descriptor for `AddOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOrderRequestDescriptor = $convert.base64Decode('Cg9BZGRPcmRlclJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIaCgh1c2VyR3VpZBgCIAEoCVIIdXNlckd1aWQSGgoIdXNlck5hbWUYAyABKAlSCHVzZXJOYW1lEh4KCm1hc3Rlckd1aWQYBCABKAlSCm1hc3Rlckd1aWQSHgoKbWFzdGVyTmFtZRgFIAEoCVIKbWFzdGVyTmFtZRIcCglza2lsbEd1aWQYBiABKAlSCXNraWxsR3VpZBIcCglza2lsbE5hbWUYByABKAlSCXNraWxsTmFtZQ==');
@$core.Deprecated('Use addOrderReplyDescriptor instead')
const AddOrderReply$json = const {
  '1': 'AddOrderReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `AddOrderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOrderReplyDescriptor = $convert.base64Decode('Cg1BZGRPcmRlclJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
@$core.Deprecated('Use getOrdersRequestDescriptor instead')
const GetOrdersRequest$json = const {
  '1': 'GetOrdersRequest',
  '2': const [
    const {'1': 'userGuid', '3': 1, '4': 1, '5': 9, '10': 'userGuid'},
  ],
};

/// Descriptor for `GetOrdersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrdersRequestDescriptor = $convert.base64Decode('ChBHZXRPcmRlcnNSZXF1ZXN0EhoKCHVzZXJHdWlkGAEgASgJUgh1c2VyR3VpZA==');
@$core.Deprecated('Use getOrdersReplyDescriptor instead')
const GetOrdersReply$json = const {
  '1': 'GetOrdersReply',
  '2': const [
    const {'1': 'names', '3': 1, '4': 3, '5': 9, '10': 'names'},
    const {'1': 'guids', '3': 2, '4': 3, '5': 9, '10': 'guids'},
    const {'1': 'userGuids', '3': 3, '4': 3, '5': 9, '10': 'userGuids'},
    const {'1': 'userNames', '3': 4, '4': 3, '5': 9, '10': 'userNames'},
    const {'1': 'masterGuids', '3': 5, '4': 3, '5': 9, '10': 'masterGuids'},
    const {'1': 'masterNames', '3': 6, '4': 3, '5': 9, '10': 'masterNames'},
    const {'1': 'skillGuids', '3': 7, '4': 3, '5': 9, '10': 'skillGuids'},
    const {'1': 'skillNames', '3': 8, '4': 3, '5': 9, '10': 'skillNames'},
  ],
};

/// Descriptor for `GetOrdersReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrdersReplyDescriptor = $convert.base64Decode('Cg5HZXRPcmRlcnNSZXBseRIUCgVuYW1lcxgBIAMoCVIFbmFtZXMSFAoFZ3VpZHMYAiADKAlSBWd1aWRzEhwKCXVzZXJHdWlkcxgDIAMoCVIJdXNlckd1aWRzEhwKCXVzZXJOYW1lcxgEIAMoCVIJdXNlck5hbWVzEiAKC21hc3Rlckd1aWRzGAUgAygJUgttYXN0ZXJHdWlkcxIgCgttYXN0ZXJOYW1lcxgGIAMoCVILbWFzdGVyTmFtZXMSHgoKc2tpbGxHdWlkcxgHIAMoCVIKc2tpbGxHdWlkcxIeCgpza2lsbE5hbWVzGAggAygJUgpza2lsbE5hbWVz');
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
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetOrderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrderReplyDescriptor = $convert.base64Decode('Cg1HZXRPcmRlclJlcGx5EhIKBGd1aWQYASABKAlSBGd1aWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use updateOrderRequestDescriptor instead')
const UpdateOrderRequest$json = const {
  '1': 'UpdateOrderRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `UpdateOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOrderRequestDescriptor = $convert.base64Decode('ChJVcGRhdGVPcmRlclJlcXVlc3QSEgoEZ3VpZBgBIAEoCVIEZ3VpZBISCgRuYW1lGAIgASgJUgRuYW1l');
@$core.Deprecated('Use updateOrderReplyDescriptor instead')
const UpdateOrderReply$json = const {
  '1': 'UpdateOrderReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `UpdateOrderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOrderReplyDescriptor = $convert.base64Decode('ChBVcGRhdGVPcmRlclJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
@$core.Deprecated('Use delOrderRequestDescriptor instead')
const DelOrderRequest$json = const {
  '1': 'DelOrderRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `DelOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delOrderRequestDescriptor = $convert.base64Decode('Cg9EZWxPcmRlclJlcXVlc3QSEgoEZ3VpZBgBIAEoCVIEZ3VpZA==');
@$core.Deprecated('Use delOrderReplyDescriptor instead')
const DelOrderReply$json = const {
  '1': 'DelOrderReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `DelOrderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delOrderReplyDescriptor = $convert.base64Decode('Cg1EZWxPcmRlclJlcGx5EhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');
