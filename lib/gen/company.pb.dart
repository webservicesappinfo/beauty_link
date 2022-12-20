///
//  Generated code. Do not modify.
//  source: company.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'msg.pb.dart' as $0;

class GetCompanyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCompanyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  GetCompanyRequest._() : super();
  factory GetCompanyRequest({
    $core.String? guid,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    return _result;
  }
  factory GetCompanyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCompanyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCompanyRequest clone() => GetCompanyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCompanyRequest copyWith(void Function(GetCompanyRequest) updates) => super.copyWith((message) => updates(message as GetCompanyRequest)) as GetCompanyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCompanyRequest create() => GetCompanyRequest._();
  GetCompanyRequest createEmptyInstance() => create();
  static $pb.PbList<GetCompanyRequest> createRepeated() => $pb.PbList<GetCompanyRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCompanyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCompanyRequest>(create);
  static GetCompanyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);
}

class GetCompanyReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCompanyReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOM<$0.CompanyReply>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'company', subBuilder: $0.CompanyReply.create)
    ..hasRequiredFields = false
  ;

  GetCompanyReply._() : super();
  factory GetCompanyReply({
    $0.CompanyReply? company,
  }) {
    final _result = create();
    if (company != null) {
      _result.company = company;
    }
    return _result;
  }
  factory GetCompanyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCompanyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCompanyReply clone() => GetCompanyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCompanyReply copyWith(void Function(GetCompanyReply) updates) => super.copyWith((message) => updates(message as GetCompanyReply)) as GetCompanyReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCompanyReply create() => GetCompanyReply._();
  GetCompanyReply createEmptyInstance() => create();
  static $pb.PbList<GetCompanyReply> createRepeated() => $pb.PbList<GetCompanyReply>();
  @$core.pragma('dart2js:noInline')
  static GetCompanyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCompanyReply>(create);
  static GetCompanyReply? _defaultInstance;

  @$pb.TagNumber(1)
  $0.CompanyReply get company => $_getN(0);
  @$pb.TagNumber(1)
  set company($0.CompanyReply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCompany() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompany() => clearField(1);
  @$pb.TagNumber(1)
  $0.CompanyReply ensureCompany() => $_ensure(0);
}

class GetCompaniesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCompaniesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userUIDFB', protoName: 'userUIDFB')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..hasRequiredFields = false
  ;

  GetCompaniesRequest._() : super();
  factory GetCompaniesRequest({
    $core.String? userUIDFB,
    $core.String? type,
  }) {
    final _result = create();
    if (userUIDFB != null) {
      _result.userUIDFB = userUIDFB;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory GetCompaniesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCompaniesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCompaniesRequest clone() => GetCompaniesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCompaniesRequest copyWith(void Function(GetCompaniesRequest) updates) => super.copyWith((message) => updates(message as GetCompaniesRequest)) as GetCompaniesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCompaniesRequest create() => GetCompaniesRequest._();
  GetCompaniesRequest createEmptyInstance() => create();
  static $pb.PbList<GetCompaniesRequest> createRepeated() => $pb.PbList<GetCompaniesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCompaniesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCompaniesRequest>(create);
  static GetCompaniesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userUIDFB => $_getSZ(0);
  @$pb.TagNumber(1)
  set userUIDFB($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserUIDFB() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserUIDFB() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class GetCompaniesReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCompaniesReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..pc<$0.CompanyReply>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'companies', $pb.PbFieldType.PM, subBuilder: $0.CompanyReply.create)
    ..hasRequiredFields = false
  ;

  GetCompaniesReply._() : super();
  factory GetCompaniesReply({
    $core.Iterable<$0.CompanyReply>? companies,
  }) {
    final _result = create();
    if (companies != null) {
      _result.companies.addAll(companies);
    }
    return _result;
  }
  factory GetCompaniesReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCompaniesReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCompaniesReply clone() => GetCompaniesReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCompaniesReply copyWith(void Function(GetCompaniesReply) updates) => super.copyWith((message) => updates(message as GetCompaniesReply)) as GetCompaniesReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCompaniesReply create() => GetCompaniesReply._();
  GetCompaniesReply createEmptyInstance() => create();
  static $pb.PbList<GetCompaniesReply> createRepeated() => $pb.PbList<GetCompaniesReply>();
  @$core.pragma('dart2js:noInline')
  static GetCompaniesReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCompaniesReply>(create);
  static GetCompaniesReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.CompanyReply> get companies => $_getList(0);
}

class JoinToCompanyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JoinToCompanyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'companyGuid', protoName: 'companyGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'companyName', protoName: 'companyName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userUIDFB', protoName: 'userUIDFB')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userName', protoName: 'userName')
    ..hasRequiredFields = false
  ;

  JoinToCompanyRequest._() : super();
  factory JoinToCompanyRequest({
    $core.String? companyGuid,
    $core.String? companyName,
    $core.String? userUIDFB,
    $core.String? userName,
  }) {
    final _result = create();
    if (companyGuid != null) {
      _result.companyGuid = companyGuid;
    }
    if (companyName != null) {
      _result.companyName = companyName;
    }
    if (userUIDFB != null) {
      _result.userUIDFB = userUIDFB;
    }
    if (userName != null) {
      _result.userName = userName;
    }
    return _result;
  }
  factory JoinToCompanyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinToCompanyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JoinToCompanyRequest clone() => JoinToCompanyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JoinToCompanyRequest copyWith(void Function(JoinToCompanyRequest) updates) => super.copyWith((message) => updates(message as JoinToCompanyRequest)) as JoinToCompanyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinToCompanyRequest create() => JoinToCompanyRequest._();
  JoinToCompanyRequest createEmptyInstance() => create();
  static $pb.PbList<JoinToCompanyRequest> createRepeated() => $pb.PbList<JoinToCompanyRequest>();
  @$core.pragma('dart2js:noInline')
  static JoinToCompanyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinToCompanyRequest>(create);
  static JoinToCompanyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get companyGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set companyGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCompanyGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompanyGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get companyName => $_getSZ(1);
  @$pb.TagNumber(2)
  set companyName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCompanyName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompanyName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userUIDFB => $_getSZ(2);
  @$pb.TagNumber(3)
  set userUIDFB($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserUIDFB() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserUIDFB() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get userName => $_getSZ(3);
  @$pb.TagNumber(4)
  set userName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserName() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserName() => clearField(4);
}

class JoinToCompanyReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JoinToCompanyReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  JoinToCompanyReply._() : super();
  factory JoinToCompanyReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory JoinToCompanyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinToCompanyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JoinToCompanyReply clone() => JoinToCompanyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JoinToCompanyReply copyWith(void Function(JoinToCompanyReply) updates) => super.copyWith((message) => updates(message as JoinToCompanyReply)) as JoinToCompanyReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinToCompanyReply create() => JoinToCompanyReply._();
  JoinToCompanyReply createEmptyInstance() => create();
  static $pb.PbList<JoinToCompanyReply> createRepeated() => $pb.PbList<JoinToCompanyReply>();
  @$core.pragma('dart2js:noInline')
  static JoinToCompanyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinToCompanyReply>(create);
  static JoinToCompanyReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class UpdateCompanyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateCompanyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  UpdateCompanyRequest._() : super();
  factory UpdateCompanyRequest({
    $core.String? guid,
    $core.String? name,
    $core.String? token,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    if (name != null) {
      _result.name = name;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory UpdateCompanyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCompanyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCompanyRequest clone() => UpdateCompanyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCompanyRequest copyWith(void Function(UpdateCompanyRequest) updates) => super.copyWith((message) => updates(message as UpdateCompanyRequest)) as UpdateCompanyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateCompanyRequest create() => UpdateCompanyRequest._();
  UpdateCompanyRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateCompanyRequest> createRepeated() => $pb.PbList<UpdateCompanyRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateCompanyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCompanyRequest>(create);
  static UpdateCompanyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);
}

class UpdateCompanyReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateCompanyReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  UpdateCompanyReply._() : super();
  factory UpdateCompanyReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory UpdateCompanyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCompanyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCompanyReply clone() => UpdateCompanyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCompanyReply copyWith(void Function(UpdateCompanyReply) updates) => super.copyWith((message) => updates(message as UpdateCompanyReply)) as UpdateCompanyReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateCompanyReply create() => UpdateCompanyReply._();
  UpdateCompanyReply createEmptyInstance() => create();
  static $pb.PbList<UpdateCompanyReply> createRepeated() => $pb.PbList<UpdateCompanyReply>();
  @$core.pragma('dart2js:noInline')
  static UpdateCompanyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCompanyReply>(create);
  static UpdateCompanyReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class SetCompanyLocationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetCompanyLocationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lng', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  SetCompanyLocationRequest._() : super();
  factory SetCompanyLocationRequest({
    $core.String? guid,
    $core.double? lat,
    $core.double? lng,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    if (lat != null) {
      _result.lat = lat;
    }
    if (lng != null) {
      _result.lng = lng;
    }
    return _result;
  }
  factory SetCompanyLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCompanyLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetCompanyLocationRequest clone() => SetCompanyLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetCompanyLocationRequest copyWith(void Function(SetCompanyLocationRequest) updates) => super.copyWith((message) => updates(message as SetCompanyLocationRequest)) as SetCompanyLocationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetCompanyLocationRequest create() => SetCompanyLocationRequest._();
  SetCompanyLocationRequest createEmptyInstance() => create();
  static $pb.PbList<SetCompanyLocationRequest> createRepeated() => $pb.PbList<SetCompanyLocationRequest>();
  @$core.pragma('dart2js:noInline')
  static SetCompanyLocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetCompanyLocationRequest>(create);
  static SetCompanyLocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get lat => $_getN(1);
  @$pb.TagNumber(2)
  set lat($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLat() => $_has(1);
  @$pb.TagNumber(2)
  void clearLat() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get lng => $_getN(2);
  @$pb.TagNumber(3)
  set lng($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLng() => $_has(2);
  @$pb.TagNumber(3)
  void clearLng() => clearField(3);
}

class SetCompanyLocationReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetCompanyLocationReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  SetCompanyLocationReply._() : super();
  factory SetCompanyLocationReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory SetCompanyLocationReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCompanyLocationReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetCompanyLocationReply clone() => SetCompanyLocationReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetCompanyLocationReply copyWith(void Function(SetCompanyLocationReply) updates) => super.copyWith((message) => updates(message as SetCompanyLocationReply)) as SetCompanyLocationReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetCompanyLocationReply create() => SetCompanyLocationReply._();
  SetCompanyLocationReply createEmptyInstance() => create();
  static $pb.PbList<SetCompanyLocationReply> createRepeated() => $pb.PbList<SetCompanyLocationReply>();
  @$core.pragma('dart2js:noInline')
  static SetCompanyLocationReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetCompanyLocationReply>(create);
  static SetCompanyLocationReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

