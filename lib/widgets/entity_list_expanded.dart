import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:flutter/material.dart';

class EntityListExpanded extends StatefulWidget {
  final List<EntityBase> entities;
  ScrollController? scrollController;
  Widget Function(BuildContext, EntityBase, Function?)? body;
  void Function(EntityBase entity)? entityCallBack;
  EntityListExpanded({Key? key, required this.entities, this.scrollController, this.body, this.entityCallBack})
      : super(key: key);

  @override
  State<EntityListExpanded> createState() => _EntityListExpandedState();
}

class _EntityListExpandedState extends State<EntityListExpanded> {
  @override
  Widget build(BuildContext context) => getExpandedListView(context);

  Widget getExpandedListView(BuildContext context) {
    return ListView(controller: widget.scrollController, children: [
      Padding(
          padding: EdgeInsets.all(2.0),
          child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  widget.entities[index].isExpanded = !(widget.entities[index].isExpanded ?? false);
                });
              },
              children: widget.entities.map((EntityBase item) {
                return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                          leading: item.getIcon() ?? Icon(Icons.no_accounts),
                          title: Text(item.getCaption(),
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400)));
                    },
                    isExpanded: (item.isExpanded ?? false),
                    body: widget.body != null
                        ? widget.body!(context, item, widget.entityCallBack)
                        : item.getBody(context) ?? Text("body empty"));
              }).toList()))
    ]);
  }
}
