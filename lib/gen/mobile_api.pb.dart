///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetFitForCompanyUsersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFitForCompanyUsersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'companyGuid', protoName: 'companyGuid')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isConsistIn', protoName: 'isConsistIn')
    ..hasRequiredFields = false
  ;

  GetFitForCompanyUsersRequest._() : super();
  factory GetFitForCompanyUsersRequest({
    $core.String? companyGuid,
    $core.bool? isConsistIn,
  }) {
    final _result = create();
    if (companyGuid != null) {
      _result.companyGuid = companyGuid;
    }
    if (isConsistIn != null) {
      _result.isConsistIn = isConsistIn;
    }
    return _result;
  }
  factory GetFitForCompanyUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFitForCompanyUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFitForCompanyUsersRequest clone() => GetFitForCompanyUsersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFitForCompanyUsersRequest copyWith(void Function(GetFitForCompanyUsersRequest) updates) => super.copyWith((message) => updates(message as GetFitForCompanyUsersRequest)) as GetFitForCompanyUsersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFitForCompanyUsersRequest create() => GetFitForCompanyUsersRequest._();
  GetFitForCompanyUsersRequest createEmptyInstance() => create();
  static $pb.PbList<GetFitForCompanyUsersRequest> createRepeated() => $pb.PbList<GetFitForCompanyUsersRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFitForCompanyUsersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFitForCompanyUsersRequest>(create);
  static GetFitForCompanyUsersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get companyGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set companyGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCompanyGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompanyGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isConsistIn => $_getBF(1);
  @$pb.TagNumber(2)
  set isConsistIn($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsConsistIn() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsConsistIn() => clearField(2);
}

class GetFitForCompanyUsersReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFitForCompanyUsersReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guids')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'names')
    ..hasRequiredFields = false
  ;

  GetFitForCompanyUsersReply._() : super();
  factory GetFitForCompanyUsersReply({
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
  factory GetFitForCompanyUsersReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFitForCompanyUsersReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFitForCompanyUsersReply clone() => GetFitForCompanyUsersReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFitForCompanyUsersReply copyWith(void Function(GetFitForCompanyUsersReply) updates) => super.copyWith((message) => updates(message as GetFitForCompanyUsersReply)) as GetFitForCompanyUsersReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFitForCompanyUsersReply create() => GetFitForCompanyUsersReply._();
  GetFitForCompanyUsersReply createEmptyInstance() => create();
  static $pb.PbList<GetFitForCompanyUsersReply> createRepeated() => $pb.PbList<GetFitForCompanyUsersReply>();
  @$core.pragma('dart2js:noInline')
  static GetFitForCompanyUsersReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFitForCompanyUsersReply>(create);
  static GetFitForCompanyUsersReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get guids => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get names => $_getList(1);
}

class ApiGetUserLocationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiGetUserLocationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  ApiGetUserLocationRequest._() : super();
  factory ApiGetUserLocationRequest({
    $core.String? guid,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    return _result;
  }
  factory ApiGetUserLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiGetUserLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiGetUserLocationRequest clone() => ApiGetUserLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiGetUserLocationRequest copyWith(void Function(ApiGetUserLocationRequest) updates) => super.copyWith((message) => updates(message as ApiGetUserLocationRequest)) as ApiGetUserLocationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiGetUserLocationRequest create() => ApiGetUserLocationRequest._();
  ApiGetUserLocationRequest createEmptyInstance() => create();
  static $pb.PbList<ApiGetUserLocationRequest> createRepeated() => $pb.PbList<ApiGetUserLocationRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiGetUserLocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiGetUserLocationRequest>(create);
  static ApiGetUserLocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);
}

class ApiGetUserLocationReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiGetUserLocationReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forGuid', protoName: 'forGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lng')
    ..hasRequiredFields = false
  ;

  ApiGetUserLocationReply._() : super();
  factory ApiGetUserLocationReply({
    $core.String? forGuid,
    $core.String? lat,
    $core.String? lng,
  }) {
    final _result = create();
    if (forGuid != null) {
      _result.forGuid = forGuid;
    }
    if (lat != null) {
      _result.lat = lat;
    }
    if (lng != null) {
      _result.lng = lng;
    }
    return _result;
  }
  factory ApiGetUserLocationReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiGetUserLocationReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiGetUserLocationReply clone() => ApiGetUserLocationReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiGetUserLocationReply copyWith(void Function(ApiGetUserLocationReply) updates) => super.copyWith((message) => updates(message as ApiGetUserLocationReply)) as ApiGetUserLocationReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiGetUserLocationReply create() => ApiGetUserLocationReply._();
  ApiGetUserLocationReply createEmptyInstance() => create();
  static $pb.PbList<ApiGetUserLocationReply> createRepeated() => $pb.PbList<ApiGetUserLocationReply>();
  @$core.pragma('dart2js:noInline')
  static ApiGetUserLocationReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiGetUserLocationReply>(create);
  static ApiGetUserLocationReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get forGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set forGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasForGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearForGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lat => $_getSZ(1);
  @$pb.TagNumber(2)
  set lat($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLat() => $_has(1);
  @$pb.TagNumber(2)
  void clearLat() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lng => $_getSZ(2);
  @$pb.TagNumber(3)
  set lng($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLng() => $_has(2);
  @$pb.TagNumber(3)
  void clearLng() => clearField(3);
}

class ApiSetUserLocationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiSetUserLocationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forGuid', protoName: 'forGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lng')
    ..hasRequiredFields = false
  ;

  ApiSetUserLocationRequest._() : super();
  factory ApiSetUserLocationRequest({
    $core.String? forGuid,
    $core.String? lat,
    $core.String? lng,
  }) {
    final _result = create();
    if (forGuid != null) {
      _result.forGuid = forGuid;
    }
    if (lat != null) {
      _result.lat = lat;
    }
    if (lng != null) {
      _result.lng = lng;
    }
    return _result;
  }
  factory ApiSetUserLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiSetUserLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiSetUserLocationRequest clone() => ApiSetUserLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiSetUserLocationRequest copyWith(void Function(ApiSetUserLocationRequest) updates) => super.copyWith((message) => updates(message as ApiSetUserLocationRequest)) as ApiSetUserLocationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiSetUserLocationRequest create() => ApiSetUserLocationRequest._();
  ApiSetUserLocationRequest createEmptyInstance() => create();
  static $pb.PbList<ApiSetUserLocationRequest> createRepeated() => $pb.PbList<ApiSetUserLocationRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiSetUserLocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiSetUserLocationRequest>(create);
  static ApiSetUserLocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get forGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set forGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasForGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearForGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lat => $_getSZ(1);
  @$pb.TagNumber(2)
  set lat($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLat() => $_has(1);
  @$pb.TagNumber(2)
  void clearLat() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lng => $_getSZ(2);
  @$pb.TagNumber(3)
  set lng($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLng() => $_has(2);
  @$pb.TagNumber(3)
  void clearLng() => clearField(3);
}

class ApiSetUserLocationReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiSetUserLocationReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  ApiSetUserLocationReply._() : super();
  factory ApiSetUserLocationReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory ApiSetUserLocationReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiSetUserLocationReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiSetUserLocationReply clone() => ApiSetUserLocationReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiSetUserLocationReply copyWith(void Function(ApiSetUserLocationReply) updates) => super.copyWith((message) => updates(message as ApiSetUserLocationReply)) as ApiSetUserLocationReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiSetUserLocationReply create() => ApiSetUserLocationReply._();
  ApiSetUserLocationReply createEmptyInstance() => create();
  static $pb.PbList<ApiSetUserLocationReply> createRepeated() => $pb.PbList<ApiSetUserLocationReply>();
  @$core.pragma('dart2js:noInline')
  static ApiSetUserLocationReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiSetUserLocationReply>(create);
  static ApiSetUserLocationReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

