///
//  Generated code. Do not modify.
//  source: order.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AddOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddOrderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'order'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userName', protoName: 'userName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterName', protoName: 'masterName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillName', protoName: 'skillName')
    ..hasRequiredFields = false
  ;

  AddOrderRequest._() : super();
  factory AddOrderRequest({
    $core.String? name,
    $core.String? userName,
    $core.String? masterName,
    $core.String? skillName,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
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
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get masterName => $_getSZ(2);
  @$pb.TagNumber(3)
  set masterName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMasterName() => $_has(2);
  @$pb.TagNumber(3)
  void clearMasterName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get skillName => $_getSZ(3);
  @$pb.TagNumber(4)
  set skillName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSkillName() => $_has(3);
  @$pb.TagNumber(4)
  void clearSkillName() => clearField(4);
}

class AddOrderReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddOrderReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'order'), createEmptyInstance: create)
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

class GetOrdersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOrdersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'order'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userGuid', protoName: 'userGuid')
    ..hasRequiredFields = false
  ;

  GetOrdersRequest._() : super();
  factory GetOrdersRequest({
    $core.String? userGuid,
  }) {
    final _result = create();
    if (userGuid != null) {
      _result.userGuid = userGuid;
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
  $core.String get userGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set userGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserGuid() => clearField(1);
}

class GetOrdersReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOrdersReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'order'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'names')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guids')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userNames', protoName: 'userNames')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterNames', protoName: 'masterNames')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skillNames', protoName: 'skillNames')
    ..hasRequiredFields = false
  ;

  GetOrdersReply._() : super();
  factory GetOrdersReply({
    $core.Iterable<$core.String>? names,
    $core.Iterable<$core.String>? guids,
    $core.Iterable<$core.String>? userNames,
    $core.Iterable<$core.String>? masterNames,
    $core.Iterable<$core.String>? skillNames,
  }) {
    final _result = create();
    if (names != null) {
      _result.names.addAll(names);
    }
    if (guids != null) {
      _result.guids.addAll(guids);
    }
    if (userNames != null) {
      _result.userNames.addAll(userNames);
    }
    if (masterNames != null) {
      _result.masterNames.addAll(masterNames);
    }
    if (skillNames != null) {
      _result.skillNames.addAll(skillNames);
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
  $core.List<$core.String> get names => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get guids => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get userNames => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get masterNames => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get skillNames => $_getList(4);
}

class GetOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOrderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'order'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOrderReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'order'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GetOrderReply._() : super();
  factory GetOrderReply({
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

class UpdateOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateOrderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'order'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  UpdateOrderRequest._() : super();
  factory UpdateOrderRequest({
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
  factory UpdateOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateOrderRequest clone() => UpdateOrderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateOrderRequest copyWith(void Function(UpdateOrderRequest) updates) => super.copyWith((message) => updates(message as UpdateOrderRequest)) as UpdateOrderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateOrderRequest create() => UpdateOrderRequest._();
  UpdateOrderRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateOrderRequest> createRepeated() => $pb.PbList<UpdateOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateOrderRequest>(create);
  static UpdateOrderRequest? _defaultInstance;

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

class UpdateOrderReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateOrderReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'order'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  UpdateOrderReply._() : super();
  factory UpdateOrderReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory UpdateOrderReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateOrderReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateOrderReply clone() => UpdateOrderReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateOrderReply copyWith(void Function(UpdateOrderReply) updates) => super.copyWith((message) => updates(message as UpdateOrderReply)) as UpdateOrderReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateOrderReply create() => UpdateOrderReply._();
  UpdateOrderReply createEmptyInstance() => create();
  static $pb.PbList<UpdateOrderReply> createRepeated() => $pb.PbList<UpdateOrderReply>();
  @$core.pragma('dart2js:noInline')
  static UpdateOrderReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateOrderReply>(create);
  static UpdateOrderReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class DelOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelOrderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'order'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  DelOrderRequest._() : super();
  factory DelOrderRequest({
    $core.String? guid,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
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
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);
}

class DelOrderReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DelOrderReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'order'), createEmptyInstance: create)
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

