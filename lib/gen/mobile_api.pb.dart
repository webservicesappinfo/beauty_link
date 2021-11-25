///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

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

