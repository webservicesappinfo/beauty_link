///
//  Generated code. Do not modify.
//  source: notification.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
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
