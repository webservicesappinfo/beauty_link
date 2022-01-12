import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomDropDownField extends StatefulWidget {
  final List<dynamic> items;
  final String? hint;
  final Function(dynamic) onChanged;
  const CustomDropDownField({Key? key, this.hint, required this.items, required this.onChanged}) : super(key: key);

  @override
  _CustomDropDownFieldState createState() => _CustomDropDownFieldState();
}

class _CustomDropDownFieldState extends State<CustomDropDownField> {
  final selectControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>.multiSelection(
      mode: Mode.BOTTOM_SHEET,
      showSelectedItems: true,
      showSearchBox: true,
      showClearButton: true,
      items: [
        "Brazil",
        "Italia (Disabled)",
        "Tunisia",
        'Canada',
        "Tunisia",
        'Canada',
        "Tunisia",
        'Canada',
        "Tunisia",
        'Canada'
      ],
      dropdownSearchDecoration: InputDecoration(labelText: "Menu mode", hintText: "country in menu mode"),
      popupItemDisabled: (String s) => s.startsWith('('),
      onChanged: print, /*selectedItem: "Brazil"*/
    );
  }

  final _formKey = GlobalKey<FormState>();
  final _openDropDownProgKey = GlobalKey<DropdownSearchState<String>>();
  final _multiKey = GlobalKey<DropdownSearchState<String>>();
  final _userEditTextController = TextEditingController(text: 'Mrs');
}
