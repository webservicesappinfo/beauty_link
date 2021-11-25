///
//  Generated code. Do not modify.
//  source: company.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

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
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  GetCompanyReply._() : super();
  factory GetCompanyReply({
    $core.String? name,
    $core.String? guid,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (guid != null) {
      _result.guid = guid;
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
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get guid => $_getSZ(1);
  @$pb.TagNumber(2)
  set guid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearGuid() => clearField(2);
}

class GetCompaniesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCompaniesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userGuid', protoName: 'userGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..hasRequiredFields = false
  ;

  GetCompaniesRequest._() : super();
  factory GetCompaniesRequest({
    $core.String? userGuid,
    $core.String? type,
  }) {
    final _result = create();
    if (userGuid != null) {
      _result.userGuid = userGuid;
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
  $core.String get userGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set userGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserGuid() => clearField(1);

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
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guids')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'names')
    ..hasRequiredFields = false
  ;

  GetCompaniesReply._() : super();
  factory GetCompaniesReply({
    $core.Iterable<$core.String>? guids,
    $core.Iterable<$core.String>? names,
  }) {
    final _result = create();
    if (guids != null) {
      _result.guids.addAll(guids);
    }
    if (names != null) {
      _result.names.addAll(names);
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
  $core.List<$core.String> get guids => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get names => $_getList(1);
}

class AddCompanyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddCompanyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userGuid', protoName: 'userGuid')
    ..hasRequiredFields = false
  ;

  AddCompanyRequest._() : super();
  factory AddCompanyRequest({
    $core.String? name,
    $core.String? userGuid,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (userGuid != null) {
      _result.userGuid = userGuid;
    }
    return _result;
  }
  factory AddCompanyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCompanyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCompanyRequest clone() => AddCompanyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCompanyRequest copyWith(void Function(AddCompanyRequest) updates) => super.copyWith((message) => updates(message as AddCompanyRequest)) as AddCompanyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddCompanyRequest create() => AddCompanyRequest._();
  AddCompanyRequest createEmptyInstance() => create();
  static $pb.PbList<AddCompanyRequest> createRepeated() => $pb.PbList<AddCompanyRequest>();
  @$core.pragma('dart2js:noInline')
  static AddCompanyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCompanyRequest>(create);
  static AddCompanyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userGuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set userGuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserGuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserGuid() => clearField(2);
}

class AddCompanyReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddCompanyReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  AddCompanyReply._() : super();
  factory AddCompanyReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory AddCompanyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCompanyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCompanyReply clone() => AddCompanyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCompanyReply copyWith(void Function(AddCompanyReply) updates) => super.copyWith((message) => updates(message as AddCompanyReply)) as AddCompanyReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddCompanyReply create() => AddCompanyReply._();
  AddCompanyReply createEmptyInstance() => create();
  static $pb.PbList<AddCompanyReply> createRepeated() => $pb.PbList<AddCompanyReply>();
  @$core.pragma('dart2js:noInline')
  static AddCompanyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCompanyReply>(create);
  static AddCompanyReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class JoinToCompanyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JoinToCompanyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'companyGuid', protoName: 'companyGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userGuid', protoName: 'userGuid')
    ..hasRequiredFields = false
  ;

  JoinToCompanyRequest._() : super();
  factory JoinToCompanyRequest({
    $core.String? companyGuid,
    $core.String? userGuid,
  }) {
    final _result = create();
    if (companyGuid != null) {
      _result.companyGuid = companyGuid;
    }
    if (userGuid != null) {
      _result.userGuid = userGuid;
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
  $core.String get userGuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set userGuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserGuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserGuid() => clearField(2);
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

class DelCompanyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelCompanyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  DelCompanyRequest._() : super();
  factory DelCompanyRequest({
    $core.String? guid,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    return _result;
  }
  factory DelCompanyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelCompanyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelCompanyRequest clone() => DelCompanyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelCompanyRequest copyWith(void Function(DelCompanyRequest) updates) => super.copyWith((message) => updates(message as DelCompanyRequest)) as DelCompanyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DelCompanyRequest create() => DelCompanyRequest._();
  DelCompanyRequest createEmptyInstance() => create();
  static $pb.PbList<DelCompanyRequest> createRepeated() => $pb.PbList<DelCompanyRequest>();
  @$core.pragma('dart2js:noInline')
  static DelCompanyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelCompanyRequest>(create);
  static DelCompanyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);
}

class DelCompanyReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelCompanyReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'company'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  DelCompanyReply._() : super();
  factory DelCompanyReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory DelCompanyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelCompanyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelCompanyReply clone() => DelCompanyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelCompanyReply copyWith(void Function(DelCompanyReply) updates) => super.copyWith((message) => updates(message as DelCompanyReply)) as DelCompanyReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DelCompanyReply create() => DelCompanyReply._();
  DelCompanyReply createEmptyInstance() => create();
  static $pb.PbList<DelCompanyReply> createRepeated() => $pb.PbList<DelCompanyReply>();
  @$core.pragma('dart2js:noInline')
  static DelCompanyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelCompanyReply>(create);
  static DelCompanyReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

