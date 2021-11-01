///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'mobile_api.pb.dart' as $0;
export 'mobile_api.pb.dart';

class MobileApiClient extends $grpc.Client {
  static final _$apiAddUser =
      $grpc.ClientMethod<$0.ApiAddUserRequest, $0.ApiAddUserReply>(
          '/mobileApi.MobileApi/ApiAddUser',
          ($0.ApiAddUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ApiAddUserReply.fromBuffer(value));
  static final _$apiGetUser =
      $grpc.ClientMethod<$0.ApiGetUserRequest, $0.ApiGetUserReply>(
          '/mobileApi.MobileApi/ApiGetUser',
          ($0.ApiGetUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ApiGetUserReply.fromBuffer(value));
  static final _$apiGetUsers =
      $grpc.ClientMethod<$0.ApiGetUsersRequest, $0.ApiGetUsersReply>(
          '/mobileApi.MobileApi/ApiGetUsers',
          ($0.ApiGetUsersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ApiGetUsersReply.fromBuffer(value));
  static final _$apiSendMessage =
      $grpc.ClientMethod<$0.ApiSendMessageRequest, $0.ApiSendMessageReply>(
          '/mobileApi.MobileApi/ApiSendMessage',
          ($0.ApiSendMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ApiSendMessageReply.fromBuffer(value));
  static final _$apiFindLastMessage = $grpc.ClientMethod<
          $0.ApiFindLastMessageRequest, $0.ApiFindLastMessagesReply>(
      '/mobileApi.MobileApi/ApiFindLastMessage',
      ($0.ApiFindLastMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ApiFindLastMessagesReply.fromBuffer(value));
  static final _$apiGetUserLocation = $grpc.ClientMethod<
          $0.ApiGetUserLocationRequest, $0.ApiGetUserLocationReply>(
      '/mobileApi.MobileApi/ApiGetUserLocation',
      ($0.ApiGetUserLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ApiGetUserLocationReply.fromBuffer(value));
  static final _$apiSetUserLocation = $grpc.ClientMethod<
          $0.ApiSetUserLocationRequest, $0.ApiSetUserLocationReply>(
      '/mobileApi.MobileApi/ApiSetUserLocation',
      ($0.ApiSetUserLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ApiSetUserLocationReply.fromBuffer(value));

  MobileApiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ApiAddUserReply> apiAddUser(
      $0.ApiAddUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiAddUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApiGetUserReply> apiGetUser(
      $0.ApiGetUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApiGetUsersReply> apiGetUsers(
      $0.ApiGetUsersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetUsers, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApiSendMessageReply> apiSendMessage(
      $0.ApiSendMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiSendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApiFindLastMessagesReply> apiFindLastMessage(
      $0.ApiFindLastMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiFindLastMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApiGetUserLocationReply> apiGetUserLocation(
      $0.ApiGetUserLocationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetUserLocation, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApiSetUserLocationReply> apiSetUserLocation(
      $0.ApiSetUserLocationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiSetUserLocation, request, options: options);
  }
}

abstract class MobileApiServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileApi.MobileApi';

  MobileApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ApiAddUserRequest, $0.ApiAddUserReply>(
        'ApiAddUser',
        apiAddUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ApiAddUserRequest.fromBuffer(value),
        ($0.ApiAddUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApiGetUserRequest, $0.ApiGetUserReply>(
        'ApiGetUser',
        apiGetUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ApiGetUserRequest.fromBuffer(value),
        ($0.ApiGetUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApiGetUsersRequest, $0.ApiGetUsersReply>(
        'ApiGetUsers',
        apiGetUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ApiGetUsersRequest.fromBuffer(value),
        ($0.ApiGetUsersReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ApiSendMessageRequest, $0.ApiSendMessageReply>(
            'ApiSendMessage',
            apiSendMessage_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ApiSendMessageRequest.fromBuffer(value),
            ($0.ApiSendMessageReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApiFindLastMessageRequest,
            $0.ApiFindLastMessagesReply>(
        'ApiFindLastMessage',
        apiFindLastMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ApiFindLastMessageRequest.fromBuffer(value),
        ($0.ApiFindLastMessagesReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApiGetUserLocationRequest,
            $0.ApiGetUserLocationReply>(
        'ApiGetUserLocation',
        apiGetUserLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ApiGetUserLocationRequest.fromBuffer(value),
        ($0.ApiGetUserLocationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApiSetUserLocationRequest,
            $0.ApiSetUserLocationReply>(
        'ApiSetUserLocation',
        apiSetUserLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ApiSetUserLocationRequest.fromBuffer(value),
        ($0.ApiSetUserLocationReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.ApiAddUserReply> apiAddUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.ApiAddUserRequest> request) async {
    return apiAddUser(call, await request);
  }

  $async.Future<$0.ApiGetUserReply> apiGetUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.ApiGetUserRequest> request) async {
    return apiGetUser(call, await request);
  }

  $async.Future<$0.ApiGetUsersReply> apiGetUsers_Pre($grpc.ServiceCall call,
      $async.Future<$0.ApiGetUsersRequest> request) async {
    return apiGetUsers(call, await request);
  }

  $async.Future<$0.ApiSendMessageReply> apiSendMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ApiSendMessageRequest> request) async {
    return apiSendMessage(call, await request);
  }

  $async.Future<$0.ApiFindLastMessagesReply> apiFindLastMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ApiFindLastMessageRequest> request) async {
    return apiFindLastMessage(call, await request);
  }

  $async.Future<$0.ApiGetUserLocationReply> apiGetUserLocation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ApiGetUserLocationRequest> request) async {
    return apiGetUserLocation(call, await request);
  }

  $async.Future<$0.ApiSetUserLocationReply> apiSetUserLocation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ApiSetUserLocationRequest> request) async {
    return apiSetUserLocation(call, await request);
  }

  $async.Future<$0.ApiAddUserReply> apiAddUser(
      $grpc.ServiceCall call, $0.ApiAddUserRequest request);
  $async.Future<$0.ApiGetUserReply> apiGetUser(
      $grpc.ServiceCall call, $0.ApiGetUserRequest request);
  $async.Future<$0.ApiGetUsersReply> apiGetUsers(
      $grpc.ServiceCall call, $0.ApiGetUsersRequest request);
  $async.Future<$0.ApiSendMessageReply> apiSendMessage(
      $grpc.ServiceCall call, $0.ApiSendMessageRequest request);
  $async.Future<$0.ApiFindLastMessagesReply> apiFindLastMessage(
      $grpc.ServiceCall call, $0.ApiFindLastMessageRequest request);
  $async.Future<$0.ApiGetUserLocationReply> apiGetUserLocation(
      $grpc.ServiceCall call, $0.ApiGetUserLocationRequest request);
  $async.Future<$0.ApiSetUserLocationReply> apiSetUserLocation(
      $grpc.ServiceCall call, $0.ApiSetUserLocationRequest request);
}
