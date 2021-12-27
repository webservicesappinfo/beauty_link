///
//  Generated code. Do not modify.
//  source: notification.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'notification.pb.dart' as $0;
export 'notification.pb.dart';

class NotificationClient extends $grpc.Client {
  static final _$sendNotification =
      $grpc.ClientMethod<$0.SendNotificationRequest, $0.SendNotificationReply>(
          '/notification.Notification/SendNotification',
          ($0.SendNotificationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SendNotificationReply.fromBuffer(value));
  static final _$findLastGetMessage = $grpc.ClientMethod<
          $0.FindLastGetMessageRequest, $0.FindLastGetMessageReply>(
      '/notification.Notification/FindLastGetMessage',
      ($0.FindLastGetMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.FindLastGetMessageReply.fromBuffer(value));

  NotificationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SendNotificationReply> sendNotification(
      $0.SendNotificationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendNotification, request, options: options);
  }

  $grpc.ResponseFuture<$0.FindLastGetMessageReply> findLastGetMessage(
      $0.FindLastGetMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findLastGetMessage, request, options: options);
  }
}

abstract class NotificationServiceBase extends $grpc.Service {
  $core.String get $name => 'notification.Notification';

  NotificationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SendNotificationRequest,
            $0.SendNotificationReply>(
        'SendNotification',
        sendNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SendNotificationRequest.fromBuffer(value),
        ($0.SendNotificationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FindLastGetMessageRequest,
            $0.FindLastGetMessageReply>(
        'FindLastGetMessage',
        findLastGetMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.FindLastGetMessageRequest.fromBuffer(value),
        ($0.FindLastGetMessageReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.SendNotificationReply> sendNotification_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SendNotificationRequest> request) async {
    return sendNotification(call, await request);
  }

  $async.Future<$0.FindLastGetMessageReply> findLastGetMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FindLastGetMessageRequest> request) async {
    return findLastGetMessage(call, await request);
  }

  $async.Future<$0.SendNotificationReply> sendNotification(
      $grpc.ServiceCall call, $0.SendNotificationRequest request);
  $async.Future<$0.FindLastGetMessageReply> findLastGetMessage(
      $grpc.ServiceCall call, $0.FindLastGetMessageRequest request);
}
