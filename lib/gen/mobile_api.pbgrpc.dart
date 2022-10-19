///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'mobile_api.pb.dart' as $7;
import 'msg.pb.dart' as $1;
import 'user.pb.dart' as $0;
import 'company.pb.dart' as $2;
import 'skill.pb.dart' as $3;
import 'offer.pb.dart' as $4;
import 'order.pb.dart' as $5;
import 'notification.pb.dart' as $6;
export 'mobile_api.pb.dart';

class MobileApiClient extends $grpc.Client {
  static final _$getMainDataForUser = $grpc.ClientMethod<
          $7.GetMainDataForUserRequest, $7.GetMainDataForUserReply>(
      '/mobileApi.MobileApi/GetMainDataForUser',
      ($7.GetMainDataForUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.GetMainDataForUserReply.fromBuffer(value));
  static final _$getFitForCompanyUsers = $grpc.ClientMethod<
          $7.GetFitForCompanyUsersRequest, $7.GetFitForCompanyUsersReply>(
      '/mobileApi.MobileApi/GetFitForCompanyUsers',
      ($7.GetFitForCompanyUsersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.GetFitForCompanyUsersReply.fromBuffer(value));
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
  static final _$apiAddOffer =
      $grpc.ClientMethod<$4.AddOfferRequest, $4.AddOfferReply>(
          '/mobileApi.MobileApi/ApiAddOffer',
          ($4.AddOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.AddOfferReply.fromBuffer(value));
  static final _$apiGetOffers =
      $grpc.ClientMethod<$4.GetOffersRequest, $4.GetOffersReply>(
          '/mobileApi.MobileApi/ApiGetOffers',
          ($4.GetOffersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.GetOffersReply.fromBuffer(value));
  static final _$apiGetOffersByMaster =
      $grpc.ClientMethod<$4.GetOffersByMasterRequest, $4.GetOffersReply>(
          '/mobileApi.MobileApi/ApiGetOffersByMaster',
          ($4.GetOffersByMasterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.GetOffersReply.fromBuffer(value));
  static final _$apiGetOffersBySkill =
      $grpc.ClientMethod<$4.GetOffersBySkillRequest, $4.GetOffersReply>(
          '/mobileApi.MobileApi/ApiGetOffersBySkill',
          ($4.GetOffersBySkillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.GetOffersReply.fromBuffer(value));
  static final _$apiDelOffer =
      $grpc.ClientMethod<$4.DelOfferRequest, $4.DelOfferReply>(
          '/mobileApi.MobileApi/ApiDelOffer',
          ($4.DelOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.DelOfferReply.fromBuffer(value));
  static final _$apiAddOrder =
      $grpc.ClientMethod<$5.AddOrderRequest, $5.AddOrderReply>(
          '/mobileApi.MobileApi/ApiAddOrder',
          ($5.AddOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.AddOrderReply.fromBuffer(value));
  static final _$apiGetOrders =
      $grpc.ClientMethod<$5.GetOrdersRequest, $5.GetOrdersReply>(
          '/mobileApi.MobileApi/ApiGetOrders',
          ($5.GetOrdersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.GetOrdersReply.fromBuffer(value));
  static final _$apiDelOrder =
      $grpc.ClientMethod<$5.DelOrderRequest, $5.DelOrderReply>(
          '/mobileApi.MobileApi/ApiDelOrder',
          ($5.DelOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.DelOrderReply.fromBuffer(value));
  static final _$apiAcceptedOrder =
      $grpc.ClientMethod<$5.AcceptedOrderRequest, $5.AcceptedOrderReply>(
          '/mobileApi.MobileApi/ApiAcceptedOrder',
          ($5.AcceptedOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.AcceptedOrderReply.fromBuffer(value));
  static final _$apiExecutedOrder =
      $grpc.ClientMethod<$5.ExecutedOrderRequest, $5.ExecutedOrderReply>(
          '/mobileApi.MobileApi/ApiExecutedOrder',
          ($5.ExecutedOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.ExecutedOrderReply.fromBuffer(value));
  static final _$apiSendMessage =
      $grpc.ClientMethod<$6.SendNotificationRequest, $6.SendNotificationReply>(
          '/mobileApi.MobileApi/ApiSendMessage',
          ($6.SendNotificationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.SendNotificationReply.fromBuffer(value));
  static final _$apiFindLastMessage = $grpc.ClientMethod<
          $6.FindLastGetMessageRequest, $6.FindLastGetMessageReply>(
      '/mobileApi.MobileApi/ApiFindLastMessage',
      ($6.FindLastGetMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.FindLastGetMessageReply.fromBuffer(value));
  static final _$apiGetUserLocation = $grpc.ClientMethod<
          $7.ApiGetUserLocationRequest, $7.ApiGetUserLocationReply>(
      '/mobileApi.MobileApi/ApiGetUserLocation',
      ($7.ApiGetUserLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.ApiGetUserLocationReply.fromBuffer(value));
  static final _$apiSetUserLocation = $grpc.ClientMethod<
          $7.ApiSetUserLocationRequest, $7.ApiSetUserLocationReply>(
      '/mobileApi.MobileApi/ApiSetUserLocation',
      ($7.ApiSetUserLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.ApiSetUserLocationReply.fromBuffer(value));

  MobileApiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.GetMainDataForUserReply> getMainDataForUser(
      $7.GetMainDataForUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMainDataForUser, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetFitForCompanyUsersReply> getFitForCompanyUsers(
      $7.GetFitForCompanyUsersRequest request,
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

  $grpc.ResponseFuture<$4.AddOfferReply> apiAddOffer($4.AddOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiAddOffer, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetOffersReply> apiGetOffers(
      $4.GetOffersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetOffers, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetOffersReply> apiGetOffersByMaster(
      $4.GetOffersByMasterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetOffersByMaster, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetOffersReply> apiGetOffersBySkill(
      $4.GetOffersBySkillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetOffersBySkill, request, options: options);
  }

  $grpc.ResponseFuture<$4.DelOfferReply> apiDelOffer($4.DelOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiDelOffer, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddOrderReply> apiAddOrder($5.AddOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiAddOrder, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetOrdersReply> apiGetOrders(
      $5.GetOrdersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetOrders, request, options: options);
  }

  $grpc.ResponseFuture<$5.DelOrderReply> apiDelOrder($5.DelOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiDelOrder, request, options: options);
  }

  $grpc.ResponseFuture<$5.AcceptedOrderReply> apiAcceptedOrder(
      $5.AcceptedOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiAcceptedOrder, request, options: options);
  }

  $grpc.ResponseFuture<$5.ExecutedOrderReply> apiExecutedOrder(
      $5.ExecutedOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiExecutedOrder, request, options: options);
  }

  $grpc.ResponseFuture<$6.SendNotificationReply> apiSendMessage(
      $6.SendNotificationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiSendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$6.FindLastGetMessageReply> apiFindLastMessage(
      $6.FindLastGetMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiFindLastMessage, request, options: options);
  }

  $grpc.ResponseFuture<$7.ApiGetUserLocationReply> apiGetUserLocation(
      $7.ApiGetUserLocationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetUserLocation, request, options: options);
  }

  $grpc.ResponseFuture<$7.ApiSetUserLocationReply> apiSetUserLocation(
      $7.ApiSetUserLocationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiSetUserLocation, request, options: options);
  }
}

abstract class MobileApiServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileApi.MobileApi';

  MobileApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.GetMainDataForUserRequest,
            $7.GetMainDataForUserReply>(
        'GetMainDataForUser',
        getMainDataForUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GetMainDataForUserRequest.fromBuffer(value),
        ($7.GetMainDataForUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetFitForCompanyUsersRequest,
            $7.GetFitForCompanyUsersReply>(
        'GetFitForCompanyUsers',
        getFitForCompanyUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.GetFitForCompanyUsersRequest.fromBuffer(value),
        ($7.GetFitForCompanyUsersReply value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$4.AddOfferRequest, $4.AddOfferReply>(
        'ApiAddOffer',
        apiAddOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AddOfferRequest.fromBuffer(value),
        ($4.AddOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetOffersRequest, $4.GetOffersReply>(
        'ApiGetOffers',
        apiGetOffers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetOffersRequest.fromBuffer(value),
        ($4.GetOffersReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.GetOffersByMasterRequest, $4.GetOffersReply>(
            'ApiGetOffersByMaster',
            apiGetOffersByMaster_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.GetOffersByMasterRequest.fromBuffer(value),
            ($4.GetOffersReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.GetOffersBySkillRequest, $4.GetOffersReply>(
            'ApiGetOffersBySkill',
            apiGetOffersBySkill_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.GetOffersBySkillRequest.fromBuffer(value),
            ($4.GetOffersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DelOfferRequest, $4.DelOfferReply>(
        'ApiDelOffer',
        apiDelOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DelOfferRequest.fromBuffer(value),
        ($4.DelOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddOrderRequest, $5.AddOrderReply>(
        'ApiAddOrder',
        apiAddOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddOrderRequest.fromBuffer(value),
        ($5.AddOrderReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetOrdersRequest, $5.GetOrdersReply>(
        'ApiGetOrders',
        apiGetOrders_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetOrdersRequest.fromBuffer(value),
        ($5.GetOrdersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DelOrderRequest, $5.DelOrderReply>(
        'ApiDelOrder',
        apiDelOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DelOrderRequest.fromBuffer(value),
        ($5.DelOrderReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.AcceptedOrderRequest, $5.AcceptedOrderReply>(
            'ApiAcceptedOrder',
            apiAcceptedOrder_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.AcceptedOrderRequest.fromBuffer(value),
            ($5.AcceptedOrderReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$5.ExecutedOrderRequest, $5.ExecutedOrderReply>(
            'ApiExecutedOrder',
            apiExecutedOrder_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $5.ExecutedOrderRequest.fromBuffer(value),
            ($5.ExecutedOrderReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SendNotificationRequest,
            $6.SendNotificationReply>(
        'ApiSendMessage',
        apiSendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.SendNotificationRequest.fromBuffer(value),
        ($6.SendNotificationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.FindLastGetMessageRequest,
            $6.FindLastGetMessageReply>(
        'ApiFindLastMessage',
        apiFindLastMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.FindLastGetMessageRequest.fromBuffer(value),
        ($6.FindLastGetMessageReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ApiGetUserLocationRequest,
            $7.ApiGetUserLocationReply>(
        'ApiGetUserLocation',
        apiGetUserLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.ApiGetUserLocationRequest.fromBuffer(value),
        ($7.ApiGetUserLocationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ApiSetUserLocationRequest,
            $7.ApiSetUserLocationReply>(
        'ApiSetUserLocation',
        apiSetUserLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.ApiSetUserLocationRequest.fromBuffer(value),
        ($7.ApiSetUserLocationReply value) => value.writeToBuffer()));
  }

  $async.Future<$7.GetMainDataForUserReply> getMainDataForUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.GetMainDataForUserRequest> request) async {
    return getMainDataForUser(call, await request);
  }

  $async.Future<$7.GetFitForCompanyUsersReply> getFitForCompanyUsers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.GetFitForCompanyUsersRequest> request) async {
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

  $async.Future<$4.AddOfferReply> apiAddOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$4.AddOfferRequest> request) async {
    return apiAddOffer(call, await request);
  }

  $async.Future<$4.GetOffersReply> apiGetOffers_Pre($grpc.ServiceCall call,
      $async.Future<$4.GetOffersRequest> request) async {
    return apiGetOffers(call, await request);
  }

  $async.Future<$4.GetOffersReply> apiGetOffersByMaster_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetOffersByMasterRequest> request) async {
    return apiGetOffersByMaster(call, await request);
  }

  $async.Future<$4.GetOffersReply> apiGetOffersBySkill_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetOffersBySkillRequest> request) async {
    return apiGetOffersBySkill(call, await request);
  }

  $async.Future<$4.DelOfferReply> apiDelOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$4.DelOfferRequest> request) async {
    return apiDelOffer(call, await request);
  }

  $async.Future<$5.AddOrderReply> apiAddOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$5.AddOrderRequest> request) async {
    return apiAddOrder(call, await request);
  }

  $async.Future<$5.GetOrdersReply> apiGetOrders_Pre($grpc.ServiceCall call,
      $async.Future<$5.GetOrdersRequest> request) async {
    return apiGetOrders(call, await request);
  }

  $async.Future<$5.DelOrderReply> apiDelOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$5.DelOrderRequest> request) async {
    return apiDelOrder(call, await request);
  }

  $async.Future<$5.AcceptedOrderReply> apiAcceptedOrder_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.AcceptedOrderRequest> request) async {
    return apiAcceptedOrder(call, await request);
  }

  $async.Future<$5.ExecutedOrderReply> apiExecutedOrder_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.ExecutedOrderRequest> request) async {
    return apiExecutedOrder(call, await request);
  }

  $async.Future<$6.SendNotificationReply> apiSendMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.SendNotificationRequest> request) async {
    return apiSendMessage(call, await request);
  }

  $async.Future<$6.FindLastGetMessageReply> apiFindLastMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.FindLastGetMessageRequest> request) async {
    return apiFindLastMessage(call, await request);
  }

  $async.Future<$7.ApiGetUserLocationReply> apiGetUserLocation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.ApiGetUserLocationRequest> request) async {
    return apiGetUserLocation(call, await request);
  }

  $async.Future<$7.ApiSetUserLocationReply> apiSetUserLocation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.ApiSetUserLocationRequest> request) async {
    return apiSetUserLocation(call, await request);
  }

  $async.Future<$7.GetMainDataForUserReply> getMainDataForUser(
      $grpc.ServiceCall call, $7.GetMainDataForUserRequest request);
  $async.Future<$7.GetFitForCompanyUsersReply> getFitForCompanyUsers(
      $grpc.ServiceCall call, $7.GetFitForCompanyUsersRequest request);
  $async.Future<$1.AddCompanyReply> addCompany(
      $grpc.ServiceCall call, $1.AddCompanyRequest request);
  $async.Future<$1.DelCompanyReply> delCompany(
      $grpc.ServiceCall call, $1.DelCompanyRequest request);
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
  $async.Future<$4.AddOfferReply> apiAddOffer(
      $grpc.ServiceCall call, $4.AddOfferRequest request);
  $async.Future<$4.GetOffersReply> apiGetOffers(
      $grpc.ServiceCall call, $4.GetOffersRequest request);
  $async.Future<$4.GetOffersReply> apiGetOffersByMaster(
      $grpc.ServiceCall call, $4.GetOffersByMasterRequest request);
  $async.Future<$4.GetOffersReply> apiGetOffersBySkill(
      $grpc.ServiceCall call, $4.GetOffersBySkillRequest request);
  $async.Future<$4.DelOfferReply> apiDelOffer(
      $grpc.ServiceCall call, $4.DelOfferRequest request);
  $async.Future<$5.AddOrderReply> apiAddOrder(
      $grpc.ServiceCall call, $5.AddOrderRequest request);
  $async.Future<$5.GetOrdersReply> apiGetOrders(
      $grpc.ServiceCall call, $5.GetOrdersRequest request);
  $async.Future<$5.DelOrderReply> apiDelOrder(
      $grpc.ServiceCall call, $5.DelOrderRequest request);
  $async.Future<$5.AcceptedOrderReply> apiAcceptedOrder(
      $grpc.ServiceCall call, $5.AcceptedOrderRequest request);
  $async.Future<$5.ExecutedOrderReply> apiExecutedOrder(
      $grpc.ServiceCall call, $5.ExecutedOrderRequest request);
  $async.Future<$6.SendNotificationReply> apiSendMessage(
      $grpc.ServiceCall call, $6.SendNotificationRequest request);
  $async.Future<$6.FindLastGetMessageReply> apiFindLastMessage(
      $grpc.ServiceCall call, $6.FindLastGetMessageRequest request);
  $async.Future<$7.ApiGetUserLocationReply> apiGetUserLocation(
      $grpc.ServiceCall call, $7.ApiGetUserLocationRequest request);
  $async.Future<$7.ApiSetUserLocationReply> apiSetUserLocation(
      $grpc.ServiceCall call, $7.ApiSetUserLocationRequest request);
}
