import 'dart:ui';

import 'package:beauty_link/models/entity_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:flutter/src/widgets/framework.dart';

class Order extends EntityBase {
  String? guid;
  String? name;
  String? status;
  String? offerGuid;
  String? clientGuid;
  String? clientName;
  String? masterGuid;
  String? masterName;
  String? skillGuid;
  String? skillName;

  Order(
      {this.guid,
      required this.name,
      this.status,
      this.offerGuid,
      this.masterGuid,
      this.clientName,
      this.clientGuid,
      this.skillGuid,
      this.masterName,
      this.skillName});

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
  Widget? getBody(BuildContext context) {
    return Column(children: [
      Text("masterName: $masterName"),
      Text("skillName: $skillName"),
      Text("status: $status"),
      PopupMenuButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2, color: Colors.black, style: BorderStyle.solid)),
              child: Icon(Icons.call_to_action)),
          itemBuilder: (context) {
            return List.generate(3, (index) {
              return PopupMenuItem(child: Text('button no $index'));
            });
          },
          offset: Offset(1, 1))
      /*TextButton(
          onPressed: () {
            showDialog<Widget>(
                context: context,
                barrierColor: Colors.transparent,
                builder: (BuildContext context) {
                  return Dialog(
                    alignment: Alignment(0, 1),
                      child:
                          Container(height: 50, child: Column(children: [Text("Do1"), Text("Do2"), Text("remove")])));
                });
          },
          child: Text("Actions"))*/
    ]);
  }

  @override
  Icon? getIcon() {
    return null;
  }
}
