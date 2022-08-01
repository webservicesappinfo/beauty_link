import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/widgets/custom_dropdownfield.dart';
import 'package:beauty_link/widgets/entity_list_expanded.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

/*class EntityLitsExpandedPage extends StatefulWidget {
  EntityLitsExpandedPage({Key? key}) : super(key: key);

  @override
  State<EntityLitsExpandedPage> createState() => _EntityLitsExpandedPageState();
}

class _EntityLitsExpandedPageState extends State<EntityLitsExpandedPage> {
  /*List<NewItem> items = <NewItem>[
    NewItem(
        false, // isExpanded ?
        'Header', // header
        Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
              Text('data'),
              Text('data'),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
                //Text('data'),
                Text('data'),
                Text('data'),
              ]),
              //Radio(value: null, groupValue: null, onChanged: null),
              CustomDropDownField(
                  items: [DropDownFieldItem(caption: "caption"), DropDownFieldItem(caption: "caption1")])
            ])), // body
        Icon(Icons.image) // iconPic
        )
  ];*/

  Widget build(BuildContext context) {
    return EntityListExpanded(entities: [
      TestEntity(caption: "caption1", subCaption: "subCaption1", color: Colors.blueGrey),
      TestEntity(caption: "caption2", subCaption: "subCaption2", color: Colors.blueGrey),
      TestEntity(caption: "caption3", subCaption: "subCaption3", color: Colors.blueGrey),
    ]);
  }
}*/

class EntityLitsExpandedPage extends StatelessWidget {
  const EntityLitsExpandedPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return EntityListExpanded(entities: [
      TestEntity(caption: "caption1", subCaption: "subCaption1", color: Colors.blueGrey),
      TestEntity(caption: "caption2", subCaption: "subCaption2", color: Colors.blueGrey),
      TestEntity(caption: "caption3", subCaption: "subCaption3", color: Colors.blueGrey),
    ]);
  }
}

class NewItem {
  bool isExpanded;
  final String header;
  final Widget body;
  final Icon iconpic;
  NewItem(this.isExpanded, this.header, this.body, this.iconpic);
}

class TestEntity extends EntityBase {
  String? caption;
  String? subCaption;
  Color? color;
  TestEntity({this.caption, this.subCaption, this.color, bool? isExpanded}) : super(isExpanded: isExpanded ?? false);
  @override
  String getCaption() => caption ?? "NoCaption";

  @override
  Color? getColor() => color;

  @override
  String getSubCaption() => subCaption ?? "No SubCaption";

  @override
  Icon? getIcon() => Icon(Icons.people_rounded);

  @override
  Widget? getBody() {
    //return Text("BODY");
    return Column(children: [
      //CustomDropDownField(items: [DropDownFieldItem(caption: "caption"), DropDownFieldItem(caption: "caption1")])
      ddWidget()
    ]);
  }

  Widget ddWidget() {
    var _multiKey = GlobalKey<DropdownSearchState<String>>();
    return DropdownSearch<String>.multiSelection(
      key: _multiKey,
      validator: (List<String>? v) {
        return v == null || v.isEmpty ? "required field" : null;
      },
      dropdownBuilder: (context, selectedItems) {
        Widget item(String i) => Container(
              padding: EdgeInsets.only(left: 6, bottom: 3, top: 3, right: 0),
              margin: EdgeInsets.symmetric(horizontal: 2),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10), color: Theme.of(context).primaryColorLight),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    i,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  MaterialButton(
                    height: 20,
                    shape: const CircleBorder(),
                    focusColor: Colors.red[200],
                    hoverColor: Colors.red[200],
                    padding: EdgeInsets.all(0),
                    minWidth: 34,
                    onPressed: () {
                      _multiKey.currentState?.removeItem(i);
                    },
                    child: Icon(
                      Icons.close_outlined,
                      size: 20,
                    ),
                  )
                ],
              ),
            );
        return Wrap(
          children: selectedItems.map((e) => item(e)).toList(),
        );
      },
      popupCustomMultiSelectionWidget: (context, list) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(2),
              child: OutlinedButton(
                onPressed: () {
                  // How should I unselect all items in the list?
                  _multiKey.currentState?.closeDropDownSearch();
                },
                child: const Text('Cancel'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2),
              child: OutlinedButton(
                onPressed: () {
                  // How should I select all items in the list?
                  _multiKey.currentState?.popupSelectAllItems();
                },
                child: const Text('All'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2),
              child: OutlinedButton(
                onPressed: () {
                  // How should I unselect all items in the list?
                  _multiKey.currentState?.popupDeselectAllItems();
                },
                child: const Text('None'),
              ),
            ),
          ],
        );
      },
      dropdownSearchDecoration: InputDecoration(
        hintText: "Select a country",
        labelText: "Menu mode multiSelection*",
        contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
        border: OutlineInputBorder(),
      ),
      mode: Mode.MENU,
      showSelectedItems: true,
      items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada', 'Canada1', 'Canada2',
       'Canada3', 'Canada4', 'Canada5', 'Canada6', 'Canada7', 'Canada8', 'Canada9', 'Canada10', 'Canada11', 'Canada12'],
      showClearButton: true,
      onChanged: print,
      popupSelectionWidget: (cnt, String item, bool isSelected) {
        return isSelected ? Icon(Icons.check_circle, color: Colors.green[500]) : Container();
      },
      popupItemDisabled: (String s) => s.startsWith('I'),
      clearButtonSplashRadius: 20,
      selectedItems: ["Tunisia"],
    );
  }
}
