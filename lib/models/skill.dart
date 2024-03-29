import 'dart:ui';

import 'package:beauty_link/models/entity_base.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:flutter/src/widgets/framework.dart';

class Skill extends EntityBase {
  String? guid;
  String? name;
  String? desc;

  Skill({this.guid, required this.name, this.desc});

  factory Skill.fromJson(Map<String, dynamic> json) {
    return new Skill(
      guid: json['guid'],
      name: json['name'],
      desc: json['desc'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {'guid': guid, 'name': name, 'desc': desc};
  }

  @override
  String getCaption() => name ?? "NoName";

  @override
  Color? getColor() {
    return Colors.blueGrey[100];
  }

  @override
  String getSubCaption() {
    return "Desc: $desc";
  }

  @override
  Widget? getBody(BuildContext context) {
    // TODO: implement getBody
    throw UnimplementedError();
  }

  @override
  Icon? getIcon() {
    // TODO: implement getIcon
    throw UnimplementedError();
  }
}
