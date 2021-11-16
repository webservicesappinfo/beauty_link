///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../user/user.pb.dart' as $0;
import '../company/company.pb.dart' as $1;
import 'mobile_api.pb.dart' as $2;
export 'mobile_api.pb.dart';

class MobileApiClient extends $grpc.Client {
  static final _$apiAddUser =
      $grpc.ClientMethod<$0.AddUserRequest, $0.AddUserReply>(
          '/mobileApi.MobileApi/ApiAddUser',
          ($0.AddUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddUserReply.fromBuffer(value));
  static final _$apiGetUser =
      $grpc.ClientMethod<$0.GetUserRequest, $0.GetUserReply>(
          '/mobileApi.MobileApi/ApiGetUser',
          ($0.GetUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetUserReply.fromBuffer(value));
  static final _$apiGetUsers =
      $grpc.ClientMethod<$0.GetUsersRequest, $0.GetUsersReply>(
          '/mobileApi.MobileApi/ApiGetUsers',
          ($0.GetUsersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetUsersReply.fromBuffer(value));
  static final _$apiAddCompany =
      $grpc.ClientMethod<$1.AddCompanyRequest, $1.AddCompanyReply>(
          '/mobileApi.MobileApi/ApiAddCompany',
          ($1.AddCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AddCompanyReply.fromBuffer(value));
  static final _$apiGetCompany =
      $grpc.ClientMethod<$1.GetCompanyRequest, $1.GetCompanyReply>(
          '/mobileApi.MobileApi/ApiGetCompany',
          ($1.GetCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetCompanyReply.fromBuffer(value));
  static final _$apiGetCompanies =
      $grpc.ClientMethod<$1.GetCompaniesRequest, $1.GetCompaniesReply>(
          '/mobileApi.MobileApi/ApiGetCompanies',
          ($1.GetCompaniesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetCompaniesReply.fromBuffer(value));
  static final _$apiSendMessage =
      $grpc.ClientMethod<$2.ApiSendMessageRequest, $2.ApiSendMessageReply>(
          '/mobileApi.MobileApi/ApiSendMessage',
          ($2.ApiSendMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ApiSendMessageReply.fromBuffer(value));
  static final _$apiFindLastMessage = $grpc.ClientMethod<
          $2.ApiFindLastMessageRequest, $2.ApiFindLastMessagesReply>(
      '/mobileApi.MobileApi/ApiFindLastMessage',
      ($2.ApiFindLastMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ApiFindLastMessagesReply.fromBuffer(value));
  static final _$apiGetUserLocation = $grpc.ClientMethod<
          $2.ApiGetUserLocationRequest, $2.ApiGetUserLocationReply>(
      '/mobileApi.MobileApi/ApiGetUserLocation',
      ($2.ApiGetUserLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ApiGetUserLocationReply.fromBuffer(value));
  static final _$apiSetUserLocation = $grpc.ClientMethod<
          $2.ApiSetUserLocationRequest, $2.ApiSetUserLocationReply>(
      '/mobileApi.MobileApi/ApiSetUserLocation',
      ($2.ApiSetUserLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ApiSetUserLocationReply.fromBuffer(value));

  MobileApiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddUserReply> apiAddUser($0.AddUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiAddUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetUserReply> apiGetUser($0.GetUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetUsersReply> apiGetUsers($0.GetUsersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetUsers, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddCompanyReply> apiAddCompany(
      $1.AddCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiAddCompany, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetCompanyReply> apiGetCompany(
      $1.GetCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetCompany, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetCompaniesReply> apiGetCompanies(
      $1.GetCompaniesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetCompanies, request, options: options);
  }

  $grpc.ResponseFuture<$2.ApiSendMessageReply> apiSendMessage(
      $2.ApiSendMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiSendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$2.ApiFindLastMessagesReply> apiFindLastMessage(
      $2.ApiFindLastMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiFindLastMessage, request, options: options);
  }

  $grpc.ResponseFuture<$2.ApiGetUserLocationReply> apiGetUserLocation(
      $2.ApiGetUserLocationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetUserLocation, request, options: options);
  }

  $grpc.ResponseFuture<$2.ApiSetUserLocationReply> apiSetUserLocation(
      $2.ApiSetUserLocationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiSetUserLocation, request, options: options);
  }
}

abstract class MobileApiServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileApi.MobileApi';

  MobileApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddUserRequest, $0.AddUserReply>(
        'ApiAddUser',
        apiAddUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddUserRequest.fromBuffer(value),
        ($0.AddUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUserRequest, $0.GetUserReply>(
        'ApiGetUser',
        apiGetUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUserRequest.fromBuffer(value),
        ($0.GetUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUsersRequest, $0.GetUsersReply>(
        'ApiGetUsers',
        apiGetUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUsersRequest.fromBuffer(value),
        ($0.GetUsersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddCompanyRequest, $1.AddCompanyReply>(
        'ApiAddCompany',
        apiAddCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddCompanyRequest.fromBuffer(value),
        ($1.AddCompanyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetCompanyRequest, $1.GetCompanyReply>(
        'ApiGetCompany',
        apiGetCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetCompanyRequest.fromBuffer(value),
        ($1.GetCompanyReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetCompaniesRequest, $1.GetCompaniesReply>(
            'ApiGetCompanies',
            apiGetCompanies_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetCompaniesRequest.fromBuffer(value),
            ($1.GetCompaniesReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ApiSendMessageRequest, $2.ApiSendMessageReply>(
            'ApiSendMessage',
            apiSendMessage_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ApiSendMessageRequest.fromBuffer(value),
            ($2.ApiSendMessageReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ApiFindLastMessageRequest,
            $2.ApiFindLastMessagesReply>(
        'ApiFindLastMessage',
        apiFindLastMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ApiFindLastMessageRequest.fromBuffer(value),
        ($2.ApiFindLastMessagesReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ApiGetUserLocationRequest,
            $2.ApiGetUserLocationReply>(
        'ApiGetUserLocation',
        apiGetUserLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ApiGetUserLocationRequest.fromBuffer(value),
        ($2.ApiGetUserLocationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ApiSetUserLocationRequest,
            $2.ApiSetUserLocationReply>(
        'ApiSetUserLocation',
        apiSetUserLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ApiSetUserLocationRequest.fromBuffer(value),
        ($2.ApiSetUserLocationReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddUserReply> apiAddUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddUserRequest> request) async {
    return apiAddUser(call, await request);
  }

  $async.Future<$0.GetUserReply> apiGetUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetUserRequest> request) async {
    return apiGetUser(call, await request);
  }

  $async.Future<$0.GetUsersReply> apiGetUsers_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetUsersRequest> request) async {
    return apiGetUsers(call, await request);
  }

  $async.Future<$1.AddCompanyReply> apiAddCompany_Pre($grpc.ServiceCall call,
      $async.Future<$1.AddCompanyRequest> request) async {
    return apiAddCompany(call, await request);
  }

  $async.Future<$1.GetCompanyReply> apiGetCompany_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetCompanyRequest> request) async {
    return apiGetCompany(call, await request);
  }

  $async.Future<$1.GetCompaniesReply> apiGetCompanies_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetCompaniesRequest> request) async {
    return apiGetCompanies(call, await request);
  }

  $async.Future<$2.ApiSendMessageReply> apiSendMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ApiSendMessageRequest> request) async {
    return apiSendMessage(call, await request);
  }

  $async.Future<$2.ApiFindLastMessagesReply> apiFindLastMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ApiFindLastMessageRequest> request) async {
    return apiFindLastMessage(call, await request);
  }

  $async.Future<$2.ApiGetUserLocationReply> apiGetUserLocation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ApiGetUserLocationRequest> request) async {
    return apiGetUserLocation(call, await request);
  }

  $async.Future<$2.ApiSetUserLocationReply> apiSetUserLocation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ApiSetUserLocationRequest> request) async {
    return apiSetUserLocation(call, await request);
  }

  $async.Future<$0.AddUserReply> apiAddUser(
      $grpc.ServiceCall call, $0.AddUserRequest request);
  $async.Future<$0.GetUserReply> apiGetUser(
      $grpc.ServiceCall call, $0.GetUserRequest request);
  $async.Future<$0.GetUsersReply> apiGetUsers(
      $grpc.ServiceCall call, $0.GetUsersRequest request);
  $async.Future<$1.AddCompanyReply> apiAddCompany(
      $grpc.ServiceCall call, $1.AddCompanyRequest request);
  $async.Future<$1.GetCompanyReply> apiGetCompany(
      $grpc.ServiceCall call, $1.GetCompanyRequest request);
  $async.Future<$1.GetCompaniesReply> apiGetCompanies(
      $grpc.ServiceCall call, $1.GetCompaniesRequest request);
  $async.Future<$2.ApiSendMessageReply> apiSendMessage(
      $grpc.ServiceCall call, $2.ApiSendMessageRequest request);
  $async.Future<$2.ApiFindLastMessagesReply> apiFindLastMessage(
      $grpc.ServiceCall call, $2.ApiFindLastMessageRequest request);
  $async.Future<$2.ApiGetUserLocationReply> apiGetUserLocation(
      $grpc.ServiceCall call, $2.ApiGetUserLocationRequest request);
  $async.Future<$2.ApiSetUserLocationReply> apiSetUserLocation(
      $grpc.ServiceCall call, $2.ApiSetUserLocationRequest request);
}
