///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'mobile_api.pb.dart' as $0;
export 'mobile_api.pb.dart';

class MobileApiClient extends $grpc.Client {
  static final _$getMainDataForUser = $grpc.ClientMethod<
          $0.GetMainDataForUserRequest, $0.GetMainDataForUserReply>(
      '/mobileApi.MobileApi/GetMainDataForUser',
      ($0.GetMainDataForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetMainDataForUserReply.fromBuffer(value));
  static final _$getFitForCompanyUsers = $grpc.ClientMethod<
          $0.GetFitForCompanyUsersRequest, $0.GetFitForCompanyUsersReply>(
      '/mobileApi.MobileApi/GetFitForCompanyUsers',
      ($0.GetFitForCompanyUsersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetFitForCompanyUsersReply.fromBuffer(value));
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
  static final _$addCompany =
      $grpc.ClientMethod<$0.AddCompanyRequest, $0.AddCompanyReply>(
          '/mobileApi.MobileApi/AddCompany',
          ($0.AddCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddCompanyReply.fromBuffer(value));
  static final _$delCompany =
      $grpc.ClientMethod<$0.DelCompanyRequest, $0.DelCompanyReply>(
          '/mobileApi.MobileApi/DelCompany',
          ($0.DelCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DelCompanyReply.fromBuffer(value));
  static final _$addMaster =
      $grpc.ClientMethod<$0.AddMasterRequest, $0.AddMasterReply>(
          '/mobileApi.MobileApi/AddMaster',
          ($0.AddMasterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddMasterReply.fromBuffer(value));
  static final _$delMaster =
      $grpc.ClientMethod<$0.DelMasterRequest, $0.DelMasterReply>(
          '/mobileApi.MobileApi/DelMaster',
          ($0.DelMasterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DelMasterReply.fromBuffer(value));
  static final _$addOffer =
      $grpc.ClientMethod<$0.AddOfferRequest, $0.AddOfferReply>(
          '/mobileApi.MobileApi/AddOffer',
          ($0.AddOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddOfferReply.fromBuffer(value));
  static final _$delOffer =
      $grpc.ClientMethod<$0.DelOfferRequest, $0.DelOfferReply>(
          '/mobileApi.MobileApi/DelOffer',
          ($0.DelOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DelOfferReply.fromBuffer(value));
  static final _$apiGetOffers =
      $grpc.ClientMethod<$0.GetOffersRequest, $0.GetOffersReply>(
          '/mobileApi.MobileApi/ApiGetOffers',
          ($0.GetOffersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetOffersReply.fromBuffer(value));
  static final _$addOrder =
      $grpc.ClientMethod<$0.AddOrderRequest, $0.AddOrderReply>(
          '/mobileApi.MobileApi/AddOrder',
          ($0.AddOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddOrderReply.fromBuffer(value));
  static final _$delOrder =
      $grpc.ClientMethod<$0.DelOrderRequest, $0.DelOrderReply>(
          '/mobileApi.MobileApi/DelOrder',
          ($0.DelOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DelOrderReply.fromBuffer(value));
  static final _$apiSendMessage =
      $grpc.ClientMethod<$0.SendNotificationRequest, $0.SendNotificationReply>(
          '/mobileApi.MobileApi/ApiSendMessage',
          ($0.SendNotificationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SendNotificationReply.fromBuffer(value));
  static final _$apiFindLastMessage = $grpc.ClientMethod<
          $0.FindLastGetMessageRequest, $0.FindLastGetMessageReply>(
      '/mobileApi.MobileApi/ApiFindLastMessage',
      ($0.FindLastGetMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.FindLastGetMessageReply.fromBuffer(value));
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

  $grpc.ResponseFuture<$0.GetMainDataForUserReply> getMainDataForUser(
      $0.GetMainDataForUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMainDataForUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetFitForCompanyUsersReply> getFitForCompanyUsers(
      $0.GetFitForCompanyUsersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFitForCompanyUsers, request, options: options);
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

  $grpc.ResponseFuture<$0.AddCompanyReply> addCompany(
      $0.AddCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addCompany, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelCompanyReply> delCompany(
      $0.DelCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delCompany, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddMasterReply> addMaster($0.AddMasterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMaster, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelMasterReply> delMaster($0.DelMasterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delMaster, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddOfferReply> addOffer($0.AddOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addOffer, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelOfferReply> delOffer($0.DelOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delOffer, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetOffersReply> apiGetOffers(
      $0.GetOffersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetOffers, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddOrderReply> addOrder($0.AddOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addOrder, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelOrderReply> delOrder($0.DelOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delOrder, request, options: options);
  }

  $grpc.ResponseFuture<$0.SendNotificationReply> apiSendMessage(
      $0.SendNotificationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiSendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.FindLastGetMessageReply> apiFindLastMessage(
      $0.FindLastGetMessageRequest request,
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
    $addMethod($grpc.ServiceMethod<$0.GetMainDataForUserRequest,
            $0.GetMainDataForUserReply>(
        'GetMainDataForUser',
        getMainDataForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetMainDataForUserRequest.fromBuffer(value),
        ($0.GetMainDataForUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetFitForCompanyUsersRequest,
            $0.GetFitForCompanyUsersReply>(
        'GetFitForCompanyUsers',
        getFitForCompanyUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetFitForCompanyUsersRequest.fromBuffer(value),
        ($0.GetFitForCompanyUsersReply value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.AddCompanyRequest, $0.AddCompanyReply>(
        'AddCompany',
        addCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddCompanyRequest.fromBuffer(value),
        ($0.AddCompanyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelCompanyRequest, $0.DelCompanyReply>(
        'DelCompany',
        delCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelCompanyRequest.fromBuffer(value),
        ($0.DelCompanyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddMasterRequest, $0.AddMasterReply>(
        'AddMaster',
        addMaster_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddMasterRequest.fromBuffer(value),
        ($0.AddMasterReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelMasterRequest, $0.DelMasterReply>(
        'DelMaster',
        delMaster_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelMasterRequest.fromBuffer(value),
        ($0.DelMasterReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddOfferRequest, $0.AddOfferReply>(
        'AddOffer',
        addOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddOfferRequest.fromBuffer(value),
        ($0.AddOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelOfferRequest, $0.DelOfferReply>(
        'DelOffer',
        delOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelOfferRequest.fromBuffer(value),
        ($0.DelOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetOffersRequest, $0.GetOffersReply>(
        'ApiGetOffers',
        apiGetOffers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetOffersRequest.fromBuffer(value),
        ($0.GetOffersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddOrderRequest, $0.AddOrderReply>(
        'AddOrder',
        addOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddOrderRequest.fromBuffer(value),
        ($0.AddOrderReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelOrderRequest, $0.DelOrderReply>(
        'DelOrder',
        delOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelOrderRequest.fromBuffer(value),
        ($0.DelOrderReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendNotificationRequest,
            $0.SendNotificationReply>(
        'ApiSendMessage',
        apiSendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SendNotificationRequest.fromBuffer(value),
        ($0.SendNotificationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FindLastGetMessageRequest,
            $0.FindLastGetMessageReply>(
        'ApiFindLastMessage',
        apiFindLastMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.FindLastGetMessageRequest.fromBuffer(value),
        ($0.FindLastGetMessageReply value) => value.writeToBuffer()));
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

  $async.Future<$0.GetMainDataForUserReply> getMainDataForUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetMainDataForUserRequest> request) async {
    return getMainDataForUser(call, await request);
  }

  $async.Future<$0.GetFitForCompanyUsersReply> getFitForCompanyUsers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetFitForCompanyUsersRequest> request) async {
    return getFitForCompanyUsers(call, await request);
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

  $async.Future<$0.AddCompanyReply> addCompany_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddCompanyRequest> request) async {
    return addCompany(call, await request);
  }

  $async.Future<$0.DelCompanyReply> delCompany_Pre($grpc.ServiceCall call,
      $async.Future<$0.DelCompanyRequest> request) async {
    return delCompany(call, await request);
  }

  $async.Future<$0.AddMasterReply> addMaster_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddMasterRequest> request) async {
    return addMaster(call, await request);
  }

  $async.Future<$0.DelMasterReply> delMaster_Pre($grpc.ServiceCall call,
      $async.Future<$0.DelMasterRequest> request) async {
    return delMaster(call, await request);
  }

  $async.Future<$0.AddOfferReply> addOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddOfferRequest> request) async {
    return addOffer(call, await request);
  }

  $async.Future<$0.DelOfferReply> delOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DelOfferRequest> request) async {
    return delOffer(call, await request);
  }

  $async.Future<$0.GetOffersReply> apiGetOffers_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetOffersRequest> request) async {
    return apiGetOffers(call, await request);
  }

  $async.Future<$0.AddOrderReply> addOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddOrderRequest> request) async {
    return addOrder(call, await request);
  }

  $async.Future<$0.DelOrderReply> delOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DelOrderRequest> request) async {
    return delOrder(call, await request);
  }

  $async.Future<$0.SendNotificationReply> apiSendMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SendNotificationRequest> request) async {
    return apiSendMessage(call, await request);
  }

  $async.Future<$0.FindLastGetMessageReply> apiFindLastMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FindLastGetMessageRequest> request) async {
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

  $async.Future<$0.GetMainDataForUserReply> getMainDataForUser(
      $grpc.ServiceCall call, $0.GetMainDataForUserRequest request);
  $async.Future<$0.GetFitForCompanyUsersReply> getFitForCompanyUsers(
      $grpc.ServiceCall call, $0.GetFitForCompanyUsersRequest request);
  $async.Future<$0.AddUserReply> apiAddUser(
      $grpc.ServiceCall call, $0.AddUserRequest request);
  $async.Future<$0.GetUserReply> apiGetUser(
      $grpc.ServiceCall call, $0.GetUserRequest request);
  $async.Future<$0.GetUsersReply> apiGetUsers(
      $grpc.ServiceCall call, $0.GetUsersRequest request);
  $async.Future<$0.DelUserReply> apiDelUser(
      $grpc.ServiceCall call, $0.DelUserRequest request);
  $async.Future<$0.AddCompanyReply> addCompany(
      $grpc.ServiceCall call, $0.AddCompanyRequest request);
  $async.Future<$0.DelCompanyReply> delCompany(
      $grpc.ServiceCall call, $0.DelCompanyRequest request);
  $async.Future<$0.AddMasterReply> addMaster(
      $grpc.ServiceCall call, $0.AddMasterRequest request);
  $async.Future<$0.DelMasterReply> delMaster(
      $grpc.ServiceCall call, $0.DelMasterRequest request);
  $async.Future<$0.AddOfferReply> addOffer(
      $grpc.ServiceCall call, $0.AddOfferRequest request);
  $async.Future<$0.DelOfferReply> delOffer(
      $grpc.ServiceCall call, $0.DelOfferRequest request);
  $async.Future<$0.GetOffersReply> apiGetOffers(
      $grpc.ServiceCall call, $0.GetOffersRequest request);
  $async.Future<$0.AddOrderReply> addOrder(
      $grpc.ServiceCall call, $0.AddOrderRequest request);
  $async.Future<$0.DelOrderReply> delOrder(
      $grpc.ServiceCall call, $0.DelOrderRequest request);
  $async.Future<$0.SendNotificationReply> apiSendMessage(
      $grpc.ServiceCall call, $0.SendNotificationRequest request);
  $async.Future<$0.FindLastGetMessageReply> apiFindLastMessage(
      $grpc.ServiceCall call, $0.FindLastGetMessageRequest request);
  $async.Future<$0.ApiGetUserLocationReply> apiGetUserLocation(
      $grpc.ServiceCall call, $0.ApiGetUserLocationRequest request);
  $async.Future<$0.ApiSetUserLocationReply> apiSetUserLocation(
      $grpc.ServiceCall call, $0.ApiSetUserLocationRequest request);
}
