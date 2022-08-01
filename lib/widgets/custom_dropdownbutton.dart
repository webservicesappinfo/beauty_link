import 'package:beauty_link/models/entity_base.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  final String caption;
  final List<EntityBase> entities;
  EntityBase? selectedItem;
  final Function(EntityBase?) onChanged;

  CustomDropDownButton(
      {Key? key, this.selectedItem, required this.caption, required this.entities, required this.onChanged})
      : super(key: key);

  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  List<DropdownMenuItem<EntityBase>> _dropDownMenuItems = [];
  EntityBase? _currentEntity;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    super.initState();
  }

  List<DropdownMenuItem<EntityBase>> getDropDownMenuItems() {
    List<DropdownMenuItem<EntityBase>> items = [];
    for (EntityBase ent in widget.entities) {
      items.add(new DropdownMenuItem(value: ent, child: new Text(ent.getCaption())));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputDecorator(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(4.0))),
                    contentPadding: EdgeInsets.all(5)),
                child: DropdownButton(
                    value: _currentEntity,
                    items: _dropDownMenuItems,
                    hint: Text(widget.caption),
                    onChanged: changedDropDownItem,
                    isExpanded: true,
                    isDense: true))
          ],
        )),
      ),
    );
  }

  void changedDropDownItem(EntityBase? selectedEntity) {
    setState(() {
      _currentEntity = selectedEntity;
    });
    widget.onChanged(selectedEntity);
  }
}

class DropDownItem extends EntityBase {
  final String caption;
  String? subCaption;
  Color? color;
  DropDownItem({required this.caption, this.subCaption, this.color});

  @override
  String getCaption() => caption;

  @override
  Color? getColor() => color;

  @override
  String getSubCaption() => subCaption ?? '';

  @override
  Widget? getBody() {
  }

  @override
  Icon? getIcon() {
  }
}
