///
//  Generated code. Do not modify.
//  source: offer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'offer.pb.dart' as $0;
export 'offer.pb.dart';

class OfferClient extends $grpc.Client {
  static final _$addOffer =
      $grpc.ClientMethod<$0.AddOfferRequest, $0.AddOfferReply>(
          '/offer.Offer/AddOffer',
          ($0.AddOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddOfferReply.fromBuffer(value));
  static final _$getOffers =
      $grpc.ClientMethod<$0.GetOffersRequest, $0.GetOffersReply>(
          '/offer.Offer/GetOffers',
          ($0.GetOffersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetOffersReply.fromBuffer(value));
  static final _$getOffer =
      $grpc.ClientMethod<$0.GetOfferRequest, $0.GetOfferReply>(
          '/offer.Offer/GetOffer',
          ($0.GetOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetOfferReply.fromBuffer(value));
  static final _$updateOffer =
      $grpc.ClientMethod<$0.UpdateOfferRequest, $0.UpdateOfferReply>(
          '/offer.Offer/UpdateOffer',
          ($0.UpdateOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateOfferReply.fromBuffer(value));
  static final _$delOffer =
      $grpc.ClientMethod<$0.DelOfferRequest, $0.DelOfferReply>(
          '/offer.Offer/DelOffer',
          ($0.DelOfferRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DelOfferReply.fromBuffer(value));

  OfferClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddOfferReply> addOffer($0.AddOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addOffer, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetOffersReply> getOffers($0.GetOffersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOffers, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetOfferReply> getOffer($0.GetOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOffer, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateOfferReply> updateOffer(
      $0.UpdateOfferRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOffer, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelOfferReply> delOffer($0.DelOfferRequest request,
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
    $addMethod($grpc.ServiceMethod<$0.GetOffersRequest, $0.GetOffersReply>(
        'GetOffers',
        getOffers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetOffersRequest.fromBuffer(value),
        ($0.GetOffersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetOfferRequest, $0.GetOfferReply>(
        'GetOffer',
        getOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetOfferRequest.fromBuffer(value),
        ($0.GetOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateOfferRequest, $0.UpdateOfferReply>(
        'UpdateOffer',
        updateOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateOfferRequest.fromBuffer(value),
        ($0.UpdateOfferReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelOfferRequest, $0.DelOfferReply>(
        'DelOffer',
        delOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelOfferRequest.fromBuffer(value),
        ($0.DelOfferReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddOfferReply> addOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddOfferRequest> request) async {
    return addOffer(call, await request);
  }

  $async.Future<$0.GetOffersReply> getOffers_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetOffersRequest> request) async {
    return getOffers(call, await request);
  }

  $async.Future<$0.GetOfferReply> getOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetOfferRequest> request) async {
    return getOffer(call, await request);
  }

  $async.Future<$0.UpdateOfferReply> updateOffer_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateOfferRequest> request) async {
    return updateOffer(call, await request);
  }

  $async.Future<$0.DelOfferReply> delOffer_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DelOfferRequest> request) async {
    return delOffer(call, await request);
  }

  $async.Future<$0.AddOfferReply> addOffer(
      $grpc.ServiceCall call, $0.AddOfferRequest request);
  $async.Future<$0.GetOffersReply> getOffers(
      $grpc.ServiceCall call, $0.GetOffersRequest request);
  $async.Future<$0.GetOfferReply> getOffer(
      $grpc.ServiceCall call, $0.GetOfferRequest request);
  $async.Future<$0.UpdateOfferReply> updateOffer(
      $grpc.ServiceCall call, $0.UpdateOfferRequest request);
  $async.Future<$0.DelOfferReply> delOffer(
      $grpc.ServiceCall call, $0.DelOfferRequest request);
}
