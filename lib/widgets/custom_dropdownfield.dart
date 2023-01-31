import 'package:beauty_link/widgets/custom_dropdownbutton.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class CustomDropDownField extends StatefulWidget {
  final List<DropDownFieldItem> items;
  final DropDownFieldItem? selectedItem;
  final String? label;
  final String? hint;
  final void Function(DropDownFieldItem?)? onChanged;

  const CustomDropDownField({Key? key, required this.items, this.selectedItem, this.onChanged, this.label, this.hint})
      : super(key: key);

  @override
  _CustomDropDownFieldState createState() => _CustomDropDownFieldState();
}

class _CustomDropDownFieldState extends State<CustomDropDownField> {
  final selectControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<DropDownFieldItem>(
      //mode: Mode.BOTTOM_SHEET,
      //showSelectedItems: true,
      //showSearchBox: true,
      //showClearButton: true,
      itemAsString: (DropDownFieldItem? item) => item?.getcaption() ?? 'noName',
      items: widget.items,
      selectedItem: widget.selectedItem,
      //popupItemDisabled: (String s) => s.startsWith('('),
      onChanged: widget.onChanged,
      compareFn:(DropDownFieldItem? item1, DropDownFieldItem? item2) => item1?.caption == item2?.caption,
      //dropdownSearchDecoration: InputDecoration(labelText: widget.label, hintText: widget.hint),
    );
  }
}

class CustomDropDownFieldMulti extends StatefulWidget {
  final List<DropDownFieldItem> items;
  final List<DropDownFieldItem>? selectedItems;
  final String? label;
  final String? hint;
  final void Function(List<DropDownFieldItem>)? onChanged;

  const CustomDropDownFieldMulti(
      {Key? key, required this.items, this.selectedItems, this.onChanged, this.label, this.hint})
      : super(key: key);

  @override
  _CustomDropDownFieldMultiState createState() => _CustomDropDownFieldMultiState();
}

class _CustomDropDownFieldMultiState extends State<CustomDropDownFieldMulti> {
  final selectControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<DropDownFieldItem>.multiSelection(
      //mode: Mode.BOTTOM_SHEET,
      //showSelectedItems: true,
      //showSearchBox: true,
      //showClearButton: true,
      itemAsString: (DropDownFieldItem? item) => item?.getcaption() ?? 'noName',
      items: widget.items,
      selectedItems: widget.selectedItems ?? [],
      //popupItemDisabled: (String s) => s.startsWith('('),
      compareFn:(DropDownFieldItem? item1, DropDownFieldItem? item2) => item1?.caption == item2?.caption,
      onChanged: widget.onChanged,
      //dropdownSearchDecoration: InputDecoration(labelText: widget.label, hintText: widget.hint),
    );
  }
}

class DropDownFieldItem {
  final String? caption;
  final dynamic? entity;
  DropDownFieldItem({required this.caption, this.entity});

  String? getcaption() => caption;
}
