import 'dart:ui';

import 'package:beauty_link/models/entity_base.dart';
import 'package:flutter/src/material/colors.dart';

class Offer extends EntityBase {
  String? guid;
  String? name;
  String? masterGuid;
  String? masterName;
  String? skillGuid;
  String? skillName;
  String? status;

  Offer(
      {this.guid,
      required this.name,
      required this.masterGuid,
      required this.masterName,
      required this.skillGuid,
      required this.skillName,
      required this.status});

  factory Offer.fromJson(Map<String, dynamic> json) {
    return new Offer(
      guid: json['guid'],
      name: json['name'],
      masterGuid: json['masterGuid'],
      masterName: json['masterName'],
      skillName: json['skillName'],
      skillGuid: json['skillGuid'],
      status: json['status'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {
      'guid': guid,
      'name': name,
      'masterGuid': masterGuid,
      'masterName': masterName,
      'skillGuid': skillGuid,
      'skillName': skillName,
    };
  }

  @override
  String getCaption() => "Name: $name";

  @override
  Color? getColor() {
    switch (status?.toLowerCase()) {
      case "actived":
        return Colors.green[100];
      case "submitted":
        return Colors.yellow[100];
      case "accepted":
        return Colors.pink[100];
      default:
        return Colors.blueGrey[100];
    }
  }

  @override
  String getSubCaption() {
    return "Status: $status";
  }
}
