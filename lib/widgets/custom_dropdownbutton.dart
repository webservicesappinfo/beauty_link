import 'package:beauty_link/models/entity_base.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  final String caption;
  final List<EntityBase> entities;
  final Function(EntityBase?) onChanged;
  CustomDropDownButton({Key? key, required this.caption, required this.entities, required this.onChanged})
      : super(key: key) {}

  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  List<DropdownMenuItem<EntityBase>> _dropDownMenuItems = [];
  EntityBase? _currentEntity;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentEntity = _dropDownMenuItems[0].value;
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
    return new Container(
      color: Colors.white,
      child: new Center(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(widget.caption),
          new Container(
            padding: new EdgeInsets.all(3.0),
          ),
          new DropdownButton(
            value: _currentEntity,
            items: _dropDownMenuItems,
            onChanged: changedDropDownItem,
          )
        ],
      )),
    );
  }

  void changedDropDownItem(EntityBase? selectedEntity) {
    setState(() {
      _currentEntity = selectedEntity;
    });
    widget.onChanged(selectedEntity);
  }
}

/*class CustomDropDownButton extends StatelessWidget {
  List<DropdownMenuItem<EntityBase>> _items = [];
  CustomDropDownButton({Key? key, List<EntityBase>? entities}) : super(key: key) {
    if (entities != null) {
      for (EntityBase ent in entities) {
        _items.add(DropdownMenuItem(value: ent, child: Text(ent.getCaption())));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(value: _currentCity, items: _items, onChanged: changedDropDownItem);
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentCity = selectedCity;
    });
  }
}*/
