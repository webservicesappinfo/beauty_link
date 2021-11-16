///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use apiFindLastMessageRequestDescriptor instead')
const ApiFindLastMessageRequest$json = const {
  '1': 'ApiFindLastMessageRequest',
  '2': const [
    const {'1': 'fromGuid', '3': 1, '4': 1, '5': 9, '10': 'fromGuid'},
    const {'1': 'forGuid', '3': 2, '4': 1, '5': 9, '10': 'forGuid'},
  ],
};

/// Descriptor for `ApiFindLastMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiFindLastMessageRequestDescriptor = $convert.base64Decode('ChlBcGlGaW5kTGFzdE1lc3NhZ2VSZXF1ZXN0EhoKCGZyb21HdWlkGAEgASgJUghmcm9tR3VpZBIYCgdmb3JHdWlkGAIgASgJUgdmb3JHdWlk');
@$core.Deprecated('Use apiFindLastMessagesReplyDescriptor instead')
const ApiFindLastMessagesReply$json = const {
  '1': 'ApiFindLastMessagesReply',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `ApiFindLastMessagesReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiFindLastMessagesReplyDescriptor = $convert.base64Decode('ChhBcGlGaW5kTGFzdE1lc3NhZ2VzUmVwbHkSEAoDbXNnGAEgASgJUgNtc2c=');
@$core.Deprecated('Use apiSendMessageRequestDescriptor instead')
const ApiSendMessageRequest$json = const {
  '1': 'ApiSendMessageRequest',
  '2': const [
    const {'1': 'forGuid', '3': 1, '4': 1, '5': 9, '10': 'forGuid'},
    const {'1': 'fromGuid', '3': 2, '4': 1, '5': 9, '10': 'fromGuid'},
    const {'1': 'msg', '3': 3, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `ApiSendMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiSendMessageRequestDescriptor = $convert.base64Decode('ChVBcGlTZW5kTWVzc2FnZVJlcXVlc3QSGAoHZm9yR3VpZBgBIAEoCVIHZm9yR3VpZBIaCghmcm9tR3VpZBgCIAEoCVIIZnJvbUd1aWQSEAoDbXNnGAMgASgJUgNtc2c=');
@$core.Deprecated('Use apiSendMessageReplyDescriptor instead')
const ApiSendMessageReply$json = const {
  '1': 'ApiSendMessageReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `ApiSendMessageReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiSendMessageReplyDescriptor = $convert.base64Decode('ChNBcGlTZW5kTWVzc2FnZVJlcGx5EhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');
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
