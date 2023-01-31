///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'mobile_api.pb.dart' as $2;
import 'msg.pb.dart' as $3;
import 'user.pb.dart' as $0;
import 'notification.pb.dart' as $1;
export 'mobile_api.pb.dart';

class MobileApiClient extends $grpc.Client {
  static final _$getMainDataForUser = $grpc.ClientMethod<
          $2.GetMainDataForUserRequest, $2.GetMainDataForUserReply>(
      '/mobileApi.MobileApi/GetMainDataForUser',
      ($2.GetMainDataForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.GetMainDataForUserReply.fromBuffer(value));
  static final _$getFitForCompanyUsers = $grpc.ClientMethod<
          $2.GetFitForCompanyUsersRequest, $2.GetFitForCompanyUsersReply>(
      '/mobileApi.MobileApi/GetFitForCompanyUsers',
      ($2.GetFitForCompanyUsersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.GetFitForCompanyUsersReply.fromBuffer(value));
  static final _$addCompany =
      $grpc.ClientMethod<$3.AddCompanyRequest, $3.AddCompanyReply>(
          '/mobileApi.MobileApi/AddCompany',
          ($3.AddCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.AddCompanyReply.fromBuffer(value));
  static final _$delCompany =
      $grpc.ClientMethod<$3.DelCompanyRequest, $3.DelCompanyReply>(
          '/mobileApi.MobileApi/DelCompany',
          ($3.DelCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.DelCompanyReply.fromBuffer(value));
  static final _$addMaster =
      $grpc.ClientMethod<$3.AddMasterRequest, $3.AddMasterReply>(
          '/mobileApi.MobileApi/AddMaster',
          ($3.AddMasterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.AddMasterReply.fromBuffer(value));
  static final _$delMaster =
      $grpc.ClientMethod<$3.DelMasterRequest, $3.DelMasterReply>(
          '/mobileApi.MobileApi/DelMaster',
          ($3.DelMasterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.DelMasterReply.fromBuffer(value));
  static final _$addOffer =
      $grpc.ClientMethod<$3.AddOfferRequest, $3.AddOfferReply>(
          '/mobileApi.MobileApi/AddOffer',
          ($3.AddOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.AddOfferReply.fromBuffer(value));
  static final _$delOffer =
      $grpc.ClientMethod<$3.DelOfferRequest, $3.DelOfferReply>(
          '/mobileApi.MobileApi/DelOffer',
          ($3.DelOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.DelOfferReply.fromBuffer(value));
  static final _$apiGetOffers =
      $grpc.ClientMethod<$3.GetOffersRequest, $3.GetOffersReply>(
          '/mobileApi.MobileApi/ApiGetOffers',
          ($3.GetOffersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.GetOffersReply.fromBuffer(value));
  static final _$addOrder =
      $grpc.ClientMethod<$3.AddOrderRequest, $3.AddOrderReply>(
          '/mobileApi.MobileApi/AddOrder',
          ($3.AddOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.AddOrderReply.fromBuffer(value));
  static final _$delOrder =
      $grpc.ClientMethod<$3.DelOrderRequest, $3.DelOrderReply>(
          '/mobileApi.MobileApi/DelOrder',
          ($3.DelOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.DelOrderReply.fromBuffer(value));
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
  static final _$apiDelUser =
      $grpc.ClientMethod<$0.DelUserRequest, $0.DelUserReply>(
          '/mobileApi.MobileApi/ApiDelUser',
          ($0.DelUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DelUserReply.fromBuffer(value));
  static final _$apiSendMessage =
      $grpc.ClientMethod<$1.SendNotificationRequest, $1.SendNotificationReply>(
          '/mobileApi.MobileApi/ApiSendMessage',
          ($1.SendNotificationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SendNotificationReply.fromBuffer(value));
  static final _$apiFindLastMessage = $grpc.ClientMethod<
          $1.FindLastGetMessageRequest, $1.FindLastGetMessageReply>(
      '/mobileApi.MobileApi/ApiFindLastMessage',
      ($1.FindLastGetMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.FindLastGetMessageReply.fromBuffer(value));
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

  $grpc.ResponseFuture<$2.GetMainDataForUserReply> getMainDataForUser(
      $2.GetMainDataForUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMainDataForUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetFitForCompanyUsersReply> getFitForCompanyUsers(
      $2.GetFitForCompanyUsersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFitForCompanyUsers, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddCompanyReply> addCompany(
      $3.AddCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addCompany, request, options: options);
  }

  $grpc.ResponseFuture<$3.DelCompanyReply> delCompany(
      $3.DelCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delCompany, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddMasterReply> addMaster($3.AddMasterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMaster, request, options: options);
  }

  $grpc.ResponseFuture<$3.DelMasterReply> delMaster($3.DelMasterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delMaster, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddOfferReply> addOffer($3.AddOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addOffer, request, options: options);
  }

  $grpc.ResponseFuture<$3.DelOfferReply> delOffer($3.DelOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delOffer, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetOffersReply> apiGetOffers(
      $3.GetOffersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetOffers, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddOrderReply> addOrder($3.AddOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addOrder, request, options: options);
  }

  $grpc.ResponseFuture<$3.DelOrderReply> delOrder($3.DelOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delOrder, request, options: options);
  }

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

  $grpc.ResponseFuture<$0.DelUserReply> apiDelUser($0.DelUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiDelUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.SendNotificationReply> apiSendMessage(
      $1.SendNotificationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiSendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$1.FindLastGetMessageReply> apiFindLastMessage(
      $1.FindLastGetMessageRequest request,
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
    $addMethod($grpc.ServiceMethod<$2.GetMainDataForUserRequest,
            $2.GetMainDataForUserReply>(
        'GetMainDataForUser',
        getMainDataForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GetMainDataForUserRequest.fromBuffer(value),
        ($2.GetMainDataForUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetFitForCompanyUsersRequest,
            $2.GetFitForCompanyUsersReply>(
        'GetFitForCompanyUsers',
        getFitForCompanyUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GetFitForCompanyUsersRequest.fromBuffer(value),
        ($2.GetFitForCompanyUsersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddCompanyRequest, $3.AddCompanyReply>(
        'AddCompany',
        addCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddCompanyRequest.fromBuffer(value),
        ($3.AddCompanyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DelCompanyRequest, $3.DelCompanyReply>(
        'DelCompany',
        delCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DelCompanyRequest.fromBuffer(value),
        ($3.DelCompanyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddMasterRequest, $3.AddMasterReply>(
        'AddMaster',
        addMaster_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddMasterRequest.fromBuffer(value),
        ($3.AddMasterReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DelMasterRequest, $3.DelMasterReply>(
        'DelMaster',
        delMaster_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DelMasterRequest.fromBuffer(value),
        ($3.DelMasterReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddOfferRequest, $3.AddOfferReply>(
        'AddOffer',
        addOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddOfferRequest.fromBuffer(value),
        ($3.AddOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DelOfferRequest, $3.DelOfferReply>(
        'DelOffer',
        delOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DelOfferRequest.fromBuffer(value),
        ($3.DelOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetOffersRequest, $3.GetOffersReply>(
        'ApiGetOffers',
        apiGetOffers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetOffersRequest.fromBuffer(value),
        ($3.GetOffersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddOrderRequest, $3.AddOrderReply>(
        'AddOrder',
        addOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddOrderRequest.fromBuffer(value),
        ($3.AddOrderReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DelOrderRequest, $3.DelOrderReply>(
        'DelOrder',
        delOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DelOrderRequest.fromBuffer(value),
        ($3.DelOrderReply value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.DelUserRequest, $0.DelUserReply>(
        'ApiDelUser',
        apiDelUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelUserRequest.fromBuffer(value),
        ($0.DelUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SendNotificationRequest,
            $1.SendNotificationReply>(
        'ApiSendMessage',
        apiSendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SendNotificationRequest.fromBuffer(value),
        ($1.SendNotificationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.FindLastGetMessageRequest,
            $1.FindLastGetMessageReply>(
        'ApiFindLastMessage',
        apiFindLastMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.FindLastGetMessageRequest.fromBuffer(value),
        ($1.FindLastGetMessageReply value) => value.writeToBuffer()));
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

  $async.Future<$2.GetMainDataForUserReply> getMainDataForUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetMainDataForUserRequest> request) async {
    return getMainDataForUser(call, await request);
  }

  $async.Future<$2.GetFitForCompanyUsersReply> getFitForCompanyUsers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetFitForCompanyUsersRequest> request) async {
    return getFitForCompanyUsers(call, await request);
  }

  $async.Future<$3.AddCompanyReply> addCompany_Pre($grpc.ServiceCall call,
      $async.Future<$3.AddCompanyRequest> request) async {
    return addCompany(call, await request);
  }

  $async.Future<$3.DelCompanyReply> delCompany_Pre($grpc.ServiceCall call,
      $async.Future<$3.DelCompanyRequest> request) async {
    return delCompany(call, await request);
  }

  $async.Future<$3.AddMasterReply> addMaster_Pre($grpc.ServiceCall call,
      $async.Future<$3.AddMasterRequest> request) async {
    return addMaster(call, await request);
  }

  $async.Future<$3.DelMasterReply> delMaster_Pre($grpc.ServiceCall call,
      $async.Future<$3.DelMasterRequest> request) async {
    return delMaster(call, await request);
  }

  $async.Future<$3.AddOfferReply> addOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AddOfferRequest> request) async {
    return addOffer(call, await request);
  }

  $async.Future<$3.DelOfferReply> delOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$3.DelOfferRequest> request) async {
    return delOffer(call, await request);
  }

  $async.Future<$3.GetOffersReply> apiGetOffers_Pre($grpc.ServiceCall call,
      $async.Future<$3.GetOffersRequest> request) async {
    return apiGetOffers(call, await request);
  }

  $async.Future<$3.AddOrderReply> addOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AddOrderRequest> request) async {
    return addOrder(call, await request);
  }

  $async.Future<$3.DelOrderReply> delOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$3.DelOrderRequest> request) async {
    return delOrder(call, await request);
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

  $async.Future<$0.DelUserReply> apiDelUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DelUserRequest> request) async {
    return apiDelUser(call, await request);
  }

  $async.Future<$1.SendNotificationReply> apiSendMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SendNotificationRequest> request) async {
    return apiSendMessage(call, await request);
  }

  $async.Future<$1.FindLastGetMessageReply> apiFindLastMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.FindLastGetMessageRequest> request) async {
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

  $async.Future<$2.GetMainDataForUserReply> getMainDataForUser(
      $grpc.ServiceCall call, $2.GetMainDataForUserRequest request);
  $async.Future<$2.GetFitForCompanyUsersReply> getFitForCompanyUsers(
      $grpc.ServiceCall call, $2.GetFitForCompanyUsersRequest request);
  $async.Future<$3.AddCompanyReply> addCompany(
      $grpc.ServiceCall call, $3.AddCompanyRequest request);
  $async.Future<$3.DelCompanyReply> delCompany(
      $grpc.ServiceCall call, $3.DelCompanyRequest request);
  $async.Future<$3.AddMasterReply> addMaster(
      $grpc.ServiceCall call, $3.AddMasterRequest request);
  $async.Future<$3.DelMasterReply> delMaster(
      $grpc.ServiceCall call, $3.DelMasterRequest request);
  $async.Future<$3.AddOfferReply> addOffer(
      $grpc.ServiceCall call, $3.AddOfferRequest request);
  $async.Future<$3.DelOfferReply> delOffer(
      $grpc.ServiceCall call, $3.DelOfferRequest request);
  $async.Future<$3.GetOffersReply> apiGetOffers(
      $grpc.ServiceCall call, $3.GetOffersRequest request);
  $async.Future<$3.AddOrderReply> addOrder(
      $grpc.ServiceCall call, $3.AddOrderRequest request);
  $async.Future<$3.DelOrderReply> delOrder(
      $grpc.ServiceCall call, $3.DelOrderRequest request);
  $async.Future<$0.AddUserReply> apiAddUser(
      $grpc.ServiceCall call, $0.AddUserRequest request);
  $async.Future<$0.GetUserReply> apiGetUser(
      $grpc.ServiceCall call, $0.GetUserRequest request);
  $async.Future<$0.GetUsersReply> apiGetUsers(
      $grpc.ServiceCall call, $0.GetUsersRequest request);
  $async.Future<$0.DelUserReply> apiDelUser(
      $grpc.ServiceCall call, $0.DelUserRequest request);
  $async.Future<$1.SendNotificationReply> apiSendMessage(
      $grpc.ServiceCall call, $1.SendNotificationRequest request);
  $async.Future<$1.FindLastGetMessageReply> apiFindLastMessage(
      $grpc.ServiceCall call, $1.FindLastGetMessageRequest request);
  $async.Future<$2.ApiGetUserLocationReply> apiGetUserLocation(
      $grpc.ServiceCall call, $2.ApiGetUserLocationRequest request);
  $async.Future<$2.ApiSetUserLocationReply> apiSetUserLocation(
      $grpc.ServiceCall call, $2.ApiSetUserLocationRequest request);
}
