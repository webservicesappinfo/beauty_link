import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  bool checked;
  String? title;
  CustomCheckBox({Key? key, required this.checked, this.title}) : super(key: key);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.title ?? ''),
      value: widget.checked,
      onChanged: (bool? value) {
        setState(() {
          widget.checked = !widget.checked;
        });
      },
      secondary: const Icon(Icons.info),
    );
  }
}
