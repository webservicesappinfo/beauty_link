///
//  Generated code. Do not modify.
//  source: notification.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FindLastGetMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FindLastGetMessageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'notification'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromGuid', protoName: 'fromGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forGuid', protoName: 'forGuid')
    ..hasRequiredFields = false
  ;

  FindLastGetMessageRequest._() : super();
  factory FindLastGetMessageRequest({
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
  factory FindLastGetMessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindLastGetMessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindLastGetMessageRequest clone() => FindLastGetMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindLastGetMessageRequest copyWith(void Function(FindLastGetMessageRequest) updates) => super.copyWith((message) => updates(message as FindLastGetMessageRequest)) as FindLastGetMessageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FindLastGetMessageRequest create() => FindLastGetMessageRequest._();
  FindLastGetMessageRequest createEmptyInstance() => create();
  static $pb.PbList<FindLastGetMessageRequest> createRepeated() => $pb.PbList<FindLastGetMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static FindLastGetMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindLastGetMessageRequest>(create);
  static FindLastGetMessageRequest? _defaultInstance;

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

class FindLastGetMessageReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FindLastGetMessageReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'notification'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  FindLastGetMessageReply._() : super();
  factory FindLastGetMessageReply({
    $core.String? msg,
  }) {
    final _result = create();
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory FindLastGetMessageReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindLastGetMessageReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindLastGetMessageReply clone() => FindLastGetMessageReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindLastGetMessageReply copyWith(void Function(FindLastGetMessageReply) updates) => super.copyWith((message) => updates(message as FindLastGetMessageReply)) as FindLastGetMessageReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FindLastGetMessageReply create() => FindLastGetMessageReply._();
  FindLastGetMessageReply createEmptyInstance() => create();
  static $pb.PbList<FindLastGetMessageReply> createRepeated() => $pb.PbList<FindLastGetMessageReply>();
  @$core.pragma('dart2js:noInline')
  static FindLastGetMessageReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindLastGetMessageReply>(create);
  static FindLastGetMessageReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msg => $_getSZ(0);
  @$pb.TagNumber(1)
  set msg($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => clearField(1);
}

class SendNotificationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendNotificationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'notification'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forGuid', protoName: 'forGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromGuid', protoName: 'fromGuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  SendNotificationRequest._() : super();
  factory SendNotificationRequest({
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
  factory SendNotificationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendNotificationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendNotificationRequest clone() => SendNotificationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendNotificationRequest copyWith(void Function(SendNotificationRequest) updates) => super.copyWith((message) => updates(message as SendNotificationRequest)) as SendNotificationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendNotificationRequest create() => SendNotificationRequest._();
  SendNotificationRequest createEmptyInstance() => create();
  static $pb.PbList<SendNotificationRequest> createRepeated() => $pb.PbList<SendNotificationRequest>();
  @$core.pragma('dart2js:noInline')
  static SendNotificationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendNotificationRequest>(create);
  static SendNotificationRequest? _defaultInstance;

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

class SendNotificationReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendNotificationReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'notification'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  SendNotificationReply._() : super();
  factory SendNotificationReply({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory SendNotificationReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendNotificationReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendNotificationReply clone() => SendNotificationReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendNotificationReply copyWith(void Function(SendNotificationReply) updates) => super.copyWith((message) => updates(message as SendNotificationReply)) as SendNotificationReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendNotificationReply create() => SendNotificationReply._();
  SendNotificationReply createEmptyInstance() => create();
  static $pb.PbList<SendNotificationReply> createRepeated() => $pb.PbList<SendNotificationReply>();
  @$core.pragma('dart2js:noInline')
  static SendNotificationReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendNotificationReply>(create);
  static SendNotificationReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

