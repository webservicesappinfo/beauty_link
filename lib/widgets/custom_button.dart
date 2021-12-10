import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final BaseBlocV2 bloc;
  final BaseEventV2 clickEvent;
  CustomButton(
      {Key? key,
      required this.text,
      required this.clickEvent,
      required this.bloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => bloc.add(clickEvent), child: Text(text));
  }
}
