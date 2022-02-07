import 'package:flutter/material.dart';

class CustomPopup extends StatelessWidget {
  List<String> items = [];
  final Function(String choice) clickEvent;
  CustomPopup(this.items, this.clickEvent);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
        onSelected: (String choice) => clickEvent(choice),
        itemBuilder: (BuildContext context) {
          return items.map((String choice) {
            return PopupMenuItem<String>(value: choice, child: Text(choice));
          }).toList();
        });
  }
}
