import 'dart:ui';

import 'package:beauty_link/models/entity_base.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:flutter/src/widgets/framework.dart';

class Order extends EntityBase {
  String? guid;
  String? name;
  String? status;
  String offerGuid;
  String clientGuid;
  String clientName;
  String masterGuid;
  String masterName;
  String skillGuid;
  String skillName;

  Order(
      {this.guid,
      required this.name,
      required this.status,
      required this.offerGuid,
      required this.masterGuid,
      required this.clientName,
      required this.clientGuid,
      required this.skillGuid,
      required this.masterName,
      required this.skillName});

  factory Order.fromJson(Map<String, dynamic> json) {
    return new Order(
      guid: json['guid'],
      name: json['name'],
      status: json['status'],
      offerGuid: json['offerGuid'],
      clientName: json['userName'],
      masterName: json['masterName'],
      skillName: json['skillName'],
      clientGuid: json['userGuid'],
      masterGuid: json['masterGuid'],
      skillGuid: json['skillGuid'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {'guid': guid, 'name': name, 'userName': clientName, 'masterName': masterName, 'skillName': skillName};
  }

  @override
  String getCaption() => name ?? "NoName";

  @override
  Color? getColor() {
    switch (status?.toLowerCase()) {
      case "submitted":
        return Colors.yellow[100];
      case "accepted":
        return Colors.pink[100];
      case "executed":
        return Colors.blue[100];
      default:
        return Colors.blueGrey[100];
    }
  }

  @override
  String getSubCaption() {
    return "Status: $status";
  }

  @override
  Widget? getBody() {
    // TODO: implement getBody
    throw UnimplementedError();
  }

  @override
  Icon? getIcon() {
    // TODO: implement getIcon
    throw UnimplementedError();
  }
}
