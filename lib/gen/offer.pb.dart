///
//  Generated code. Do not modify.
//  source: offer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AddOfferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddOfferRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'offer'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterGuid', protoName: 'masterGuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterName', protoName: 'masterName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillGuid', protoName: 'skillGuid')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillName', protoName: 'skillName')
    ..hasRequiredFields = false
  ;

  AddOfferRequest._() : super();
  factory AddOfferRequest({
    $core.String? name,
    $core.String? masterGuid,
    $core.String? masterName,
    $core.String? skillGuid,
    $core.String? skillName,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (masterGuid != null) {
      _result.masterGuid = masterGuid;
    }
    if (masterName != null) {
      _result.masterName = masterName;
    }
    if (skillGuid != null) {
      _result.skillGuid = skillGuid;
    }
    if (skillName != null) {
      _result.skillName = skillName;
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
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get masterGuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set masterGuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMasterGuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearMasterGuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get masterName => $_getSZ(2);
  @$pb.TagNumber(3)
  set masterName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMasterName() => $_has(2);
  @$pb.TagNumber(3)
  void clearMasterName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get skillGuid => $_getSZ(3);
  @$pb.TagNumber(4)
  set skillGuid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSkillGuid() => $_has(3);
  @$pb.TagNumber(4)
  void clearSkillGuid() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get skillName => $_getSZ(4);
  @$pb.TagNumber(5)
  set skillName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSkillName() => $_has(4);
  @$pb.TagNumber(5)
  void clearSkillName() => clearField(5);
}

class AddOfferReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddOfferReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'offer'), createEmptyInstance: create)
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

class GetOffersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOffersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'offer'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterGuid', protoName: 'masterGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillGuid', protoName: 'skillGuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientGuid', protoName: 'clientGuid')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forMaster', protoName: 'forMaster')
    ..hasRequiredFields = false
  ;

  GetOffersRequest._() : super();
  factory GetOffersRequest({
    $core.String? masterGuid,
    $core.String? skillGuid,
    $core.String? clientGuid,
    $core.bool? forMaster,
  }) {
    final _result = create();
    if (masterGuid != null) {
      _result.masterGuid = masterGuid;
    }
    if (skillGuid != null) {
      _result.skillGuid = skillGuid;
    }
    if (clientGuid != null) {
      _result.clientGuid = clientGuid;
    }
    if (forMaster != null) {
      _result.forMaster = forMaster;
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
  $core.String get masterGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set masterGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMasterGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMasterGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get skillGuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set skillGuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSkillGuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSkillGuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get clientGuid => $_getSZ(2);
  @$pb.TagNumber(3)
  set clientGuid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClientGuid() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientGuid() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get forMaster => $_getBF(3);
  @$pb.TagNumber(4)
  set forMaster($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasForMaster() => $_has(3);
  @$pb.TagNumber(4)
  void clearForMaster() => clearField(4);
}

class GetOffersReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOffersReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'offer'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'names')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guids')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderGuids', protoName: 'orderGuids')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterGuids', protoName: 'masterGuids')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterNames', protoName: 'masterNames')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillGuids', protoName: 'skillGuids')
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillNames', protoName: 'skillNames')
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statuses')
    ..hasRequiredFields = false
  ;

  GetOffersReply._() : super();
  factory GetOffersReply({
    $core.Iterable<$core.String>? names,
    $core.Iterable<$core.String>? guids,
    $core.Iterable<$core.String>? orderGuids,
    $core.Iterable<$core.String>? masterGuids,
    $core.Iterable<$core.String>? masterNames,
    $core.Iterable<$core.String>? skillGuids,
    $core.Iterable<$core.String>? skillNames,
    $core.Iterable<$core.String>? statuses,
  }) {
    final _result = create();
    if (names != null) {
      _result.names.addAll(names);
    }
    if (guids != null) {
      _result.guids.addAll(guids);
    }
    if (orderGuids != null) {
      _result.orderGuids.addAll(orderGuids);
    }
    if (masterGuids != null) {
      _result.masterGuids.addAll(masterGuids);
    }
    if (masterNames != null) {
      _result.masterNames.addAll(masterNames);
    }
    if (skillGuids != null) {
      _result.skillGuids.addAll(skillGuids);
    }
    if (skillNames != null) {
      _result.skillNames.addAll(skillNames);
    }
    if (statuses != null) {
      _result.statuses.addAll(statuses);
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
  $core.List<$core.String> get names => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get guids => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get orderGuids => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get masterGuids => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get masterNames => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get skillGuids => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.String> get skillNames => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get statuses => $_getList(7);
}

class GetOffersByMasterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOffersByMasterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'offer'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterGuid', protoName: 'masterGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientGuid', protoName: 'clientGuid')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forMaster', protoName: 'forMaster')
    ..hasRequiredFields = false
  ;

  GetOffersByMasterRequest._() : super();
  factory GetOffersByMasterRequest({
    $core.String? masterGuid,
    $core.String? clientGuid,
    $core.bool? forMaster,
  }) {
    final _result = create();
    if (masterGuid != null) {
      _result.masterGuid = masterGuid;
    }
    if (clientGuid != null) {
      _result.clientGuid = clientGuid;
    }
    if (forMaster != null) {
      _result.forMaster = forMaster;
    }
    return _result;
  }
  factory GetOffersByMasterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOffersByMasterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOffersByMasterRequest clone() => GetOffersByMasterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOffersByMasterRequest copyWith(void Function(GetOffersByMasterRequest) updates) => super.copyWith((message) => updates(message as GetOffersByMasterRequest)) as GetOffersByMasterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOffersByMasterRequest create() => GetOffersByMasterRequest._();
  GetOffersByMasterRequest createEmptyInstance() => create();
  static $pb.PbList<GetOffersByMasterRequest> createRepeated() => $pb.PbList<GetOffersByMasterRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOffersByMasterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOffersByMasterRequest>(create);
  static GetOffersByMasterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get masterGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set masterGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMasterGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMasterGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get clientGuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set clientGuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientGuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientGuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get forMaster => $_getBF(2);
  @$pb.TagNumber(3)
  set forMaster($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasForMaster() => $_has(2);
  @$pb.TagNumber(3)
  void clearForMaster() => clearField(3);
}

class GetOffersBySkillRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOffersBySkillRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'offer'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillGuid', protoName: 'skillGuid')
    ..hasRequiredFields = false
  ;

  GetOffersBySkillRequest._() : super();
  factory GetOffersBySkillRequest({
    $core.String? skillGuid,
  }) {
    final _result = create();
    if (skillGuid != null) {
      _result.skillGuid = skillGuid;
    }
    return _result;
  }
  factory GetOffersBySkillRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOffersBySkillRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOffersBySkillRequest clone() => GetOffersBySkillRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOffersBySkillRequest copyWith(void Function(GetOffersBySkillRequest) updates) => super.copyWith((message) => updates(message as GetOffersBySkillRequest)) as GetOffersBySkillRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOffersBySkillRequest create() => GetOffersBySkillRequest._();
  GetOffersBySkillRequest createEmptyInstance() => create();
  static $pb.PbList<GetOffersBySkillRequest> createRepeated() => $pb.PbList<GetOffersBySkillRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOffersBySkillRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOffersBySkillRequest>(create);
  static GetOffersBySkillRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get skillGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set skillGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkillGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkillGuid() => clearField(1);
}

class GetOfferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOfferRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'offer'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOfferReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'offer'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GetOfferReply._() : super();
  factory GetOfferReply({
    $core.String? guid,
    $core.String? name,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    if (name != null) {
      _result.name = name;
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
}

class UpdateOfferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateOfferRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'offer'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  UpdateOfferRequest._() : super();
  factory UpdateOfferRequest({
    $core.String? guid,
    $core.String? name,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory UpdateOfferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateOfferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateOfferRequest clone() => UpdateOfferRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateOfferRequest copyWith(void Function(UpdateOfferRequest) updates) => super.copyWith((message) => updates(message as UpdateOfferRequest)) as UpdateOfferRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateOfferRequest create() => UpdateOfferRequest._();
  UpdateOfferRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateOfferRequest> createRepeated() => $pb.PbList<UpdateOfferRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateOfferRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateOfferRequest>(create);
  static UpdateOfferRequest? _defaultInstance;

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
}

class UpdateOfferReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateOfferReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'offer'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  UpdateOfferReply._() : super();
  factory UpdateOfferReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory UpdateOfferReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateOfferReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateOfferReply clone() => UpdateOfferReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateOfferReply copyWith(void Function(UpdateOfferReply) updates) => super.copyWith((message) => updates(message as UpdateOfferReply)) as UpdateOfferReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateOfferReply create() => UpdateOfferReply._();
  UpdateOfferReply createEmptyInstance() => create();
  static $pb.PbList<UpdateOfferReply> createRepeated() => $pb.PbList<UpdateOfferReply>();
  @$core.pragma('dart2js:noInline')
  static UpdateOfferReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateOfferReply>(create);
  static UpdateOfferReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class DelOfferRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelOfferRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'offer'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  DelOfferRequest._() : super();
  factory DelOfferRequest({
    $core.String? guid,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
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
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);
}

class DelOfferReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelOfferReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'offer'), createEmptyInstance: create)
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

