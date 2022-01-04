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
    const {'1': 'offerGuid', '3': 2, '4': 1, '5': 9, '10': 'offerGuid'},
    const {'1': 'userName', '3': 3, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'masterName', '3': 4, '4': 1, '5': 9, '10': 'masterName'},
    const {'1': 'skillName', '3': 5, '4': 1, '5': 9, '10': 'skillName'},
    const {'1': 'userGuid', '3': 6, '4': 1, '5': 9, '10': 'userGuid'},
    const {'1': 'masterGuid', '3': 7, '4': 1, '5': 9, '10': 'masterGuid'},
    const {'1': 'skillGuid', '3': 8, '4': 1, '5': 9, '10': 'skillGuid'},
  ],
};

/// Descriptor for `AddOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addOrderRequestDescriptor = $convert.base64Decode('Cg9BZGRPcmRlclJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIcCglvZmZlckd1aWQYAiABKAlSCW9mZmVyR3VpZBIaCgh1c2VyTmFtZRgDIAEoCVIIdXNlck5hbWUSHgoKbWFzdGVyTmFtZRgEIAEoCVIKbWFzdGVyTmFtZRIcCglza2lsbE5hbWUYBSABKAlSCXNraWxsTmFtZRIaCgh1c2VyR3VpZBgGIAEoCVIIdXNlckd1aWQSHgoKbWFzdGVyR3VpZBgHIAEoCVIKbWFzdGVyR3VpZBIcCglza2lsbEd1aWQYCCABKAlSCXNraWxsR3VpZA==');
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
    const {'1': 'isMaster', '3': 2, '4': 1, '5': 8, '10': 'isMaster'},
  ],
};

/// Descriptor for `GetOrdersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrdersRequestDescriptor = $convert.base64Decode('ChBHZXRPcmRlcnNSZXF1ZXN0EhoKCHVzZXJHdWlkGAEgASgJUgh1c2VyR3VpZBIaCghpc01hc3RlchgCIAEoCFIIaXNNYXN0ZXI=');
@$core.Deprecated('Use getOrdersReplyDescriptor instead')
const GetOrdersReply$json = const {
  '1': 'GetOrdersReply',
  '2': const [
    const {'1': 'names', '3': 1, '4': 3, '5': 9, '10': 'names'},
    const {'1': 'guids', '3': 2, '4': 3, '5': 9, '10': 'guids'},
    const {'1': 'offerGuids', '3': 3, '4': 3, '5': 9, '10': 'offerGuids'},
    const {'1': 'userNames', '3': 4, '4': 3, '5': 9, '10': 'userNames'},
    const {'1': 'masterNames', '3': 5, '4': 3, '5': 9, '10': 'masterNames'},
    const {'1': 'skillNames', '3': 6, '4': 3, '5': 9, '10': 'skillNames'},
    const {'1': 'userGuids', '3': 7, '4': 3, '5': 9, '10': 'userGuids'},
    const {'1': 'masterGuids', '3': 8, '4': 3, '5': 9, '10': 'masterGuids'},
    const {'1': 'skillGuids', '3': 9, '4': 3, '5': 9, '10': 'skillGuids'},
    const {'1': 'statuses', '3': 10, '4': 3, '5': 9, '10': 'statuses'},
  ],
};

/// Descriptor for `GetOrdersReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrdersReplyDescriptor = $convert.base64Decode('Cg5HZXRPcmRlcnNSZXBseRIUCgVuYW1lcxgBIAMoCVIFbmFtZXMSFAoFZ3VpZHMYAiADKAlSBWd1aWRzEh4KCm9mZmVyR3VpZHMYAyADKAlSCm9mZmVyR3VpZHMSHAoJdXNlck5hbWVzGAQgAygJUgl1c2VyTmFtZXMSIAoLbWFzdGVyTmFtZXMYBSADKAlSC21hc3Rlck5hbWVzEh4KCnNraWxsTmFtZXMYBiADKAlSCnNraWxsTmFtZXMSHAoJdXNlckd1aWRzGAcgAygJUgl1c2VyR3VpZHMSIAoLbWFzdGVyR3VpZHMYCCADKAlSC21hc3Rlckd1aWRzEh4KCnNraWxsR3VpZHMYCSADKAlSCnNraWxsR3VpZHMSGgoIc3RhdHVzZXMYCiADKAlSCHN0YXR1c2Vz');
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
@$core.Deprecated('Use acceptedOrderRequestDescriptor instead')
const AcceptedOrderRequest$json = const {
  '1': 'AcceptedOrderRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `AcceptedOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptedOrderRequestDescriptor = $convert.base64Decode('ChRBY2NlcHRlZE9yZGVyUmVxdWVzdBISCgRndWlkGAEgASgJUgRndWlk');
@$core.Deprecated('Use acceptedOrderReplyDescriptor instead')
const AcceptedOrderReply$json = const {
  '1': 'AcceptedOrderReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'clientGuid', '3': 3, '4': 1, '5': 9, '10': 'clientGuid'},
    const {'1': 'masterGuid', '3': 4, '4': 1, '5': 9, '10': 'masterGuid'},
  ],
};

/// Descriptor for `AcceptedOrderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptedOrderReplyDescriptor = $convert.base64Decode('ChJBY2NlcHRlZE9yZGVyUmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQSEgoEbmFtZRgCIAEoCVIEbmFtZRIeCgpjbGllbnRHdWlkGAMgASgJUgpjbGllbnRHdWlkEh4KCm1hc3Rlckd1aWQYBCABKAlSCm1hc3Rlckd1aWQ=');
@$core.Deprecated('Use executedOrderRequestDescriptor instead')
const ExecutedOrderRequest$json = const {
  '1': 'ExecutedOrderRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `ExecutedOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executedOrderRequestDescriptor = $convert.base64Decode('ChRFeGVjdXRlZE9yZGVyUmVxdWVzdBISCgRndWlkGAEgASgJUgRndWlk');
@$core.Deprecated('Use executedOrderReplyDescriptor instead')
const ExecutedOrderReply$json = const {
  '1': 'ExecutedOrderReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `ExecutedOrderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executedOrderReplyDescriptor = $convert.base64Decode('ChJFeGVjdXRlZE9yZGVyUmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
