///
//  Generated code. Do not modify.
//  source: msg.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CompanyReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompanyReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerGuid', protoName: 'ownerGuid')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerName', protoName: 'ownerName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lng')
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterGuids', protoName: 'masterGuids')
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterNames', protoName: 'masterNames')
    ..hasRequiredFields = false
  ;

  CompanyReply._() : super();
  factory CompanyReply({
    $core.String? name,
    $core.String? guid,
    $core.String? ownerGuid,
    $core.String? ownerName,
    $core.String? lat,
    $core.String? lng,
    $core.Iterable<$core.String>? masterGuids,
    $core.Iterable<$core.String>? masterNames,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (guid != null) {
      _result.guid = guid;
    }
    if (ownerGuid != null) {
      _result.ownerGuid = ownerGuid;
    }
    if (ownerName != null) {
      _result.ownerName = ownerName;
    }
    if (lat != null) {
      _result.lat = lat;
    }
    if (lng != null) {
      _result.lng = lng;
    }
    if (masterGuids != null) {
      _result.masterGuids.addAll(masterGuids);
    }
    if (masterNames != null) {
      _result.masterNames.addAll(masterNames);
    }
    return _result;
  }
  factory CompanyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompanyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompanyReply clone() => CompanyReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompanyReply copyWith(void Function(CompanyReply) updates) => super.copyWith((message) => updates(message as CompanyReply)) as CompanyReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompanyReply create() => CompanyReply._();
  CompanyReply createEmptyInstance() => create();
  static $pb.PbList<CompanyReply> createRepeated() => $pb.PbList<CompanyReply>();
  @$core.pragma('dart2js:noInline')
  static CompanyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompanyReply>(create);
  static CompanyReply? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get ownerGuid => $_getSZ(2);
  @$pb.TagNumber(3)
  set ownerGuid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOwnerGuid() => $_has(2);
  @$pb.TagNumber(3)
  void clearOwnerGuid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get ownerName => $_getSZ(3);
  @$pb.TagNumber(4)
  set ownerName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOwnerName() => $_has(3);
  @$pb.TagNumber(4)
  void clearOwnerName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get lat => $_getSZ(4);
  @$pb.TagNumber(5)
  set lat($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLat() => $_has(4);
  @$pb.TagNumber(5)
  void clearLat() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lng => $_getSZ(5);
  @$pb.TagNumber(6)
  set lng($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLng() => $_has(5);
  @$pb.TagNumber(6)
  void clearLng() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get masterGuids => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get masterNames => $_getList(7);
}

class AddCompanyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddCompanyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerGuid', protoName: 'ownerGuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerName', protoName: 'ownerName')
    ..hasRequiredFields = false
  ;

  AddCompanyRequest._() : super();
  factory AddCompanyRequest({
    $core.String? name,
    $core.String? ownerGuid,
    $core.String? ownerName,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (ownerGuid != null) {
      _result.ownerGuid = ownerGuid;
    }
    if (ownerName != null) {
      _result.ownerName = ownerName;
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
  $core.String get ownerGuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerGuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerGuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerGuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ownerName => $_getSZ(2);
  @$pb.TagNumber(3)
  set ownerName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOwnerName() => $_has(2);
  @$pb.TagNumber(3)
  void clearOwnerName() => clearField(3);
}

class AddCompanyReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddCompanyReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
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

class DelCompanyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelCompanyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelCompanyReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
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

