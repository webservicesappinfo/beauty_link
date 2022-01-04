import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:flutter/material.dart';

class EntityListWidget extends StatelessWidget {
  final List<EntityBase> entities;
  final Function(BuildContext, EntityBase) onTap;
  EntityListWidget({Key? key, required this.entities, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entities.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
              key: Key(index.toString()),
              background: Container(color: Colors.green, child: Icon(Icons.check)),
              secondaryBackground: Container(color: Colors.red, child: Icon(Icons.cancel)),
              onDismissed: (direction) {},
              child: Card(
                child: ListTile(
                    leading: Icon(Icons.face),
                    trailing: Icon(Icons.arrow_forward),
                    tileColor: entities[index].getColor(),
                    title: Text(entities[index].getCaption(), style: TextStyle(fontSize: 22)),
                    subtitle: Text(entities[index].getSubCaption(), style: TextStyle(fontSize: 14)),
                    onTap: () => onTap(context, entities[index])),
              ));
        });
  }
}
