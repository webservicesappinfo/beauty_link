///
//  Generated code. Do not modify.
//  source: company.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'msg.pb.dart' as $0;
import 'company.pb.dart' as $1;
export 'company.pb.dart';

class CompanyClient extends $grpc.Client {
  static final _$addCompany =
      $grpc.ClientMethod<$0.AddCompanyRequest, $0.AddCompanyReply>(
          '/company.Company/AddCompany',
          ($0.AddCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddCompanyReply.fromBuffer(value));
  static final _$addMaster =
      $grpc.ClientMethod<$0.AddMasterRequest, $0.AddMasterReply>(
          '/company.Company/AddMaster',
          ($0.AddMasterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddMasterReply.fromBuffer(value));
  static final _$delMaster =
      $grpc.ClientMethod<$0.DelMasterRequest, $0.DelMasterReply>(
          '/company.Company/DelMaster',
          ($0.DelMasterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DelMasterReply.fromBuffer(value));
  static final _$joinToCompany =
      $grpc.ClientMethod<$1.JoinToCompanyRequest, $1.JoinToCompanyReply>(
          '/company.Company/JoinToCompany',
          ($1.JoinToCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.JoinToCompanyReply.fromBuffer(value));
  static final _$getCompanies =
      $grpc.ClientMethod<$1.GetCompaniesRequest, $1.GetCompaniesReply>(
          '/company.Company/GetCompanies',
          ($1.GetCompaniesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetCompaniesReply.fromBuffer(value));
  static final _$getCompany =
      $grpc.ClientMethod<$1.GetCompanyRequest, $1.GetCompanyReply>(
          '/company.Company/GetCompany',
          ($1.GetCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetCompanyReply.fromBuffer(value));
  static final _$updateCompany =
      $grpc.ClientMethod<$1.UpdateCompanyRequest, $1.UpdateCompanyReply>(
          '/company.Company/UpdateCompany',
          ($1.UpdateCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UpdateCompanyReply.fromBuffer(value));
  static final _$delCompany =
      $grpc.ClientMethod<$0.DelCompanyRequest, $0.DelCompanyReply>(
          '/company.Company/DelCompany',
          ($0.DelCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DelCompanyReply.fromBuffer(value));
  static final _$setCompanyLocation = $grpc.ClientMethod<
          $1.SetCompanyLocationRequest, $1.SetCompanyLocationReply>(
      '/company.Company/SetCompanyLocation',
      ($1.SetCompanyLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.SetCompanyLocationReply.fromBuffer(value));

  CompanyClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddCompanyReply> addCompany(
      $0.AddCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addCompany, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddMasterReply> addMaster($0.AddMasterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMaster, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelMasterReply> delMaster($0.DelMasterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delMaster, request, options: options);
  }

  $grpc.ResponseFuture<$1.JoinToCompanyReply> joinToCompany(
      $1.JoinToCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$joinToCompany, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetCompaniesReply> getCompanies(
      $1.GetCompaniesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCompanies, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetCompanyReply> getCompany(
      $1.GetCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCompany, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateCompanyReply> updateCompany(
      $1.UpdateCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCompany, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelCompanyReply> delCompany(
      $0.DelCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delCompany, request, options: options);
  }

  $grpc.ResponseFuture<$1.SetCompanyLocationReply> setCompanyLocation(
      $1.SetCompanyLocationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setCompanyLocation, request, options: options);
  }
}

abstract class CompanyServiceBase extends $grpc.Service {
  $core.String get $name => 'company.Company';

  CompanyServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddCompanyRequest, $0.AddCompanyReply>(
        'AddCompany',
        addCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddCompanyRequest.fromBuffer(value),
        ($0.AddCompanyReply value) => value.writeToBuffer()));
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
    $addMethod(
        $grpc.ServiceMethod<$1.JoinToCompanyRequest, $1.JoinToCompanyReply>(
            'JoinToCompany',
            joinToCompany_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.JoinToCompanyRequest.fromBuffer(value),
            ($1.JoinToCompanyReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetCompaniesRequest, $1.GetCompaniesReply>(
            'GetCompanies',
            getCompanies_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetCompaniesRequest.fromBuffer(value),
            ($1.GetCompaniesReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetCompanyRequest, $1.GetCompanyReply>(
        'GetCompany',
        getCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetCompanyRequest.fromBuffer(value),
        ($1.GetCompanyReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.UpdateCompanyRequest, $1.UpdateCompanyReply>(
            'UpdateCompany',
            updateCompany_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.UpdateCompanyRequest.fromBuffer(value),
            ($1.UpdateCompanyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelCompanyRequest, $0.DelCompanyReply>(
        'DelCompany',
        delCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelCompanyRequest.fromBuffer(value),
        ($0.DelCompanyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SetCompanyLocationRequest,
            $1.SetCompanyLocationReply>(
        'SetCompanyLocation',
        setCompanyLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SetCompanyLocationRequest.fromBuffer(value),
        ($1.SetCompanyLocationReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddCompanyReply> addCompany_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddCompanyRequest> request) async {
    return addCompany(call, await request);
  }

  $async.Future<$0.AddMasterReply> addMaster_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddMasterRequest> request) async {
    return addMaster(call, await request);
  }

  $async.Future<$0.DelMasterReply> delMaster_Pre($grpc.ServiceCall call,
      $async.Future<$0.DelMasterRequest> request) async {
    return delMaster(call, await request);
  }

  $async.Future<$1.JoinToCompanyReply> joinToCompany_Pre($grpc.ServiceCall call,
      $async.Future<$1.JoinToCompanyRequest> request) async {
    return joinToCompany(call, await request);
  }

  $async.Future<$1.GetCompaniesReply> getCompanies_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetCompaniesRequest> request) async {
    return getCompanies(call, await request);
  }

  $async.Future<$1.GetCompanyReply> getCompany_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetCompanyRequest> request) async {
    return getCompany(call, await request);
  }

  $async.Future<$1.UpdateCompanyReply> updateCompany_Pre($grpc.ServiceCall call,
      $async.Future<$1.UpdateCompanyRequest> request) async {
    return updateCompany(call, await request);
  }

  $async.Future<$0.DelCompanyReply> delCompany_Pre($grpc.ServiceCall call,
      $async.Future<$0.DelCompanyRequest> request) async {
    return delCompany(call, await request);
  }

  $async.Future<$1.SetCompanyLocationReply> setCompanyLocation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SetCompanyLocationRequest> request) async {
    return setCompanyLocation(call, await request);
  }

  $async.Future<$0.AddCompanyReply> addCompany(
      $grpc.ServiceCall call, $0.AddCompanyRequest request);
  $async.Future<$0.AddMasterReply> addMaster(
      $grpc.ServiceCall call, $0.AddMasterRequest request);
  $async.Future<$0.DelMasterReply> delMaster(
      $grpc.ServiceCall call, $0.DelMasterRequest request);
  $async.Future<$1.JoinToCompanyReply> joinToCompany(
      $grpc.ServiceCall call, $1.JoinToCompanyRequest request);
  $async.Future<$1.GetCompaniesReply> getCompanies(
      $grpc.ServiceCall call, $1.GetCompaniesRequest request);
  $async.Future<$1.GetCompanyReply> getCompany(
      $grpc.ServiceCall call, $1.GetCompanyRequest request);
  $async.Future<$1.UpdateCompanyReply> updateCompany(
      $grpc.ServiceCall call, $1.UpdateCompanyRequest request);
  $async.Future<$0.DelCompanyReply> delCompany(
      $grpc.ServiceCall call, $0.DelCompanyRequest request);
  $async.Future<$1.SetCompanyLocationReply> setCompanyLocation(
      $grpc.ServiceCall call, $1.SetCompanyLocationRequest request);
}
