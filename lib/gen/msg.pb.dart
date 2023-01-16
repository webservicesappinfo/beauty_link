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
    ..pc<MasterReply>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masters', $pb.PbFieldType.PM, subBuilder: MasterReply.create)
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
    $core.Iterable<MasterReply>? masters,
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
    if (masters != null) {
      _result.masters.addAll(masters);
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
  $core.List<MasterReply> get masters => $_getList(6);
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

class AddMasterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddMasterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOM<MasterReply>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'master', subBuilder: MasterReply.create)
    ..hasRequiredFields = false
  ;

  AddMasterRequest._() : super();
  factory AddMasterRequest({
    MasterReply? master,
  }) {
    final _result = create();
    if (master != null) {
      _result.master = master;
    }
    return _result;
  }
  factory AddMasterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddMasterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddMasterRequest clone() => AddMasterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddMasterRequest copyWith(void Function(AddMasterRequest) updates) => super.copyWith((message) => updates(message as AddMasterRequest)) as AddMasterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddMasterRequest create() => AddMasterRequest._();
  AddMasterRequest createEmptyInstance() => create();
  static $pb.PbList<AddMasterRequest> createRepeated() => $pb.PbList<AddMasterRequest>();
  @$core.pragma('dart2js:noInline')
  static AddMasterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddMasterRequest>(create);
  static AddMasterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  MasterReply get master => $_getN(0);
  @$pb.TagNumber(1)
  set master(MasterReply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMaster() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaster() => clearField(1);
  @$pb.TagNumber(1)
  MasterReply ensureMaster() => $_ensure(0);
}

class AddMasterReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddMasterReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  AddMasterReply._() : super();
  factory AddMasterReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory AddMasterReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddMasterReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddMasterReply clone() => AddMasterReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddMasterReply copyWith(void Function(AddMasterReply) updates) => super.copyWith((message) => updates(message as AddMasterReply)) as AddMasterReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddMasterReply create() => AddMasterReply._();
  AddMasterReply createEmptyInstance() => create();
  static $pb.PbList<AddMasterReply> createRepeated() => $pb.PbList<AddMasterReply>();
  @$core.pragma('dart2js:noInline')
  static AddMasterReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddMasterReply>(create);
  static AddMasterReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class DelMasterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelMasterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOM<MasterReply>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'master', subBuilder: MasterReply.create)
    ..hasRequiredFields = false
  ;

  DelMasterRequest._() : super();
  factory DelMasterRequest({
    MasterReply? master,
  }) {
    final _result = create();
    if (master != null) {
      _result.master = master;
    }
    return _result;
  }
  factory DelMasterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelMasterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelMasterRequest clone() => DelMasterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelMasterRequest copyWith(void Function(DelMasterRequest) updates) => super.copyWith((message) => updates(message as DelMasterRequest)) as DelMasterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DelMasterRequest create() => DelMasterRequest._();
  DelMasterRequest createEmptyInstance() => create();
  static $pb.PbList<DelMasterRequest> createRepeated() => $pb.PbList<DelMasterRequest>();
  @$core.pragma('dart2js:noInline')
  static DelMasterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelMasterRequest>(create);
  static DelMasterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  MasterReply get master => $_getN(0);
  @$pb.TagNumber(1)
  set master(MasterReply v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMaster() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaster() => clearField(1);
  @$pb.TagNumber(1)
  MasterReply ensureMaster() => $_ensure(0);
}

class DelMasterReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelMasterReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  DelMasterReply._() : super();
  factory DelMasterReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory DelMasterReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelMasterReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelMasterReply clone() => DelMasterReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelMasterReply copyWith(void Function(DelMasterReply) updates) => super.copyWith((message) => updates(message as DelMasterReply)) as DelMasterReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DelMasterReply create() => DelMasterReply._();
  DelMasterReply createEmptyInstance() => create();
  static $pb.PbList<DelMasterReply> createRepeated() => $pb.PbList<DelMasterReply>();
  @$core.pragma('dart2js:noInline')
  static DelMasterReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelMasterReply>(create);
  static DelMasterReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class MasterReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MasterReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uidFB', protoName: 'uidFB')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'companyGuid', protoName: 'companyGuid')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'companyName', protoName: 'companyName')
    ..pc<OfferApi>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offers', $pb.PbFieldType.PM, subBuilder: OfferApi.create)
    ..hasRequiredFields = false
  ;

  MasterReply._() : super();
  factory MasterReply({
    $core.String? uidFB,
    $core.String? name,
    $core.String? companyGuid,
    $core.String? companyName,
    $core.Iterable<OfferApi>? offers,
  }) {
    final _result = create();
    if (uidFB != null) {
      _result.uidFB = uidFB;
    }
    if (name != null) {
      _result.name = name;
    }
    if (companyGuid != null) {
      _result.companyGuid = companyGuid;
    }
    if (companyName != null) {
      _result.companyName = companyName;
    }
    if (offers != null) {
      _result.offers.addAll(offers);
    }
    return _result;
  }
  factory MasterReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MasterReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MasterReply clone() => MasterReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MasterReply copyWith(void Function(MasterReply) updates) => super.copyWith((message) => updates(message as MasterReply)) as MasterReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MasterReply create() => MasterReply._();
  MasterReply createEmptyInstance() => create();
  static $pb.PbList<MasterReply> createRepeated() => $pb.PbList<MasterReply>();
  @$core.pragma('dart2js:noInline')
  static MasterReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MasterReply>(create);
  static MasterReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uidFB => $_getSZ(0);
  @$pb.TagNumber(1)
  set uidFB($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUidFB() => $_has(0);
  @$pb.TagNumber(1)
  void clearUidFB() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get companyGuid => $_getSZ(2);
  @$pb.TagNumber(3)
  set companyGuid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompanyGuid() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompanyGuid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get companyName => $_getSZ(3);
  @$pb.TagNumber(4)
  set companyName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCompanyName() => $_has(3);
  @$pb.TagNumber(4)
  void clearCompanyName() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<OfferApi> get offers => $_getList(4);
}

