///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ApiAddUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiAddUserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  ApiAddUserRequest._() : super();
  factory ApiAddUserRequest({
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
  factory ApiAddUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiAddUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiAddUserRequest clone() => ApiAddUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiAddUserRequest copyWith(void Function(ApiAddUserRequest) updates) => super.copyWith((message) => updates(message as ApiAddUserRequest)) as ApiAddUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiAddUserRequest create() => ApiAddUserRequest._();
  ApiAddUserRequest createEmptyInstance() => create();
  static $pb.PbList<ApiAddUserRequest> createRepeated() => $pb.PbList<ApiAddUserRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiAddUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiAddUserRequest>(create);
  static ApiAddUserRequest? _defaultInstance;

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

class ApiAddUserReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiAddUserReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isAdded', protoName: 'isAdded')
    ..hasRequiredFields = false
  ;

  ApiAddUserReply._() : super();
  factory ApiAddUserReply({
    $core.bool? isAdded,
  }) {
    final _result = create();
    if (isAdded != null) {
      _result.isAdded = isAdded;
    }
    return _result;
  }
  factory ApiAddUserReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiAddUserReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiAddUserReply clone() => ApiAddUserReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiAddUserReply copyWith(void Function(ApiAddUserReply) updates) => super.copyWith((message) => updates(message as ApiAddUserReply)) as ApiAddUserReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiAddUserReply create() => ApiAddUserReply._();
  ApiAddUserReply createEmptyInstance() => create();
  static $pb.PbList<ApiAddUserReply> createRepeated() => $pb.PbList<ApiAddUserReply>();
  @$core.pragma('dart2js:noInline')
  static ApiAddUserReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiAddUserReply>(create);
  static ApiAddUserReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isAdded => $_getBF(0);
  @$pb.TagNumber(1)
  set isAdded($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsAdded() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsAdded() => clearField(1);
}

class ApiGetUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiGetUserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  ApiGetUserRequest._() : super();
  factory ApiGetUserRequest({
    $core.String? guid,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    return _result;
  }
  factory ApiGetUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiGetUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiGetUserRequest clone() => ApiGetUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiGetUserRequest copyWith(void Function(ApiGetUserRequest) updates) => super.copyWith((message) => updates(message as ApiGetUserRequest)) as ApiGetUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiGetUserRequest create() => ApiGetUserRequest._();
  ApiGetUserRequest createEmptyInstance() => create();
  static $pb.PbList<ApiGetUserRequest> createRepeated() => $pb.PbList<ApiGetUserRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiGetUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiGetUserRequest>(create);
  static ApiGetUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);
}

class ApiGetUserReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiGetUserReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  ApiGetUserReply._() : super();
  factory ApiGetUserReply({
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
  factory ApiGetUserReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiGetUserReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiGetUserReply clone() => ApiGetUserReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiGetUserReply copyWith(void Function(ApiGetUserReply) updates) => super.copyWith((message) => updates(message as ApiGetUserReply)) as ApiGetUserReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiGetUserReply create() => ApiGetUserReply._();
  ApiGetUserReply createEmptyInstance() => create();
  static $pb.PbList<ApiGetUserReply> createRepeated() => $pb.PbList<ApiGetUserReply>();
  @$core.pragma('dart2js:noInline')
  static ApiGetUserReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiGetUserReply>(create);
  static ApiGetUserReply? _defaultInstance;

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

class ApiGetUsersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiGetUsersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'restriction')
    ..hasRequiredFields = false
  ;

  ApiGetUsersRequest._() : super();
  factory ApiGetUsersRequest({
    $core.String? restriction,
  }) {
    final _result = create();
    if (restriction != null) {
      _result.restriction = restriction;
    }
    return _result;
  }
  factory ApiGetUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiGetUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiGetUsersRequest clone() => ApiGetUsersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiGetUsersRequest copyWith(void Function(ApiGetUsersRequest) updates) => super.copyWith((message) => updates(message as ApiGetUsersRequest)) as ApiGetUsersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiGetUsersRequest create() => ApiGetUsersRequest._();
  ApiGetUsersRequest createEmptyInstance() => create();
  static $pb.PbList<ApiGetUsersRequest> createRepeated() => $pb.PbList<ApiGetUsersRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiGetUsersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiGetUsersRequest>(create);
  static ApiGetUsersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get restriction => $_getSZ(0);
  @$pb.TagNumber(1)
  set restriction($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRestriction() => $_has(0);
  @$pb.TagNumber(1)
  void clearRestriction() => clearField(1);
}

class ApiGetUsersReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiGetUsersReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'names')
    ..hasRequiredFields = false
  ;

  ApiGetUsersReply._() : super();
  factory ApiGetUsersReply({
    $core.Iterable<$core.String>? names,
  }) {
    final _result = create();
    if (names != null) {
      _result.names.addAll(names);
    }
    return _result;
  }
  factory ApiGetUsersReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiGetUsersReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiGetUsersReply clone() => ApiGetUsersReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiGetUsersReply copyWith(void Function(ApiGetUsersReply) updates) => super.copyWith((message) => updates(message as ApiGetUsersReply)) as ApiGetUsersReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiGetUsersReply create() => ApiGetUsersReply._();
  ApiGetUsersReply createEmptyInstance() => create();
  static $pb.PbList<ApiGetUsersReply> createRepeated() => $pb.PbList<ApiGetUsersReply>();
  @$core.pragma('dart2js:noInline')
  static ApiGetUsersReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiGetUsersReply>(create);
  static ApiGetUsersReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get names => $_getList(0);
}

class ApiFindLastMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiFindLastMessageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromGuid', protoName: 'fromGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forGuid', protoName: 'forGuid')
    ..hasRequiredFields = false
  ;

  ApiFindLastMessageRequest._() : super();
  factory ApiFindLastMessageRequest({
    $core.String? fromGuid,
    $core.String? forGuid,
  }) {
    final _result = create();
    if (fromGuid != null) {
      _result.fromGuid = fromGuid;
    }
    if (forGuid != null) {
      _result.forGuid = forGuid;
    }
    return _result;
  }
  factory ApiFindLastMessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiFindLastMessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiFindLastMessageRequest clone() => ApiFindLastMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiFindLastMessageRequest copyWith(void Function(ApiFindLastMessageRequest) updates) => super.copyWith((message) => updates(message as ApiFindLastMessageRequest)) as ApiFindLastMessageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiFindLastMessageRequest create() => ApiFindLastMessageRequest._();
  ApiFindLastMessageRequest createEmptyInstance() => create();
  static $pb.PbList<ApiFindLastMessageRequest> createRepeated() => $pb.PbList<ApiFindLastMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiFindLastMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiFindLastMessageRequest>(create);
  static ApiFindLastMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fromGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set fromGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFromGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get forGuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set forGuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasForGuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearForGuid() => clearField(2);
}

class ApiFindLastMessagesReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiFindLastMessagesReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  ApiFindLastMessagesReply._() : super();
  factory ApiFindLastMessagesReply({
    $core.String? msg,
  }) {
    final _result = create();
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory ApiFindLastMessagesReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiFindLastMessagesReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiFindLastMessagesReply clone() => ApiFindLastMessagesReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiFindLastMessagesReply copyWith(void Function(ApiFindLastMessagesReply) updates) => super.copyWith((message) => updates(message as ApiFindLastMessagesReply)) as ApiFindLastMessagesReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiFindLastMessagesReply create() => ApiFindLastMessagesReply._();
  ApiFindLastMessagesReply createEmptyInstance() => create();
  static $pb.PbList<ApiFindLastMessagesReply> createRepeated() => $pb.PbList<ApiFindLastMessagesReply>();
  @$core.pragma('dart2js:noInline')
  static ApiFindLastMessagesReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiFindLastMessagesReply>(create);
  static ApiFindLastMessagesReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msg => $_getSZ(0);
  @$pb.TagNumber(1)
  set msg($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => clearField(1);
}

class ApiSendMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiSendMessageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forGuid', protoName: 'forGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromGuid', protoName: 'fromGuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  ApiSendMessageRequest._() : super();
  factory ApiSendMessageRequest({
    $core.String? forGuid,
    $core.String? fromGuid,
    $core.String? msg,
  }) {
    final _result = create();
    if (forGuid != null) {
      _result.forGuid = forGuid;
    }
    if (fromGuid != null) {
      _result.fromGuid = fromGuid;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory ApiSendMessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiSendMessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiSendMessageRequest clone() => ApiSendMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiSendMessageRequest copyWith(void Function(ApiSendMessageRequest) updates) => super.copyWith((message) => updates(message as ApiSendMessageRequest)) as ApiSendMessageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiSendMessageRequest create() => ApiSendMessageRequest._();
  ApiSendMessageRequest createEmptyInstance() => create();
  static $pb.PbList<ApiSendMessageRequest> createRepeated() => $pb.PbList<ApiSendMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiSendMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiSendMessageRequest>(create);
  static ApiSendMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get forGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set forGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasForGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearForGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fromGuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set fromGuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFromGuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromGuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get msg => $_getSZ(2);
  @$pb.TagNumber(3)
  set msg($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsg() => clearField(3);
}

class ApiSendMessageReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiSendMessageReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  ApiSendMessageReply._() : super();
  factory ApiSendMessageReply({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory ApiSendMessageReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiSendMessageReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiSendMessageReply clone() => ApiSendMessageReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiSendMessageReply copyWith(void Function(ApiSendMessageReply) updates) => super.copyWith((message) => updates(message as ApiSendMessageReply)) as ApiSendMessageReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiSendMessageReply create() => ApiSendMessageReply._();
  ApiSendMessageReply createEmptyInstance() => create();
  static $pb.PbList<ApiSendMessageReply> createRepeated() => $pb.PbList<ApiSendMessageReply>();
  @$core.pragma('dart2js:noInline')
  static ApiSendMessageReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiSendMessageReply>(create);
  static ApiSendMessageReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
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
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSet', protoName: 'isSet')
    ..hasRequiredFields = false
  ;

  ApiSetUserLocationReply._() : super();
  factory ApiSetUserLocationReply({
    $core.bool? isSet,
  }) {
    final _result = create();
    if (isSet != null) {
      _result.isSet = isSet;
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
  $core.bool get isSet => $_getBF(0);
  @$pb.TagNumber(1)
  set isSet($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSet() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSet() => clearField(1);
}

