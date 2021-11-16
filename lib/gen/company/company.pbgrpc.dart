///
//  Generated code. Do not modify.
//  source: company.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'company.pb.dart' as $0;
export 'company.pb.dart';

class CompanyClient extends $grpc.Client {
  static final _$addCompany =
      $grpc.ClientMethod<$0.AddCompanyRequest, $0.AddCompanyReply>(
          '/company.Company/AddCompany',
          ($0.AddCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddCompanyReply.fromBuffer(value));
  static final _$getCompanies =
      $grpc.ClientMethod<$0.GetCompaniesRequest, $0.GetCompaniesReply>(
          '/company.Company/GetCompanies',
          ($0.GetCompaniesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetCompaniesReply.fromBuffer(value));
  static final _$getCompany =
      $grpc.ClientMethod<$0.GetCompanyRequest, $0.GetCompanyReply>(
          '/company.Company/GetCompany',
          ($0.GetCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetCompanyReply.fromBuffer(value));
  static final _$updateCompany =
      $grpc.ClientMethod<$0.UpdateCompanyRequest, $0.UpdateCompanyReply>(
          '/company.Company/UpdateCompany',
          ($0.UpdateCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateCompanyReply.fromBuffer(value));
  static final _$removeCompany =
      $grpc.ClientMethod<$0.RemoveCompanyRequest, $0.RemoveCompanyReply>(
          '/company.Company/RemoveCompany',
          ($0.RemoveCompanyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoveCompanyReply.fromBuffer(value));

  CompanyClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddCompanyReply> addCompany(
      $0.AddCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addCompany, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCompaniesReply> getCompanies(
      $0.GetCompaniesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCompanies, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCompanyReply> getCompany(
      $0.GetCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCompany, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateCompanyReply> updateCompany(
      $0.UpdateCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCompany, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveCompanyReply> removeCompany(
      $0.RemoveCompanyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeCompany, request, options: options);
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
    $addMethod(
        $grpc.ServiceMethod<$0.GetCompaniesRequest, $0.GetCompaniesReply>(
            'GetCompanies',
            getCompanies_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetCompaniesRequest.fromBuffer(value),
            ($0.GetCompaniesReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCompanyRequest, $0.GetCompanyReply>(
        'GetCompany',
        getCompany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCompanyRequest.fromBuffer(value),
        ($0.GetCompanyReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateCompanyRequest, $0.UpdateCompanyReply>(
            'UpdateCompany',
            updateCompany_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateCompanyRequest.fromBuffer(value),
            ($0.UpdateCompanyReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RemoveCompanyRequest, $0.RemoveCompanyReply>(
            'RemoveCompany',
            removeCompany_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RemoveCompanyRequest.fromBuffer(value),
            ($0.RemoveCompanyReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddCompanyReply> addCompany_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddCompanyRequest> request) async {
    return addCompany(call, await request);
  }

  $async.Future<$0.GetCompaniesReply> getCompanies_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetCompaniesRequest> request) async {
    return getCompanies(call, await request);
  }

  $async.Future<$0.GetCompanyReply> getCompany_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetCompanyRequest> request) async {
    return getCompany(call, await request);
  }

  $async.Future<$0.UpdateCompanyReply> updateCompany_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateCompanyRequest> request) async {
    return updateCompany(call, await request);
  }

  $async.Future<$0.RemoveCompanyReply> removeCompany_Pre($grpc.ServiceCall call,
      $async.Future<$0.RemoveCompanyRequest> request) async {
    return removeCompany(call, await request);
  }

  $async.Future<$0.AddCompanyReply> addCompany(
      $grpc.ServiceCall call, $0.AddCompanyRequest request);
  $async.Future<$0.GetCompaniesReply> getCompanies(
      $grpc.ServiceCall call, $0.GetCompaniesRequest request);
  $async.Future<$0.GetCompanyReply> getCompany(
      $grpc.ServiceCall call, $0.GetCompanyRequest request);
  $async.Future<$0.UpdateCompanyReply> updateCompany(
      $grpc.ServiceCall call, $0.UpdateCompanyRequest request);
  $async.Future<$0.RemoveCompanyReply> removeCompany(
      $grpc.ServiceCall call, $0.RemoveCompanyRequest request);
}
