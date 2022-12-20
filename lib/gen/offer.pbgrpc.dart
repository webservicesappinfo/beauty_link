///
//  Generated code. Do not modify.
//  source: offer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'msg.pb.dart' as $0;
import 'offer.pb.dart' as $1;
export 'offer.pb.dart';

class OfferClient extends $grpc.Client {
  static final _$addOffer =
      $grpc.ClientMethod<$0.AddOfferRequest, $0.AddOfferReply>(
          '/offer.Offer/AddOffer',
          ($0.AddOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddOfferReply.fromBuffer(value));
  static final _$getOffers =
      $grpc.ClientMethod<$1.GetOffersRequest, $1.GetOffersReply>(
          '/offer.Offer/GetOffers',
          ($1.GetOffersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.GetOffersReply.fromBuffer(value));
  static final _$getOffersByMaster =
      $grpc.ClientMethod<$1.GetOffersByMasterRequest, $1.GetOffersReply>(
          '/offer.Offer/GetOffersByMaster',
          ($1.GetOffersByMasterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.GetOffersReply.fromBuffer(value));
  static final _$getOffersBySkill =
      $grpc.ClientMethod<$1.GetOffersBySkillRequest, $1.GetOffersReply>(
          '/offer.Offer/GetOffersBySkill',
          ($1.GetOffersBySkillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.GetOffersReply.fromBuffer(value));
  static final _$getOffer =
      $grpc.ClientMethod<$1.GetOfferRequest, $1.GetOfferReply>(
          '/offer.Offer/GetOffer',
          ($1.GetOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.GetOfferReply.fromBuffer(value));
  static final _$updateOffer =
      $grpc.ClientMethod<$1.UpdateOfferRequest, $1.UpdateOfferReply>(
          '/offer.Offer/UpdateOffer',
          ($1.UpdateOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UpdateOfferReply.fromBuffer(value));
  static final _$delOffer =
      $grpc.ClientMethod<$1.DelOfferRequest, $1.DelOfferReply>(
          '/offer.Offer/DelOffer',
          ($1.DelOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.DelOfferReply.fromBuffer(value));

  OfferClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddOfferReply> addOffer($0.AddOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addOffer, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetOffersReply> getOffers($1.GetOffersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOffers, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetOffersReply> getOffersByMaster(
      $1.GetOffersByMasterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOffersByMaster, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetOffersReply> getOffersBySkill(
      $1.GetOffersBySkillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOffersBySkill, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetOfferReply> getOffer($1.GetOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOffer, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateOfferReply> updateOffer(
      $1.UpdateOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOffer, request, options: options);
  }

  $grpc.ResponseFuture<$1.DelOfferReply> delOffer($1.DelOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delOffer, request, options: options);
  }
}

abstract class OfferServiceBase extends $grpc.Service {
  $core.String get $name => 'offer.Offer';

  OfferServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddOfferRequest, $0.AddOfferReply>(
        'AddOffer',
        addOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddOfferRequest.fromBuffer(value),
        ($0.AddOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetOffersRequest, $1.GetOffersReply>(
        'GetOffers',
        getOffers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetOffersRequest.fromBuffer(value),
        ($1.GetOffersReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetOffersByMasterRequest, $1.GetOffersReply>(
            'GetOffersByMaster',
            getOffersByMaster_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetOffersByMasterRequest.fromBuffer(value),
            ($1.GetOffersReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetOffersBySkillRequest, $1.GetOffersReply>(
            'GetOffersBySkill',
            getOffersBySkill_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetOffersBySkillRequest.fromBuffer(value),
            ($1.GetOffersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetOfferRequest, $1.GetOfferReply>(
        'GetOffer',
        getOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetOfferRequest.fromBuffer(value),
        ($1.GetOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateOfferRequest, $1.UpdateOfferReply>(
        'UpdateOffer',
        updateOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdateOfferRequest.fromBuffer(value),
        ($1.UpdateOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DelOfferRequest, $1.DelOfferReply>(
        'DelOffer',
        delOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DelOfferRequest.fromBuffer(value),
        ($1.DelOfferReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddOfferReply> addOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddOfferRequest> request) async {
    return addOffer(call, await request);
  }

  $async.Future<$1.GetOffersReply> getOffers_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetOffersRequest> request) async {
    return getOffers(call, await request);
  }

  $async.Future<$1.GetOffersReply> getOffersByMaster_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetOffersByMasterRequest> request) async {
    return getOffersByMaster(call, await request);
  }

  $async.Future<$1.GetOffersReply> getOffersBySkill_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetOffersBySkillRequest> request) async {
    return getOffersBySkill(call, await request);
  }

  $async.Future<$1.GetOfferReply> getOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetOfferRequest> request) async {
    return getOffer(call, await request);
  }

  $async.Future<$1.UpdateOfferReply> updateOffer_Pre($grpc.ServiceCall call,
      $async.Future<$1.UpdateOfferRequest> request) async {
    return updateOffer(call, await request);
  }

  $async.Future<$1.DelOfferReply> delOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$1.DelOfferRequest> request) async {
    return delOffer(call, await request);
  }

  $async.Future<$0.AddOfferReply> addOffer(
      $grpc.ServiceCall call, $0.AddOfferRequest request);
  $async.Future<$1.GetOffersReply> getOffers(
      $grpc.ServiceCall call, $1.GetOffersRequest request);
  $async.Future<$1.GetOffersReply> getOffersByMaster(
      $grpc.ServiceCall call, $1.GetOffersByMasterRequest request);
  $async.Future<$1.GetOffersReply> getOffersBySkill(
      $grpc.ServiceCall call, $1.GetOffersBySkillRequest request);
  $async.Future<$1.GetOfferReply> getOffer(
      $grpc.ServiceCall call, $1.GetOfferRequest request);
  $async.Future<$1.UpdateOfferReply> updateOffer(
      $grpc.ServiceCall call, $1.UpdateOfferRequest request);
  $async.Future<$1.DelOfferReply> delOffer(
      $grpc.ServiceCall call, $1.DelOfferRequest request);
}
