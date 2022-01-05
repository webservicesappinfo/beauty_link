import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final List<CustomGridViewItem> items;

  const CustomGridView({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: items
          .map(((item) => Card(
              child: InkResponse(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Center(child: Text(item.text)),
                    color: Colors.grey[300],
                  ),
                  onTap: () => item.bloc.add(item.event)))))
          .toList(),
    );
  }
}

class CustomGridViewItem {
  final String text;
  final BaseBlocV2 bloc;
  final BaseEventV2 event;

  CustomGridViewItem({required this.text, required this.bloc, required this.event});
}