class OfferApi extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OfferApi', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desc')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'companyGuid', protoName: 'companyGuid')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'companyName', protoName: 'companyName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterGuid', protoName: 'masterGuid')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterName', protoName: 'masterName')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderGuid', protoName: 'orderGuid')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderName', protoName: 'orderName')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillGuid', protoName: 'skillGuid')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillName', protoName: 'skillName')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  OfferApi._() : super();
  factory OfferApi({
    $core.String? guid,
    $core.String? name,
    $core.String? desc,
    $core.String? companyGuid,
    $core.String? companyName,
    $core.String? masterGuid,
    $core.String? masterName,
    $core.String? orderGuid,
    $core.String? orderName,
    $core.String? skillGuid,
    $core.String? skillName,
    $core.String? status,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    if (name != null) {
      _result.name = name;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (companyGuid != null) {
      _result.companyGuid = companyGuid;
    }
    if (companyName != null) {
      _result.companyName = companyName;
    }
    if (masterGuid != null) {
      _result.masterGuid = masterGuid;
    }
    if (masterName != null) {
      _result.masterName = masterName;
    }
    if (orderGuid != null) {
      _result.orderGuid = orderGuid;
    }
    if (orderName != null) {
      _result.orderName = orderName;
    }
    if (skillGuid != null) {
      _result.skillGuid = skillGuid;
    }
    if (skillName != null) {
      _result.skillName = skillName;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory OfferApi.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OfferApi.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OfferApi clone() => OfferApi()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OfferApi copyWith(void Function(OfferApi) updates) => super.copyWith((message) => updates(message as OfferApi)) as OfferApi; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OfferApi create() => OfferApi._();
  OfferApi createEmptyInstance() => create();
  static $pb.PbList<OfferApi> createRepeated() => $pb.PbList<OfferApi>();
  @$core.pragma('dart2js:noInline')
  static OfferApi getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OfferApi>(create);
  static OfferApi? _defaultInstance;

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
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get companyGuid => $_getSZ(3);
  @$pb.TagNumber(4)
  set companyGuid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCompanyGuid() => $_has(3);
  @$pb.TagNumber(4)
  void clearCompanyGuid() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get companyName => $_getSZ(4);
  @$pb.TagNumber(5)
  set companyName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCompanyName() => $_has(4);
  @$pb.TagNumber(5)
  void clearCompanyName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get masterGuid => $_getSZ(5);
  @$pb.TagNumber(6)
  set masterGuid($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMasterGuid() => $_has(5);
  @$pb.TagNumber(6)
  void clearMasterGuid() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get masterName => $_getSZ(6);
  @$pb.TagNumber(7)
  set masterName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMasterName() => $_has(6);
  @$pb.TagNumber(7)
  void clearMasterName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get orderGuid => $_getSZ(7);
  @$pb.TagNumber(8)
  set orderGuid($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOrderGuid() => $_has(7);
  @$pb.TagNumber(8)
  void clearOrderGuid() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get orderName => $_getSZ(8);
  @$pb.TagNumber(9)
  set orderName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasOrderName() => $_has(8);
  @$pb.TagNumber(9)
  void clearOrderName() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get skillGuid => $_getSZ(9);
  @$pb.TagNumber(10)
  set skillGuid($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSkillGuid() => $_has(9);
  @$pb.TagNumber(10)
  void clearSkillGuid() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get skillName => $_getSZ(10);
  @$pb.TagNumber(11)
  set skillName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSkillName() => $_has(10);
  @$pb.TagNumber(11)
  void clearSkillName() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get status => $_getSZ(11);
  @$pb.TagNumber(12)
  set status($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasStatus() => $_has(11);
  @$pb.TagNumber(12)
  void clearStatus() => clearField(12);
}

class AddOfferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddOfferRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOM<OfferApi>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offer', subBuilder: OfferApi.create)
    ..hasRequiredFields = false
  ;

  AddOfferRequest._() : super();
  factory AddOfferRequest({
    OfferApi? offer,
  }) {
    final _result = create();
    if (offer != null) {
      _result.offer = offer;
    }
    return _result;
  }
  factory AddOfferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddOfferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddOfferRequest clone() => AddOfferRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddOfferRequest copyWith(void Function(AddOfferRequest) updates) => super.copyWith((message) => updates(message as AddOfferRequest)) as AddOfferRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddOfferRequest create() => AddOfferRequest._();
  AddOfferRequest createEmptyInstance() => create();
  static $pb.PbList<AddOfferRequest> createRepeated() => $pb.PbList<AddOfferRequest>();
  @$core.pragma('dart2js:noInline')
  static AddOfferRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddOfferRequest>(create);
  static AddOfferRequest? _defaultInstance;

  @$pb.TagNumber(1)
  OfferApi get offer => $_getN(0);
  @$pb.TagNumber(1)
  set offer(OfferApi v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffer() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffer() => clearField(1);
  @$pb.TagNumber(1)
  OfferApi ensureOffer() => $_ensure(0);
}

class AddOfferReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddOfferReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  AddOfferReply._() : super();
  factory AddOfferReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory AddOfferReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddOfferReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddOfferReply clone() => AddOfferReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddOfferReply copyWith(void Function(AddOfferReply) updates) => super.copyWith((message) => updates(message as AddOfferReply)) as AddOfferReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddOfferReply create() => AddOfferReply._();
  AddOfferReply createEmptyInstance() => create();
  static $pb.PbList<AddOfferReply> createRepeated() => $pb.PbList<AddOfferReply>();
  @$core.pragma('dart2js:noInline')
  static AddOfferReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddOfferReply>(create);
  static AddOfferReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class GetOfferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOfferRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  GetOfferRequest._() : super();
  factory GetOfferRequest({
    $core.String? guid,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    return _result;
  }
  factory GetOfferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOfferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOfferRequest clone() => GetOfferRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOfferRequest copyWith(void Function(GetOfferRequest) updates) => super.copyWith((message) => updates(message as GetOfferRequest)) as GetOfferRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOfferRequest create() => GetOfferRequest._();
  GetOfferRequest createEmptyInstance() => create();
  static $pb.PbList<GetOfferRequest> createRepeated() => $pb.PbList<GetOfferRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOfferRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOfferRequest>(create);
  static GetOfferRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);
}

class GetOfferReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOfferReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOM<OfferApi>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offer', subBuilder: OfferApi.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  GetOfferReply._() : super();
  factory GetOfferReply({
    OfferApi? offer,
    $core.bool? result,
  }) {
    final _result = create();
    if (offer != null) {
      _result.offer = offer;
    }
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory GetOfferReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOfferReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOfferReply clone() => GetOfferReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOfferReply copyWith(void Function(GetOfferReply) updates) => super.copyWith((message) => updates(message as GetOfferReply)) as GetOfferReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOfferReply create() => GetOfferReply._();
  GetOfferReply createEmptyInstance() => create();
  static $pb.PbList<GetOfferReply> createRepeated() => $pb.PbList<GetOfferReply>();
  @$core.pragma('dart2js:noInline')
  static GetOfferReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOfferReply>(create);
  static GetOfferReply? _defaultInstance;

  @$pb.TagNumber(1)
  OfferApi get offer => $_getN(0);
  @$pb.TagNumber(1)
  set offer(OfferApi v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffer() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffer() => clearField(1);
  @$pb.TagNumber(1)
  OfferApi ensureOffer() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get result => $_getBF(1);
  @$pb.TagNumber(2)
  set result($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);
}

class GetOffersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOffersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guids')
    ..hasRequiredFields = false
  ;

  GetOffersRequest._() : super();
  factory GetOffersRequest({
    $core.Iterable<$core.String>? guids,
  }) {
    final _result = create();
    if (guids != null) {
      _result.guids.addAll(guids);
    }
    return _result;
  }
  factory GetOffersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOffersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOffersRequest clone() => GetOffersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOffersRequest copyWith(void Function(GetOffersRequest) updates) => super.copyWith((message) => updates(message as GetOffersRequest)) as GetOffersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOffersRequest create() => GetOffersRequest._();
  GetOffersRequest createEmptyInstance() => create();
  static $pb.PbList<GetOffersRequest> createRepeated() => $pb.PbList<GetOffersRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOffersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOffersRequest>(create);
  static GetOffersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get guids => $_getList(0);
}

class GetOffersReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOffersReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..pc<OfferApi>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offers', $pb.PbFieldType.PM, subBuilder: OfferApi.create)
    ..hasRequiredFields = false
  ;

  GetOffersReply._() : super();
  factory GetOffersReply({
    $core.Iterable<OfferApi>? offers,
  }) {
    final _result = create();
    if (offers != null) {
      _result.offers.addAll(offers);
    }
    return _result;
  }
  factory GetOffersReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOffersReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOffersReply clone() => GetOffersReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOffersReply copyWith(void Function(GetOffersReply) updates) => super.copyWith((message) => updates(message as GetOffersReply)) as GetOffersReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOffersReply create() => GetOffersReply._();
  GetOffersReply createEmptyInstance() => create();
  static $pb.PbList<GetOffersReply> createRepeated() => $pb.PbList<GetOffersReply>();
  @$core.pragma('dart2js:noInline')
  static GetOffersReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOffersReply>(create);
  static GetOffersReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<OfferApi> get offers => $_getList(0);
}

class DelOfferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelOfferRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOM<OfferApi>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offer', subBuilder: OfferApi.create)
    ..hasRequiredFields = false
  ;

  DelOfferRequest._() : super();
  factory DelOfferRequest({
    OfferApi? offer,
  }) {
    final _result = create();
    if (offer != null) {
      _result.offer = offer;
    }
    return _result;
  }
  factory DelOfferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelOfferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelOfferRequest clone() => DelOfferRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelOfferRequest copyWith(void Function(DelOfferRequest) updates) => super.copyWith((message) => updates(message as DelOfferRequest)) as DelOfferRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DelOfferRequest create() => DelOfferRequest._();
  DelOfferRequest createEmptyInstance() => create();
  static $pb.PbList<DelOfferRequest> createRepeated() => $pb.PbList<DelOfferRequest>();
  @$core.pragma('dart2js:noInline')
  static DelOfferRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelOfferRequest>(create);
  static DelOfferRequest? _defaultInstance;

  @$pb.TagNumber(1)
  OfferApi get offer => $_getN(0);
  @$pb.TagNumber(1)
  set offer(OfferApi v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffer() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffer() => clearField(1);
  @$pb.TagNumber(1)
  OfferApi ensureOffer() => $_ensure(0);
}

class DelOfferReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelOfferReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  DelOfferReply._() : super();
  factory DelOfferReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory DelOfferReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelOfferReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelOfferReply clone() => DelOfferReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelOfferReply copyWith(void Function(DelOfferReply) updates) => super.copyWith((message) => updates(message as DelOfferReply)) as DelOfferReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DelOfferReply create() => DelOfferReply._();
  DelOfferReply createEmptyInstance() => create();
  static $pb.PbList<DelOfferReply> createRepeated() => $pb.PbList<DelOfferReply>();
  @$core.pragma('dart2js:noInline')
  static DelOfferReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelOfferReply>(create);
  static DelOfferReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class OrderApi extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderApi', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offerGuid', protoName: 'offerGuid')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userName', protoName: 'userName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterName', protoName: 'masterName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillName', protoName: 'skillName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userGuid', protoName: 'userGuid')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterGuid', protoName: 'masterGuid')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillGuid', protoName: 'skillGuid')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  OrderApi._() : super();
  factory OrderApi({
    $core.String? name,
    $core.String? guid,
    $core.String? offerGuid,
    $core.String? userName,
    $core.String? masterName,
    $core.String? skillName,
    $core.String? userGuid,
    $core.String? masterGuid,
    $core.String? skillGuid,
    $core.String? status,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (guid != null) {
      _result.guid = guid;
    }
    if (offerGuid != null) {
      _result.offerGuid = offerGuid;
    }
    if (userName != null) {
      _result.userName = userName;
    }
    if (masterName != null) {
      _result.masterName = masterName;
    }
    if (skillName != null) {
      _result.skillName = skillName;
    }
    if (userGuid != null) {
      _result.userGuid = userGuid;
    }
    if (masterGuid != null) {
      _result.masterGuid = masterGuid;
    }
    if (skillGuid != null) {
      _result.skillGuid = skillGuid;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory OrderApi.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderApi.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderApi clone() => OrderApi()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderApi copyWith(void Function(OrderApi) updates) => super.copyWith((message) => updates(message as OrderApi)) as OrderApi; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderApi create() => OrderApi._();
  OrderApi createEmptyInstance() => create();
  static $pb.PbList<OrderApi> createRepeated() => $pb.PbList<OrderApi>();
  @$core.pragma('dart2js:noInline')
  static OrderApi getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderApi>(create);
  static OrderApi? _defaultInstance;

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
  $core.String get offerGuid => $_getSZ(2);
  @$pb.TagNumber(3)
  set offerGuid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOfferGuid() => $_has(2);
  @$pb.TagNumber(3)
  void clearOfferGuid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get userName => $_getSZ(3);
  @$pb.TagNumber(4)
  set userName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserName() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get masterName => $_getSZ(4);
  @$pb.TagNumber(5)
  set masterName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMasterName() => $_has(4);
  @$pb.TagNumber(5)
  void clearMasterName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get skillName => $_getSZ(5);
  @$pb.TagNumber(6)
  set skillName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSkillName() => $_has(5);
  @$pb.TagNumber(6)
  void clearSkillName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get userGuid => $_getSZ(6);
  @$pb.TagNumber(7)
  set userGuid($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUserGuid() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserGuid() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get masterGuid => $_getSZ(7);
  @$pb.TagNumber(8)
  set masterGuid($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMasterGuid() => $_has(7);
  @$pb.TagNumber(8)
  void clearMasterGuid() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get skillGuid => $_getSZ(8);
  @$pb.TagNumber(9)
  set skillGuid($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSkillGuid() => $_has(8);
  @$pb.TagNumber(9)
  void clearSkillGuid() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get status => $_getSZ(9);
  @$pb.TagNumber(10)
  set status($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasStatus() => $_has(9);
  @$pb.TagNumber(10)
  void clearStatus() => clearField(10);
}

class AddOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddOrderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOM<OrderApi>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'order', subBuilder: OrderApi.create)
    ..hasRequiredFields = false
  ;

  AddOrderRequest._() : super();
  factory AddOrderRequest({
    OrderApi? order,
  }) {
    final _result = create();
    if (order != null) {
      _result.order = order;
    }
    return _result;
  }
  factory AddOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddOrderRequest clone() => AddOrderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddOrderRequest copyWith(void Function(AddOrderRequest) updates) => super.copyWith((message) => updates(message as AddOrderRequest)) as AddOrderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddOrderRequest create() => AddOrderRequest._();
  AddOrderRequest createEmptyInstance() => create();
  static $pb.PbList<AddOrderRequest> createRepeated() => $pb.PbList<AddOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static AddOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddOrderRequest>(create);
  static AddOrderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  OrderApi get order => $_getN(0);
  @$pb.TagNumber(1)
  set order(OrderApi v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrder() => clearField(1);
  @$pb.TagNumber(1)
  OrderApi ensureOrder() => $_ensure(0);
}

class AddOrderReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddOrderReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  AddOrderReply._() : super();
  factory AddOrderReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory AddOrderReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddOrderReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddOrderReply clone() => AddOrderReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddOrderReply copyWith(void Function(AddOrderReply) updates) => super.copyWith((message) => updates(message as AddOrderReply)) as AddOrderReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddOrderReply create() => AddOrderReply._();
  AddOrderReply createEmptyInstance() => create();
  static $pb.PbList<AddOrderReply> createRepeated() => $pb.PbList<AddOrderReply>();
  @$core.pragma('dart2js:noInline')
  static AddOrderReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddOrderReply>(create);
  static AddOrderReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class GetOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOrderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  GetOrderRequest._() : super();
  factory GetOrderRequest({
    $core.String? guid,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    return _result;
  }
  factory GetOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrderRequest clone() => GetOrderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrderRequest copyWith(void Function(GetOrderRequest) updates) => super.copyWith((message) => updates(message as GetOrderRequest)) as GetOrderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOrderRequest create() => GetOrderRequest._();
  GetOrderRequest createEmptyInstance() => create();
  static $pb.PbList<GetOrderRequest> createRepeated() => $pb.PbList<GetOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrderRequest>(create);
  static GetOrderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);
}

class GetOrderReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOrderReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOM<OrderApi>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offer', subBuilder: OrderApi.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  GetOrderReply._() : super();
  factory GetOrderReply({
    OrderApi? offer,
    $core.bool? result,
  }) {
    final _result = create();
    if (offer != null) {
      _result.offer = offer;
    }
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory GetOrderReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrderReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrderReply clone() => GetOrderReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrderReply copyWith(void Function(GetOrderReply) updates) => super.copyWith((message) => updates(message as GetOrderReply)) as GetOrderReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOrderReply create() => GetOrderReply._();
  GetOrderReply createEmptyInstance() => create();
  static $pb.PbList<GetOrderReply> createRepeated() => $pb.PbList<GetOrderReply>();
  @$core.pragma('dart2js:noInline')
  static GetOrderReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrderReply>(create);
  static GetOrderReply? _defaultInstance;

  @$pb.TagNumber(1)
  OrderApi get offer => $_getN(0);
  @$pb.TagNumber(1)
  set offer(OrderApi v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffer() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffer() => clearField(1);
  @$pb.TagNumber(1)
  OrderApi ensureOffer() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get result => $_getBF(1);
  @$pb.TagNumber(2)
  set result($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);
}

class GetOrdersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOrdersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guids')
    ..hasRequiredFields = false
  ;

  GetOrdersRequest._() : super();
  factory GetOrdersRequest({
    $core.Iterable<$core.String>? guids,
  }) {
    final _result = create();
    if (guids != null) {
      _result.guids.addAll(guids);
    }
    return _result;
  }
  factory GetOrdersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrdersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrdersRequest clone() => GetOrdersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrdersRequest copyWith(void Function(GetOrdersRequest) updates) => super.copyWith((message) => updates(message as GetOrdersRequest)) as GetOrdersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOrdersRequest create() => GetOrdersRequest._();
  GetOrdersRequest createEmptyInstance() => create();
  static $pb.PbList<GetOrdersRequest> createRepeated() => $pb.PbList<GetOrdersRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOrdersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrdersRequest>(create);
  static GetOrdersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get guids => $_getList(0);
}

class GetOrdersReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOrdersReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..pc<OfferApi>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offers', $pb.PbFieldType.PM, subBuilder: OfferApi.create)
    ..hasRequiredFields = false
  ;

  GetOrdersReply._() : super();
  factory GetOrdersReply({
    $core.Iterable<OfferApi>? offers,
  }) {
    final _result = create();
    if (offers != null) {
      _result.offers.addAll(offers);
    }
    return _result;
  }
  factory GetOrdersReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrdersReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrdersReply clone() => GetOrdersReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrdersReply copyWith(void Function(GetOrdersReply) updates) => super.copyWith((message) => updates(message as GetOrdersReply)) as GetOrdersReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOrdersReply create() => GetOrdersReply._();
  GetOrdersReply createEmptyInstance() => create();
  static $pb.PbList<GetOrdersReply> createRepeated() => $pb.PbList<GetOrdersReply>();
  @$core.pragma('dart2js:noInline')
  static GetOrdersReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrdersReply>(create);
  static GetOrdersReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<OfferApi> get offers => $_getList(0);
}

class DelOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelOrderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOM<OrderApi>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'order', subBuilder: OrderApi.create)
    ..hasRequiredFields = false
  ;

  DelOrderRequest._() : super();
  factory DelOrderRequest({
    OrderApi? order,
  }) {
    final _result = create();
    if (order != null) {
      _result.order = order;
    }
    return _result;
  }
  factory DelOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelOrderRequest clone() => DelOrderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelOrderRequest copyWith(void Function(DelOrderRequest) updates) => super.copyWith((message) => updates(message as DelOrderRequest)) as DelOrderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DelOrderRequest create() => DelOrderRequest._();
  DelOrderRequest createEmptyInstance() => create();
  static $pb.PbList<DelOrderRequest> createRepeated() => $pb.PbList<DelOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static DelOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelOrderRequest>(create);
  static DelOrderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  OrderApi get order => $_getN(0);
  @$pb.TagNumber(1)
  set order(OrderApi v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrder() => clearField(1);
  @$pb.TagNumber(1)
  OrderApi ensureOrder() => $_ensure(0);
}

class DelOrderReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelOrderReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'msg'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  DelOrderReply._() : super();
  factory DelOrderReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory DelOrderReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelOrderReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelOrderReply clone() => DelOrderReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelOrderReply copyWith(void Function(DelOrderReply) updates) => super.copyWith((message) => updates(message as DelOrderReply)) as DelOrderReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DelOrderReply create() => DelOrderReply._();
  DelOrderReply createEmptyInstance() => create();
  static $pb.PbList<DelOrderReply> createRepeated() => $pb.PbList<DelOrderReply>();
  @$core.pragma('dart2js:noInline')
  static DelOrderReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelOrderReply>(create);
  static DelOrderReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

