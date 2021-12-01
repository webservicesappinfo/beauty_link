///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $0;
import 'company.pb.dart' as $1;
import 'skill.pb.dart' as $2;
import 'offer.pb.dart' as $3;
import 'order.pb.dart' as $4;
import 'mobile_api.pb.dart' as $5;
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
  static final _$apiDelUser =
      $grpc.ClientMethod<$0.DelUserRequest, $0.DelUserReply>(
          '/mobileApi.MobileApi/ApiDelUser',
          ($0.DelUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DelUserReply.fromBuffer(value));
  static final _$apiAddCompany =
      $grpc.ClientMethod<$1.AddCompanyRequest, $1.AddCompanyReply>(
          '/mobileApi.MobileApi/ApiAddCompany',
          ($1.AddCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AddCompanyReply.fromBuffer(value));
  static final _$apiJoinToCompany =
      $grpc.ClientMethod<$1.JoinToCompanyRequest, $1.JoinToCompanyReply>(
          '/mobileApi.MobileApi/ApiJoinToCompany',
          ($1.JoinToCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.JoinToCompanyReply.fromBuffer(value));
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
  static final _$apiDelCompany =
      $grpc.ClientMethod<$1.DelCompanyRequest, $1.DelCompanyReply>(
          '/mobileApi.MobileApi/ApiDelCompany',
          ($1.DelCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DelCompanyReply.fromBuffer(value));
  static final _$apiAddSkill =
      $grpc.ClientMethod<$2.AddSkillRequest, $2.AddSkillReply>(
          '/mobileApi.MobileApi/ApiAddSkill',
          ($2.AddSkillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.AddSkillReply.fromBuffer(value));
  static final _$apiGetSkills =
      $grpc.ClientMethod<$2.GetSkillsRequest, $2.GetSkillsReply>(
          '/mobileApi.MobileApi/ApiGetSkills',
          ($2.GetSkillsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.GetSkillsReply.fromBuffer(value));
  static final _$apiDelSkill =
      $grpc.ClientMethod<$2.DelSkillRequest, $2.DelSkillReply>(
          '/mobileApi.MobileApi/ApiDelSkill',
          ($2.DelSkillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.DelSkillReply.fromBuffer(value));
  static final _$apiAddOffer =
      $grpc.ClientMethod<$3.AddOfferRequest, $3.AddOfferReply>(
          '/mobileApi.MobileApi/ApiAddOffer',
          ($3.AddOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.AddOfferReply.fromBuffer(value));
  static final _$apiGetOffers =
      $grpc.ClientMethod<$3.GetOffersRequest, $3.GetOffersReply>(
          '/mobileApi.MobileApi/ApiGetOffers',
          ($3.GetOffersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.GetOffersReply.fromBuffer(value));
  static final _$apiDelOffer =
      $grpc.ClientMethod<$3.DelOfferRequest, $3.DelOfferReply>(
          '/mobileApi.MobileApi/ApiDelOffer',
          ($3.DelOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.DelOfferReply.fromBuffer(value));
  static final _$apiAddOrder =
      $grpc.ClientMethod<$4.AddOrderRequest, $4.AddOrderReply>(
          '/mobileApi.MobileApi/ApiAddOrder',
          ($4.AddOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.AddOrderReply.fromBuffer(value));
  static final _$apiGetOrders =
      $grpc.ClientMethod<$4.GetOrdersRequest, $4.GetOrdersReply>(
          '/mobileApi.MobileApi/ApiGetOrders',
          ($4.GetOrdersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.GetOrdersReply.fromBuffer(value));
  static final _$apiDelOrder =
      $grpc.ClientMethod<$4.DelOrderRequest, $4.DelOrderReply>(
          '/mobileApi.MobileApi/ApiDelOrder',
          ($4.DelOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.DelOrderReply.fromBuffer(value));
  static final _$apiSendMessage =
      $grpc.ClientMethod<$5.ApiSendMessageRequest, $5.ApiSendMessageReply>(
          '/mobileApi.MobileApi/ApiSendMessage',
          ($5.ApiSendMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.ApiSendMessageReply.fromBuffer(value));
  static final _$apiFindLastMessage = $grpc.ClientMethod<
          $5.ApiFindLastMessageRequest, $5.ApiFindLastMessagesReply>(
      '/mobileApi.MobileApi/ApiFindLastMessage',
      ($5.ApiFindLastMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ApiFindLastMessagesReply.fromBuffer(value));
  static final _$apiGetUserLocation = $grpc.ClientMethod<
          $5.ApiGetUserLocationRequest, $5.ApiGetUserLocationReply>(
      '/mobileApi.MobileApi/ApiGetUserLocation',
      ($5.ApiGetUserLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ApiGetUserLocationReply.fromBuffer(value));
  static final _$apiSetUserLocation = $grpc.ClientMethod<
          $5.ApiSetUserLocationRequest, $5.ApiSetUserLocationReply>(
      '/mobileApi.MobileApi/ApiSetUserLocation',
      ($5.ApiSetUserLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.ApiSetUserLocationReply.fromBuffer(value));

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

  $grpc.ResponseFuture<$0.DelUserReply> apiDelUser($0.DelUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiDelUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddCompanyReply> apiAddCompany(
      $1.AddCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiAddCompany, request, options: options);
  }

  $grpc.ResponseFuture<$1.JoinToCompanyReply> apiJoinToCompany(
      $1.JoinToCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiJoinToCompany, request, options: options);
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

  $grpc.ResponseFuture<$1.DelCompanyReply> apiDelCompany(
      $1.DelCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiDelCompany, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddSkillReply> apiAddSkill($2.AddSkillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiAddSkill, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetSkillsReply> apiGetSkills(
      $2.GetSkillsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetSkills, request, options: options);
  }

  $grpc.ResponseFuture<$2.DelSkillReply> apiDelSkill($2.DelSkillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiDelSkill, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddOfferReply> apiAddOffer($3.AddOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiAddOffer, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetOffersReply> apiGetOffers(
      $3.GetOffersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetOffers, request, options: options);
  }

  $grpc.ResponseFuture<$3.DelOfferReply> apiDelOffer($3.DelOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiDelOffer, request, options: options);
  }

  $grpc.ResponseFuture<$4.AddOrderReply> apiAddOrder($4.AddOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiAddOrder, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetOrdersReply> apiGetOrders(
      $4.GetOrdersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetOrders, request, options: options);
  }

  $grpc.ResponseFuture<$4.DelOrderReply> apiDelOrder($4.DelOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiDelOrder, request, options: options);
  }

  $grpc.ResponseFuture<$5.ApiSendMessageReply> apiSendMessage(
      $5.ApiSendMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiSendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$5.ApiFindLastMessagesReply> apiFindLastMessage(
      $5.ApiFindLastMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiFindLastMessage, request, options: options);
  }

  $grpc.ResponseFuture<$5.ApiGetUserLocationReply> apiGetUserLocation(
      $5.ApiGetUserLocationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetUserLocation, request, options: options);
  }

  $grpc.ResponseFuture<$5.ApiSetUserLocationReply> apiSetUserLocation(
      $5.ApiSetUserLocationRequest request,
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
    $addMethod($grpc.ServiceMethod<$0.DelUserRequest, $0.DelUserReply>(
        'ApiDelUser',
        apiDelUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelUserRequest.fromBuffer(value),
        ($0.DelUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddCompanyRequest, $1.AddCompanyReply>(
        'ApiAddCompany',
        apiAddCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddCompanyRequest.fromBuffer(value),
        ($1.AddCompanyReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.JoinToCompanyRequest, $1.JoinToCompanyReply>(
            'ApiJoinToCompany',
            apiJoinToCompany_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.JoinToCompanyRequest.fromBuffer(value),
            ($1.JoinToCompanyReply value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$1.DelCompanyRequest, $1.DelCompanyReply>(
        'ApiDelCompany',
        apiDelCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DelCompanyRequest.fromBuffer(value),
        ($1.DelCompanyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddSkillRequest, $2.AddSkillReply>(
        'ApiAddSkill',
        apiAddSkill_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddSkillRequest.fromBuffer(value),
        ($2.AddSkillReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetSkillsRequest, $2.GetSkillsReply>(
        'ApiGetSkills',
        apiGetSkills_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetSkillsRequest.fromBuffer(value),
        ($2.GetSkillsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DelSkillRequest, $2.DelSkillReply>(
        'ApiDelSkill',
        apiDelSkill_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DelSkillRequest.fromBuffer(value),
        ($2.DelSkillReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddOfferRequest, $3.AddOfferReply>(
        'ApiAddOffer',
        apiAddOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddOfferRequest.fromBuffer(value),
        ($3.AddOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetOffersRequest, $3.GetOffersReply>(
        'ApiGetOffers',
        apiGetOffers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetOffersRequest.fromBuffer(value),
        ($3.GetOffersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DelOfferRequest, $3.DelOfferReply>(
        'ApiDelOffer',
        apiDelOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DelOfferRequest.fromBuffer(value),
        ($3.DelOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AddOrderRequest, $4.AddOrderReply>(
        'ApiAddOrder',
        apiAddOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddOrderRequest.fromBuffer(value),
        ($4.AddOrderReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetOrdersRequest, $4.GetOrdersReply>(
        'ApiGetOrders',
        apiGetOrders_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetOrdersRequest.fromBuffer(value),
        ($4.GetOrdersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DelOrderRequest, $4.DelOrderReply>(
        'ApiDelOrder',
        apiDelOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DelOrderRequest.fromBuffer(value),
        ($4.DelOrderReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ApiSendMessageRequest, $5.ApiSendMessageReply>(
            'ApiSendMessage',
            apiSendMessage_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ApiSendMessageRequest.fromBuffer(value),
            ($5.ApiSendMessageReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ApiFindLastMessageRequest,
            $5.ApiFindLastMessagesReply>(
        'ApiFindLastMessage',
        apiFindLastMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ApiFindLastMessageRequest.fromBuffer(value),
        ($5.ApiFindLastMessagesReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ApiGetUserLocationRequest,
            $5.ApiGetUserLocationReply>(
        'ApiGetUserLocation',
        apiGetUserLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ApiGetUserLocationRequest.fromBuffer(value),
        ($5.ApiGetUserLocationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ApiSetUserLocationRequest,
            $5.ApiSetUserLocationReply>(
        'ApiSetUserLocation',
        apiSetUserLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.ApiSetUserLocationRequest.fromBuffer(value),
        ($5.ApiSetUserLocationReply value) => value.writeToBuffer()));
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

  $async.Future<$1.AddCompanyReply> apiAddCompany_Pre($grpc.ServiceCall call,
      $async.Future<$1.AddCompanyRequest> request) async {
    return apiAddCompany(call, await request);
  }

  $async.Future<$1.JoinToCompanyReply> apiJoinToCompany_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.JoinToCompanyRequest> request) async {
    return apiJoinToCompany(call, await request);
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

  $async.Future<$1.DelCompanyReply> apiDelCompany_Pre($grpc.ServiceCall call,
      $async.Future<$1.DelCompanyRequest> request) async {
    return apiDelCompany(call, await request);
  }

  $async.Future<$2.AddSkillReply> apiAddSkill_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AddSkillRequest> request) async {
    return apiAddSkill(call, await request);
  }

  $async.Future<$2.GetSkillsReply> apiGetSkills_Pre($grpc.ServiceCall call,
      $async.Future<$2.GetSkillsRequest> request) async {
    return apiGetSkills(call, await request);
  }

  $async.Future<$2.DelSkillReply> apiDelSkill_Pre(
      $grpc.ServiceCall call, $async.Future<$2.DelSkillRequest> request) async {
    return apiDelSkill(call, await request);
  }

  $async.Future<$3.AddOfferReply> apiAddOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AddOfferRequest> request) async {
    return apiAddOffer(call, await request);
  }

  $async.Future<$3.GetOffersReply> apiGetOffers_Pre($grpc.ServiceCall call,
      $async.Future<$3.GetOffersRequest> request) async {
    return apiGetOffers(call, await request);
  }

  $async.Future<$3.DelOfferReply> apiDelOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$3.DelOfferRequest> request) async {
    return apiDelOffer(call, await request);
  }

  $async.Future<$4.AddOrderReply> apiAddOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$4.AddOrderRequest> request) async {
    return apiAddOrder(call, await request);
  }

  $async.Future<$4.GetOrdersReply> apiGetOrders_Pre($grpc.ServiceCall call,
      $async.Future<$4.GetOrdersRequest> request) async {
    return apiGetOrders(call, await request);
  }

  $async.Future<$4.DelOrderReply> apiDelOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$4.DelOrderRequest> request) async {
    return apiDelOrder(call, await request);
  }

  $async.Future<$5.ApiSendMessageReply> apiSendMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ApiSendMessageRequest> request) async {
    return apiSendMessage(call, await request);
  }

  $async.Future<$5.ApiFindLastMessagesReply> apiFindLastMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ApiFindLastMessageRequest> request) async {
    return apiFindLastMessage(call, await request);
  }

  $async.Future<$5.ApiGetUserLocationReply> apiGetUserLocation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ApiGetUserLocationRequest> request) async {
    return apiGetUserLocation(call, await request);
  }

  $async.Future<$5.ApiSetUserLocationReply> apiSetUserLocation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ApiSetUserLocationRequest> request) async {
    return apiSetUserLocation(call, await request);
  }

  $async.Future<$0.AddUserReply> apiAddUser(
      $grpc.ServiceCall call, $0.AddUserRequest request);
  $async.Future<$0.GetUserReply> apiGetUser(
      $grpc.ServiceCall call, $0.GetUserRequest request);
  $async.Future<$0.GetUsersReply> apiGetUsers(
      $grpc.ServiceCall call, $0.GetUsersRequest request);
  $async.Future<$0.DelUserReply> apiDelUser(
      $grpc.ServiceCall call, $0.DelUserRequest request);
  $async.Future<$1.AddCompanyReply> apiAddCompany(
      $grpc.ServiceCall call, $1.AddCompanyRequest request);
  $async.Future<$1.JoinToCompanyReply> apiJoinToCompany(
      $grpc.ServiceCall call, $1.JoinToCompanyRequest request);
  $async.Future<$1.GetCompanyReply> apiGetCompany(
      $grpc.ServiceCall call, $1.GetCompanyRequest request);
  $async.Future<$1.GetCompaniesReply> apiGetCompanies(
      $grpc.ServiceCall call, $1.GetCompaniesRequest request);
  $async.Future<$1.DelCompanyReply> apiDelCompany(
      $grpc.ServiceCall call, $1.DelCompanyRequest request);
  $async.Future<$2.AddSkillReply> apiAddSkill(
      $grpc.ServiceCall call, $2.AddSkillRequest request);
  $async.Future<$2.GetSkillsReply> apiGetSkills(
      $grpc.ServiceCall call, $2.GetSkillsRequest request);
  $async.Future<$2.DelSkillReply> apiDelSkill(
      $grpc.ServiceCall call, $2.DelSkillRequest request);
  $async.Future<$3.AddOfferReply> apiAddOffer(
      $grpc.ServiceCall call, $3.AddOfferRequest request);
  $async.Future<$3.GetOffersReply> apiGetOffers(
      $grpc.ServiceCall call, $3.GetOffersRequest request);
  $async.Future<$3.DelOfferReply> apiDelOffer(
      $grpc.ServiceCall call, $3.DelOfferRequest request);
  $async.Future<$4.AddOrderReply> apiAddOrder(
      $grpc.ServiceCall call, $4.AddOrderRequest request);
  $async.Future<$4.GetOrdersReply> apiGetOrders(
      $grpc.ServiceCall call, $4.GetOrdersRequest request);
  $async.Future<$4.DelOrderReply> apiDelOrder(
      $grpc.ServiceCall call, $4.DelOrderRequest request);
  $async.Future<$5.ApiSendMessageReply> apiSendMessage(
      $grpc.ServiceCall call, $5.ApiSendMessageRequest request);
  $async.Future<$5.ApiFindLastMessagesReply> apiFindLastMessage(
      $grpc.ServiceCall call, $5.ApiFindLastMessageRequest request);
  $async.Future<$5.ApiGetUserLocationReply> apiGetUserLocation(
      $grpc.ServiceCall call, $5.ApiGetUserLocationRequest request);
  $async.Future<$5.ApiSetUserLocationReply> apiSetUserLocation(
      $grpc.ServiceCall call, $5.ApiSetUserLocationRequest request);
}
