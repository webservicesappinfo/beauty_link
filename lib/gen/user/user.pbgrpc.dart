///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $0;
export 'user.pb.dart';

class UserClient extends $grpc.Client {
  static final _$getUser =
      $grpc.ClientMethod<$0.GetUserRequest, $0.GetUserReply>(
          '/user.User/GetUser',
          ($0.GetUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetUserReply.fromBuffer(value));
  static final _$addUser =
      $grpc.ClientMethod<$0.AddUserRequest, $0.AddUserReply>(
          '/user.User/AddUser',
          ($0.AddUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddUserReply.fromBuffer(value));
  static final _$getUsers =
      $grpc.ClientMethod<$0.GetUsersRequest, $0.GetUsersReply>(
          '/user.User/GetUsers',
          ($0.GetUsersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetUsersReply.fromBuffer(value));
  static final _$updateUser =
      $grpc.ClientMethod<$0.UpdateUserRequest, $0.UpdateUserReply>(
          '/user.User/UpdateUser',
          ($0.UpdateUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateUserReply.fromBuffer(value));
  static final _$removeUser =
      $grpc.ClientMethod<$0.RemoveUserRequest, $0.RemoveUserReply>(
          '/user.User/RemoveUser',
          ($0.RemoveUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoveUserReply.fromBuffer(value));

  UserClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetUserReply> getUser($0.GetUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddUserReply> addUser($0.AddUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetUsersReply> getUsers($0.GetUsersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUsers, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateUserReply> updateUser(
      $0.UpdateUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveUserReply> removeUser(
      $0.RemoveUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeUser, request, options: options);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.User';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetUserRequest, $0.GetUserReply>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUserRequest.fromBuffer(value),
        ($0.GetUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddUserRequest, $0.AddUserReply>(
        'AddUser',
        addUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddUserRequest.fromBuffer(value),
        ($0.AddUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUsersRequest, $0.GetUsersReply>(
        'GetUsers',
        getUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUsersRequest.fromBuffer(value),
        ($0.GetUsersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUserRequest, $0.UpdateUserReply>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateUserRequest.fromBuffer(value),
        ($0.UpdateUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveUserRequest, $0.RemoveUserReply>(
        'RemoveUser',
        removeUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveUserRequest.fromBuffer(value),
        ($0.RemoveUserReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetUserReply> getUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$0.AddUserReply> addUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddUserRequest> request) async {
    return addUser(call, await request);
  }

  $async.Future<$0.GetUsersReply> getUsers_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetUsersRequest> request) async {
    return getUsers(call, await request);
  }

  $async.Future<$0.UpdateUserReply> updateUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.RemoveUserReply> removeUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.RemoveUserRequest> request) async {
    return removeUser(call, await request);
  }

  $async.Future<$0.GetUserReply> getUser(
      $grpc.ServiceCall call, $0.GetUserRequest request);
  $async.Future<$0.AddUserReply> addUser(
      $grpc.ServiceCall call, $0.AddUserRequest request);
  $async.Future<$0.GetUsersReply> getUsers(
      $grpc.ServiceCall call, $0.GetUsersRequest request);
  $async.Future<$0.UpdateUserReply> updateUser(
      $grpc.ServiceCall call, $0.UpdateUserRequest request);
  $async.Future<$0.RemoveUserReply> removeUser(
      $grpc.ServiceCall call, $0.RemoveUserRequest request);
}
