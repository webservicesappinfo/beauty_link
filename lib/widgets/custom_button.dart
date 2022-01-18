import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() clickEvent;

  CustomButton({Key? key, required this.text, required this.clickEvent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () => clickEvent(), child: Text(text));
  }
}
