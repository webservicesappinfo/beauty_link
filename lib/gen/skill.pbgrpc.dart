///
//  Generated code. Do not modify.
//  source: skill.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'skill.pb.dart' as $0;
export 'skill.pb.dart';

class SkillClient extends $grpc.Client {
  static final _$addSkill =
      $grpc.ClientMethod<$0.AddSkillRequest, $0.AddSkillReply>(
          '/skill.Skill/AddSkill',
          ($0.AddSkillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddSkillReply.fromBuffer(value));
  static final _$getSkills =
      $grpc.ClientMethod<$0.GetSkillsRequest, $0.GetSkillsReply>(
          '/skill.Skill/GetSkills',
          ($0.GetSkillsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetSkillsReply.fromBuffer(value));
  static final _$getSkill =
      $grpc.ClientMethod<$0.GetSkillRequest, $0.GetSkillReply>(
          '/skill.Skill/GetSkill',
          ($0.GetSkillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetSkillReply.fromBuffer(value));
  static final _$updateSkill =
      $grpc.ClientMethod<$0.UpdateSkillRequest, $0.UpdateSkillReply>(
          '/skill.Skill/UpdateSkill',
          ($0.UpdateSkillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateSkillReply.fromBuffer(value));
  static final _$delSkill =
      $grpc.ClientMethod<$0.DelSkillRequest, $0.DelSkillReply>(
          '/skill.Skill/DelSkill',
          ($0.DelSkillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DelSkillReply.fromBuffer(value));

  SkillClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddSkillReply> addSkill($0.AddSkillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSkill, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSkillsReply> getSkills($0.GetSkillsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSkills, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSkillReply> getSkill($0.GetSkillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSkill, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateSkillReply> updateSkill(
      $0.UpdateSkillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSkill, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelSkillReply> delSkill($0.DelSkillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delSkill, request, options: options);
  }
}

abstract class SkillServiceBase extends $grpc.Service {
  $core.String get $name => 'skill.Skill';

  SkillServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddSkillRequest, $0.AddSkillReply>(
        'AddSkill',
        addSkill_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddSkillRequest.fromBuffer(value),
        ($0.AddSkillReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSkillsRequest, $0.GetSkillsReply>(
        'GetSkills',
        getSkills_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSkillsRequest.fromBuffer(value),
        ($0.GetSkillsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSkillRequest, $0.GetSkillReply>(
        'GetSkill',
        getSkill_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSkillRequest.fromBuffer(value),
        ($0.GetSkillReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateSkillRequest, $0.UpdateSkillReply>(
        'UpdateSkill',
        updateSkill_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateSkillRequest.fromBuffer(value),
        ($0.UpdateSkillReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelSkillRequest, $0.DelSkillReply>(
        'DelSkill',
        delSkill_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelSkillRequest.fromBuffer(value),
        ($0.DelSkillReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddSkillReply> addSkill_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddSkillRequest> request) async {
    return addSkill(call, await request);
  }

  $async.Future<$0.GetSkillsReply> getSkills_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetSkillsRequest> request) async {
    return getSkills(call, await request);
  }

  $async.Future<$0.GetSkillReply> getSkill_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetSkillRequest> request) async {
    return getSkill(call, await request);
  }

  $async.Future<$0.UpdateSkillReply> updateSkill_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateSkillRequest> request) async {
    return updateSkill(call, await request);
  }

  $async.Future<$0.DelSkillReply> delSkill_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DelSkillRequest> request) async {
    return delSkill(call, await request);
  }

  $async.Future<$0.AddSkillReply> addSkill(
      $grpc.ServiceCall call, $0.AddSkillRequest request);
  $async.Future<$0.GetSkillsReply> getSkills(
      $grpc.ServiceCall call, $0.GetSkillsRequest request);
  $async.Future<$0.GetSkillReply> getSkill(
      $grpc.ServiceCall call, $0.GetSkillRequest request);
  $async.Future<$0.UpdateSkillReply> updateSkill(
      $grpc.ServiceCall call, $0.UpdateSkillRequest request);
  $async.Future<$0.DelSkillReply> delSkill(
      $grpc.ServiceCall call, $0.DelSkillRequest request);
}
