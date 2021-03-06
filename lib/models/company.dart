import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Company extends EntityBase {
  String? guid;
  String? name;
  String? ownerGuid;
  String? ownerName;
  LatLng? location;
  List<AppUser> masters = [];

  Company({this.guid, required this.name, this.ownerGuid, this.ownerName});

  factory Company.fromJson(Map<String, dynamic> json) {
    return new Company(
      guid: json['guid'],
      name: json['name'],
      ownerGuid: json['ownerGuid'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {
      'guid': this.guid,
      'name': this.name,
      'userGuid': this.ownerGuid,
    };
  }

  @override
  String getCaption() => name ?? "NoName";

  @override
  Color? getColor() {
    return Colors.blueGrey[100];
  }

  @override
  String getSubCaption() {
    return "";
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
