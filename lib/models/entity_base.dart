import 'package:flutter/material.dart';

abstract class EntityBase {
  EntityBase({this.isExpanded});
  String getCaption();
  String getSubCaption();
  Color? getColor();
  Icon? getIcon();
  Widget? getBody();
  bool? isExpanded = false;
}
