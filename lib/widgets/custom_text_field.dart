import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  Function(String) ontextChanged;
  CustomTextField({Key? key, required this.hint, required this.ontextChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            fillColor: Colors.blue,
            hintText: hint,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2.0))),
        onChanged: (value) => ontextChanged(value));
  }
}
