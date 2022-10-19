import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/widgets/entity_list_expanded.dart';
import 'package:flutter/material.dart';

class MasterView extends StatelessWidget {
  const MasterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(children: [
        SizedBox(height: 80),
        Center(child: Icon(Icons.person_rounded, size: 70)),
        Center(child: Text("Master"))
      ]),
      DraggableScrollableSheet(
          initialChildSize: 0.3,
          minChildSize: 0.3,
          maxChildSize: 0.7,
          builder: (BuildContext context, ScrollController scrollController) {
            return Column(children: [
              listHeader(),
              Expanded(child: Container(color: Colors.blue[100], child: body(scrollController)))
            ]);
          })
    ]);
  }

  Widget listHeader() {
    return Container(
        height: 50,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, children: [Text("Offers"), Text("Other"), Text("Other")]),
        decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))));
  }

  Widget body(ScrollController scrollController) {
    return EntityListExpanded(scrollController: scrollController, entities: [
      Offer(
          name: "Offer1",
          companyGuid: "companyGuid",
          companyName: "companyName",
          masterGuid: "masterGuid",
          masterName: "masterName",
          skillGuid: "skillGuid",
          skillName: "skillName",
          status: "status"),
      Offer(
          name: "Offer2",
          companyGuid: "companyGuid",
          companyName: "companyName",
          masterGuid: "masterGuid",
          masterName: "masterName",
          skillGuid: "skillGuid",
          skillName: "skillName",
          status: "status")
    ]);
  }
}
