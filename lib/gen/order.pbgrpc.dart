///
//  Generated code. Do not modify.
//  source: order.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'order.pb.dart' as $0;
export 'order.pb.dart';

class OrderClient extends $grpc.Client {
  static final _$addOrder =
      $grpc.ClientMethod<$0.AddOrderRequest, $0.AddOrderReply>(
          '/order.Order/AddOrder',
          ($0.AddOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddOrderReply.fromBuffer(value));
  static final _$getOrders =
      $grpc.ClientMethod<$0.GetOrdersRequest, $0.GetOrdersReply>(
          '/order.Order/GetOrders',
          ($0.GetOrdersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetOrdersReply.fromBuffer(value));
  static final _$getOrder =
      $grpc.ClientMethod<$0.GetOrderRequest, $0.GetOrderReply>(
          '/order.Order/GetOrder',
          ($0.GetOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetOrderReply.fromBuffer(value));
  static final _$updateOrder =
      $grpc.ClientMethod<$0.UpdateOrderRequest, $0.UpdateOrderReply>(
          '/order.Order/UpdateOrder',
          ($0.UpdateOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateOrderReply.fromBuffer(value));
  static final _$delOrder =
      $grpc.ClientMethod<$0.DelOrderRequest, $0.DelOrderReply>(
          '/order.Order/DelOrder',
          ($0.DelOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DelOrderReply.fromBuffer(value));
  static final _$acceptedOrder =
      $grpc.ClientMethod<$0.AcceptedOrderRequest, $0.AcceptedOrderReply>(
          '/order.Order/AcceptedOrder',
          ($0.AcceptedOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AcceptedOrderReply.fromBuffer(value));
  static final _$executedOrder =
      $grpc.ClientMethod<$0.ExecutedOrderRequest, $0.ExecutedOrderReply>(
          '/order.Order/ExecutedOrder',
          ($0.ExecutedOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ExecutedOrderReply.fromBuffer(value));

  OrderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddOrderReply> addOrder($0.AddOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addOrder, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetOrdersReply> getOrders($0.GetOrdersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrders, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetOrderReply> getOrder($0.GetOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrder, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateOrderReply> updateOrder(
      $0.UpdateOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrder, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelOrderReply> delOrder($0.DelOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delOrder, request, options: options);
  }

  $grpc.ResponseFuture<$0.AcceptedOrderReply> acceptedOrder(
      $0.AcceptedOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptedOrder, request, options: options);
  }

  $grpc.ResponseFuture<$0.ExecutedOrderReply> executedOrder(
      $0.ExecutedOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$executedOrder, request, options: options);
  }
}

abstract class OrderServiceBase extends $grpc.Service {
  $core.String get $name => 'order.Order';

  OrderServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddOrderRequest, $0.AddOrderReply>(
        'AddOrder',
        addOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddOrderRequest.fromBuffer(value),
        ($0.AddOrderReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetOrdersRequest, $0.GetOrdersReply>(
        'GetOrders',
        getOrders_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetOrdersRequest.fromBuffer(value),
        ($0.GetOrdersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetOrderRequest, $0.GetOrderReply>(
        'GetOrder',
        getOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetOrderRequest.fromBuffer(value),
        ($0.GetOrderReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateOrderRequest, $0.UpdateOrderReply>(
        'UpdateOrder',
        updateOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateOrderRequest.fromBuffer(value),
        ($0.UpdateOrderReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelOrderRequest, $0.DelOrderReply>(
        'DelOrder',
        delOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelOrderRequest.fromBuffer(value),
        ($0.DelOrderReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AcceptedOrderRequest, $0.AcceptedOrderReply>(
            'AcceptedOrder',
            acceptedOrder_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AcceptedOrderRequest.fromBuffer(value),
            ($0.AcceptedOrderReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ExecutedOrderRequest, $0.ExecutedOrderReply>(
            'ExecutedOrder',
            executedOrder_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ExecutedOrderRequest.fromBuffer(value),
            ($0.ExecutedOrderReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddOrderReply> addOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddOrderRequest> request) async {
    return addOrder(call, await request);
  }

  $async.Future<$0.GetOrdersReply> getOrders_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetOrdersRequest> request) async {
    return getOrders(call, await request);
  }

  $async.Future<$0.GetOrderReply> getOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetOrderRequest> request) async {
    return getOrder(call, await request);
  }

  $async.Future<$0.UpdateOrderReply> updateOrder_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateOrderRequest> request) async {
    return updateOrder(call, await request);
  }

  $async.Future<$0.DelOrderReply> delOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DelOrderRequest> request) async {
    return delOrder(call, await request);
  }

  $async.Future<$0.AcceptedOrderReply> acceptedOrder_Pre($grpc.ServiceCall call,
      $async.Future<$0.AcceptedOrderRequest> request) async {
    return acceptedOrder(call, await request);
  }

  $async.Future<$0.ExecutedOrderReply> executedOrder_Pre($grpc.ServiceCall call,
      $async.Future<$0.ExecutedOrderRequest> request) async {
    return executedOrder(call, await request);
  }

  $async.Future<$0.AddOrderReply> addOrder(
      $grpc.ServiceCall call, $0.AddOrderRequest request);
  $async.Future<$0.GetOrdersReply> getOrders(
      $grpc.ServiceCall call, $0.GetOrdersRequest request);
  $async.Future<$0.GetOrderReply> getOrder(
      $grpc.ServiceCall call, $0.GetOrderRequest request);
  $async.Future<$0.UpdateOrderReply> updateOrder(
      $grpc.ServiceCall call, $0.UpdateOrderRequest request);
  $async.Future<$0.DelOrderReply> delOrder(
      $grpc.ServiceCall call, $0.DelOrderRequest request);
  $async.Future<$0.AcceptedOrderReply> acceptedOrder(
      $grpc.ServiceCall call, $0.AcceptedOrderRequest request);
  $async.Future<$0.ExecutedOrderReply> executedOrder(
      $grpc.ServiceCall call, $0.ExecutedOrderRequest request);
}
