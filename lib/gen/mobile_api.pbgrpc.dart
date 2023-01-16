///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'mobile_api.pb.dart' as $5;
import 'msg.pb.dart' as $1;
import 'user.pb.dart' as $0;
import 'company.pb.dart' as $2;
import 'skill.pb.dart' as $3;
import 'notification.pb.dart' as $4;
export 'mobile_api.pb.dart';

class MobileApiClient extends $grpc.Client {
  static final _$getMainDataForUser = $grpc.ClientMethod<
          $5.GetMainDataForUserRequest, $5.GetMainDataForUserReply>(
      '/mobileApi.MobileApi/GetMainDataForUser',
      ($5.GetMainDataForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.GetMainDataForUserReply.fromBuffer(value));
  static final _$getFitForCompanyUsers = $grpc.ClientMethod<
          $5.GetFitForCompanyUsersRequest, $5.GetFitForCompanyUsersReply>(
      '/mobileApi.MobileApi/GetFitForCompanyUsers',
      ($5.GetFitForCompanyUsersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.GetFitForCompanyUsersReply.fromBuffer(value));
  static final _$addCompany =
      $grpc.ClientMethod<$1.AddCompanyRequest, $1.AddCompanyReply>(
          '/mobileApi.MobileApi/AddCompany',
          ($1.AddCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AddCompanyReply.fromBuffer(value));
  static final _$delCompany =
      $grpc.ClientMethod<$1.DelCompanyRequest, $1.DelCompanyReply>(
          '/mobileApi.MobileApi/DelCompany',
          ($1.DelCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DelCompanyReply.fromBuffer(value));
  static final _$addMaster =
      $grpc.ClientMethod<$1.AddMasterRequest, $1.AddMasterReply>(
          '/mobileApi.MobileApi/AddMaster',
          ($1.AddMasterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.AddMasterReply.fromBuffer(value));
  static final _$delMaster =
      $grpc.ClientMethod<$1.DelMasterRequest, $1.DelMasterReply>(
          '/mobileApi.MobileApi/DelMaster',
          ($1.DelMasterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.DelMasterReply.fromBuffer(value));
  static final _$addOffer =
      $grpc.ClientMethod<$1.AddOfferRequest, $1.AddOfferReply>(
          '/mobileApi.MobileApi/AddOffer',
          ($1.AddOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.AddOfferReply.fromBuffer(value));
  static final _$delOffer =
      $grpc.ClientMethod<$1.DelOfferRequest, $1.DelOfferReply>(
          '/mobileApi.MobileApi/DelOffer',
          ($1.DelOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.DelOfferReply.fromBuffer(value));
  static final _$addOrder =
      $grpc.ClientMethod<$1.AddOrderRequest, $1.AddOrderReply>(
          '/mobileApi.MobileApi/AddOrder',
          ($1.AddOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.AddOrderReply.fromBuffer(value));
  static final _$delOrder =
      $grpc.ClientMethod<$1.DelOrderRequest, $1.DelOrderReply>(
          '/mobileApi.MobileApi/DelOrder',
          ($1.DelOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.DelOrderReply.fromBuffer(value));
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
  static final _$apiJoinToCompany =
      $grpc.ClientMethod<$2.JoinToCompanyRequest, $2.JoinToCompanyReply>(
          '/mobileApi.MobileApi/ApiJoinToCompany',
          ($2.JoinToCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.JoinToCompanyReply.fromBuffer(value));
  static final _$apiGetCompany =
      $grpc.ClientMethod<$2.GetCompanyRequest, $2.GetCompanyReply>(
          '/mobileApi.MobileApi/ApiGetCompany',
          ($2.GetCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetCompanyReply.fromBuffer(value));
  static final _$apiGetCompanies =
      $grpc.ClientMethod<$2.GetCompaniesRequest, $2.GetCompaniesReply>(
          '/mobileApi.MobileApi/ApiGetCompanies',
          ($2.GetCompaniesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetCompaniesReply.fromBuffer(value));
  static final _$apiSetCompanyLocation = $grpc.ClientMethod<
          $2.SetCompanyLocationRequest, $2.SetCompanyLocationReply>(
      '/mobileApi.MobileApi/apiSetCompanyLocation',
      ($2.SetCompanyLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.SetCompanyLocationReply.fromBuffer(value));
  static final _$apiAddSkill =
      $grpc.ClientMethod<$3.AddSkillRequest, $3.AddSkillReply>(
          '/mobileApi.MobileApi/ApiAddSkill',
          ($3.AddSkillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.AddSkillReply.fromBuffer(value));
  static final _$apiGetSkills =
      $grpc.ClientMethod<$3.GetSkillsRequest, $3.GetSkillsReply>(
          '/mobileApi.MobileApi/ApiGetSkills',
          ($3.GetSkillsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.GetSkillsReply.fromBuffer(value));
  static final _$apiDelSkill =
      $grpc.ClientMethod<$3.DelSkillRequest, $3.DelSkillReply>(
          '/mobileApi.MobileApi/ApiDelSkill',
          ($3.DelSkillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.DelSkillReply.fromBuffer(value));
  static final _$apiGetOffers =
      $grpc.ClientMethod<$1.GetOffersRequest, $1.GetOffersReply>(
          '/mobileApi.MobileApi/ApiGetOffers',
          ($1.GetOffersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.GetOffersReply.fromBuffer(value));
  static final _$apiSendMessage =
      $grpc.ClientMethod<$4.SendNotificationRequest, $4.SendNotificationReply>(
          '/mobileApi.MobileApi/ApiSendMessage',
          ($4.SendNotificationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.SendNotificationReply.fromBuffer(value));
  static final _$apiFindLastMessage = $grpc.ClientMethod<
          $4.FindLastGetMessageRequest, $4.FindLastGetMessageReply>(
      '/mobileApi.MobileApi/ApiFindLastMessage',
      ($4.FindLastGetMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.FindLastGetMessageReply.fromBuffer(value));
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

  $grpc.ResponseFuture<$5.GetMainDataForUserReply> getMainDataForUser(
      $5.GetMainDataForUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMainDataForUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetFitForCompanyUsersReply> getFitForCompanyUsers(
      $5.GetFitForCompanyUsersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFitForCompanyUsers, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddCompanyReply> addCompany(
      $1.AddCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addCompany, request, options: options);
  }

  $grpc.ResponseFuture<$1.DelCompanyReply> delCompany(
      $1.DelCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delCompany, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddMasterReply> addMaster($1.AddMasterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMaster, request, options: options);
  }

  $grpc.ResponseFuture<$1.DelMasterReply> delMaster($1.DelMasterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delMaster, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddOfferReply> addOffer($1.AddOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addOffer, request, options: options);
  }

  $grpc.ResponseFuture<$1.DelOfferReply> delOffer($1.DelOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delOffer, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddOrderReply> addOrder($1.AddOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addOrder, request, options: options);
  }

  $grpc.ResponseFuture<$1.DelOrderReply> delOrder($1.DelOrderRequest request,
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

  $grpc.ResponseFuture<$2.JoinToCompanyReply> apiJoinToCompany(
      $2.JoinToCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiJoinToCompany, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetCompanyReply> apiGetCompany(
      $2.GetCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetCompany, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetCompaniesReply> apiGetCompanies(
      $2.GetCompaniesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetCompanies, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetCompanyLocationReply> apiSetCompanyLocation(
      $2.SetCompanyLocationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiSetCompanyLocation, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddSkillReply> apiAddSkill($3.AddSkillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiAddSkill, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetSkillsReply> apiGetSkills(
      $3.GetSkillsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetSkills, request, options: options);
  }

  $grpc.ResponseFuture<$3.DelSkillReply> apiDelSkill($3.DelSkillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiDelSkill, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetOffersReply> apiGetOffers(
      $1.GetOffersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetOffers, request, options: options);
  }

  $grpc.ResponseFuture<$4.SendNotificationReply> apiSendMessage(
      $4.SendNotificationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiSendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$4.FindLastGetMessageReply> apiFindLastMessage(
      $4.FindLastGetMessageRequest request,
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
    $addMethod($grpc.ServiceMethod<$5.GetMainDataForUserRequest,
            $5.GetMainDataForUserReply>(
        'GetMainDataForUser',
        getMainDataForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetMainDataForUserRequest.fromBuffer(value),
        ($5.GetMainDataForUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetFitForCompanyUsersRequest,
            $5.GetFitForCompanyUsersReply>(
        'GetFitForCompanyUsers',
        getFitForCompanyUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetFitForCompanyUsersRequest.fromBuffer(value),
        ($5.GetFitForCompanyUsersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddCompanyRequest, $1.AddCompanyReply>(
        'AddCompany',
        addCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddCompanyRequest.fromBuffer(value),
        ($1.AddCompanyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DelCompanyRequest, $1.DelCompanyReply>(
        'DelCompany',
        delCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DelCompanyRequest.fromBuffer(value),
        ($1.DelCompanyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddMasterRequest, $1.AddMasterReply>(
        'AddMaster',
        addMaster_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddMasterRequest.fromBuffer(value),
        ($1.AddMasterReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DelMasterRequest, $1.DelMasterReply>(
        'DelMaster',
        delMaster_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DelMasterRequest.fromBuffer(value),
        ($1.DelMasterReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddOfferRequest, $1.AddOfferReply>(
        'AddOffer',
        addOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddOfferRequest.fromBuffer(value),
        ($1.AddOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DelOfferRequest, $1.DelOfferReply>(
        'DelOffer',
        delOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DelOfferRequest.fromBuffer(value),
        ($1.DelOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddOrderRequest, $1.AddOrderReply>(
        'AddOrder',
        addOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddOrderRequest.fromBuffer(value),
        ($1.AddOrderReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DelOrderRequest, $1.DelOrderReply>(
        'DelOrder',
        delOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DelOrderRequest.fromBuffer(value),
        ($1.DelOrderReply value) => value.writeToBuffer()));
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
    $addMethod(
        $grpc.ServiceMethod<$2.JoinToCompanyRequest, $2.JoinToCompanyReply>(
            'ApiJoinToCompany',
            apiJoinToCompany_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.JoinToCompanyRequest.fromBuffer(value),
            ($2.JoinToCompanyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetCompanyRequest, $2.GetCompanyReply>(
        'ApiGetCompany',
        apiGetCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetCompanyRequest.fromBuffer(value),
        ($2.GetCompanyReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.GetCompaniesRequest, $2.GetCompaniesReply>(
            'ApiGetCompanies',
            apiGetCompanies_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.GetCompaniesRequest.fromBuffer(value),
            ($2.GetCompaniesReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SetCompanyLocationRequest,
            $2.SetCompanyLocationReply>(
        'apiSetCompanyLocation',
        apiSetCompanyLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.SetCompanyLocationRequest.fromBuffer(value),
        ($2.SetCompanyLocationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddSkillRequest, $3.AddSkillReply>(
        'ApiAddSkill',
        apiAddSkill_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddSkillRequest.fromBuffer(value),
        ($3.AddSkillReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetSkillsRequest, $3.GetSkillsReply>(
        'ApiGetSkills',
        apiGetSkills_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetSkillsRequest.fromBuffer(value),
        ($3.GetSkillsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DelSkillRequest, $3.DelSkillReply>(
        'ApiDelSkill',
        apiDelSkill_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DelSkillRequest.fromBuffer(value),
        ($3.DelSkillReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetOffersRequest, $1.GetOffersReply>(
        'ApiGetOffers',
        apiGetOffers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetOffersRequest.fromBuffer(value),
        ($1.GetOffersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.SendNotificationRequest,
            $4.SendNotificationReply>(
        'ApiSendMessage',
        apiSendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.SendNotificationRequest.fromBuffer(value),
        ($4.SendNotificationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.FindLastGetMessageRequest,
            $4.FindLastGetMessageReply>(
        'ApiFindLastMessage',
        apiFindLastMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.FindLastGetMessageRequest.fromBuffer(value),
        ($4.FindLastGetMessageReply value) => value.writeToBuffer()));
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

  $async.Future<$5.GetMainDataForUserReply> getMainDataForUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetMainDataForUserRequest> request) async {
    return getMainDataForUser(call, await request);
  }

  $async.Future<$5.GetFitForCompanyUsersReply> getFitForCompanyUsers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetFitForCompanyUsersRequest> request) async {
    return getFitForCompanyUsers(call, await request);
  }

  $async.Future<$1.AddCompanyReply> addCompany_Pre($grpc.ServiceCall call,
      $async.Future<$1.AddCompanyRequest> request) async {
    return addCompany(call, await request);
  }

  $async.Future<$1.DelCompanyReply> delCompany_Pre($grpc.ServiceCall call,
      $async.Future<$1.DelCompanyRequest> request) async {
    return delCompany(call, await request);
  }

  $async.Future<$1.AddMasterReply> addMaster_Pre($grpc.ServiceCall call,
      $async.Future<$1.AddMasterRequest> request) async {
    return addMaster(call, await request);
  }

  $async.Future<$1.DelMasterReply> delMaster_Pre($grpc.ServiceCall call,
      $async.Future<$1.DelMasterRequest> request) async {
    return delMaster(call, await request);
  }

  $async.Future<$1.AddOfferReply> addOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$1.AddOfferRequest> request) async {
    return addOffer(call, await request);
  }

  $async.Future<$1.DelOfferReply> delOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$1.DelOfferRequest> request) async {
    return delOffer(call, await request);
  }

  $async.Future<$1.AddOrderReply> addOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$1.AddOrderRequest> request) async {
    return addOrder(call, await request);
  }

  $async.Future<$1.DelOrderReply> delOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$1.DelOrderRequest> request) async {
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

  $async.Future<$2.JoinToCompanyReply> apiJoinToCompany_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.JoinToCompanyRequest> request) async {
    return apiJoinToCompany(call, await request);
  }

  $async.Future<$2.GetCompanyReply> apiGetCompany_Pre($grpc.ServiceCall call,
      $async.Future<$2.GetCompanyRequest> request) async {
    return apiGetCompany(call, await request);
  }

  $async.Future<$2.GetCompaniesReply> apiGetCompanies_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetCompaniesRequest> request) async {
    return apiGetCompanies(call, await request);
  }

  $async.Future<$2.SetCompanyLocationReply> apiSetCompanyLocation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.SetCompanyLocationRequest> request) async {
    return apiSetCompanyLocation(call, await request);
  }

  $async.Future<$3.AddSkillReply> apiAddSkill_Pre(
      $grpc.ServiceCall call, $async.Future<$3.AddSkillRequest> request) async {
    return apiAddSkill(call, await request);
  }

  $async.Future<$3.GetSkillsReply> apiGetSkills_Pre($grpc.ServiceCall call,
      $async.Future<$3.GetSkillsRequest> request) async {
    return apiGetSkills(call, await request);
  }

  $async.Future<$3.DelSkillReply> apiDelSkill_Pre(
      $grpc.ServiceCall call, $async.Future<$3.DelSkillRequest> request) async {
    return apiDelSkill(call, await request);
  }

  $async.Future<$1.GetOffersReply> apiGetOffers_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetOffersRequest> request) async {
    return apiGetOffers(call, await request);
  }

  $async.Future<$4.SendNotificationReply> apiSendMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.SendNotificationRequest> request) async {
    return apiSendMessage(call, await request);
  }

  $async.Future<$4.FindLastGetMessageReply> apiFindLastMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.FindLastGetMessageRequest> request) async {
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

  $async.Future<$5.GetMainDataForUserReply> getMainDataForUser(
      $grpc.ServiceCall call, $5.GetMainDataForUserRequest request);
  $async.Future<$5.GetFitForCompanyUsersReply> getFitForCompanyUsers(
      $grpc.ServiceCall call, $5.GetFitForCompanyUsersRequest request);
  $async.Future<$1.AddCompanyReply> addCompany(
      $grpc.ServiceCall call, $1.AddCompanyRequest request);
  $async.Future<$1.DelCompanyReply> delCompany(
      $grpc.ServiceCall call, $1.DelCompanyRequest request);
  $async.Future<$1.AddMasterReply> addMaster(
      $grpc.ServiceCall call, $1.AddMasterRequest request);
  $async.Future<$1.DelMasterReply> delMaster(
      $grpc.ServiceCall call, $1.DelMasterRequest request);
  $async.Future<$1.AddOfferReply> addOffer(
      $grpc.ServiceCall call, $1.AddOfferRequest request);
  $async.Future<$1.DelOfferReply> delOffer(
      $grpc.ServiceCall call, $1.DelOfferRequest request);
  $async.Future<$1.AddOrderReply> addOrder(
      $grpc.ServiceCall call, $1.AddOrderRequest request);
  $async.Future<$1.DelOrderReply> delOrder(
      $grpc.ServiceCall call, $1.DelOrderRequest request);
  $async.Future<$0.AddUserReply> apiAddUser(
      $grpc.ServiceCall call, $0.AddUserRequest request);
  $async.Future<$0.GetUserReply> apiGetUser(
      $grpc.ServiceCall call, $0.GetUserRequest request);
  $async.Future<$0.GetUsersReply> apiGetUsers(
      $grpc.ServiceCall call, $0.GetUsersRequest request);
  $async.Future<$0.DelUserReply> apiDelUser(
      $grpc.ServiceCall call, $0.DelUserRequest request);
  $async.Future<$2.JoinToCompanyReply> apiJoinToCompany(
      $grpc.ServiceCall call, $2.JoinToCompanyRequest request);
  $async.Future<$2.GetCompanyReply> apiGetCompany(
      $grpc.ServiceCall call, $2.GetCompanyRequest request);
  $async.Future<$2.GetCompaniesReply> apiGetCompanies(
      $grpc.ServiceCall call, $2.GetCompaniesRequest request);
  $async.Future<$2.SetCompanyLocationReply> apiSetCompanyLocation(
      $grpc.ServiceCall call, $2.SetCompanyLocationRequest request);
  $async.Future<$3.AddSkillReply> apiAddSkill(
      $grpc.ServiceCall call, $3.AddSkillRequest request);
  $async.Future<$3.GetSkillsReply> apiGetSkills(
      $grpc.ServiceCall call, $3.GetSkillsRequest request);
  $async.Future<$3.DelSkillReply> apiDelSkill(
      $grpc.ServiceCall call, $3.DelSkillRequest request);
  $async.Future<$1.GetOffersReply> apiGetOffers(
      $grpc.ServiceCall call, $1.GetOffersRequest request);
  $async.Future<$4.SendNotificationReply> apiSendMessage(
      $grpc.ServiceCall call, $4.SendNotificationRequest request);
  $async.Future<$4.FindLastGetMessageReply> apiFindLastMessage(
      $grpc.ServiceCall call, $4.FindLastGetMessageRequest request);
  $async.Future<$5.ApiGetUserLocationReply> apiGetUserLocation(
      $grpc.ServiceCall call, $5.ApiGetUserLocationRequest request);
  $async.Future<$5.ApiSetUserLocationReply> apiSetUserLocation(
      $grpc.ServiceCall call, $5.ApiSetUserLocationRequest request);
}
