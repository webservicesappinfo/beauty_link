import 'package:beauty_link/models/entity_base.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AppUser extends EntityBase {
  final String? uidFB;
  final String? name;
  String? email;
  String? login;
  String? token;
  LatLng? location;

  AppUser({this.uidFB, this.name, this.token, this.email, this.login});

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return new AppUser(
      uidFB: json['uidfb'],
      name: json['name'],
      email: json['email'],
      login: json['login'],
    );
  }
  Map<String, dynamic> toJsonForPost() {
    return {
      'UIDFB': this.uidFB,
      'name': this.name,
      'email': this.email,
      'login': this.login,
      'token': this.token,
    };
  }

  Map<String, dynamic> toJsonForFC() {
    return {
      'Login': this.login,
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
    return "Email: $email";
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
