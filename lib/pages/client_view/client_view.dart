import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/widgets/custom_dropdownfield.dart';
import 'package:beauty_link/widgets/entity_list_expanded.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ClientView extends StatelessWidget {
  ClientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(children: [
        SizedBox(height: 80),
        Center(child: Icon(Icons.person_rounded, size: 70)),
        Center(child: Text("Client", style: TextStyle(fontSize: 20))),
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Information", style: TextStyle(fontSize: 30))]))
      ]),
      DraggableScrollableSheet(
          initialChildSize: 0.3,
          minChildSize: 0.3,
          maxChildSize: 0.75,
          builder: (BuildContext context, ScrollController scrollController) {
            return Column(children: [
              listHeader(context),
              Expanded(child: Container(color: Colors.blue[100], child: body(scrollController)))
            ]);
          })
    ]);
  }

  Widget listHeader(BuildContext context) {
    return Container(
        height: 60,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(onPressed: () => {onFindClick(context)}, icon: Icon(Icons.find_in_page_rounded)),
          Text("Orders"),
          IconButton(onPressed: () => {}, icon: Icon(Icons.filter_list))
        ]),
        decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))));
  }

  void onFindClick(BuildContext context) {
    var _controller = TextEditingController();
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return Dialog(
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 0,
              backgroundColor: Colors.white,
              child: Container(
                  height: 270,
                  child: Column(children: [
                    Text("find options"),
                    TextField(
                        readOnly: true,
                        controller: _controller,
                        decoration: InputDecoration(
                            hintText: 'date range',
                            suffixIcon: IconButton(
                                icon: Icon(Icons.date_range), onPressed: () => onShowCalendar(context, _controller)))),
                    CustomDropDownFieldMulti(hint: 'Select master', items: [
                      DropDownFieldItem(caption: "name1"),
                      DropDownFieldItem(caption: "name2"),
                      DropDownFieldItem(caption: "name3"),
                      DropDownFieldItem(caption: "name3"),
                      DropDownFieldItem(caption: "name3"),
                      DropDownFieldItem(caption: "name3"),
                      DropDownFieldItem(caption: "name3"),
                      DropDownFieldItem(caption: "name3")
                    ]),
                    CustomDropDownField(hint: 'Select skill', items: [
                      DropDownFieldItem(caption: "name1"),
                      DropDownFieldItem(caption: "name2"),
                      DropDownFieldItem(caption: "name3")
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: () => Navigator.pop(context), child: Text("Cancel")),
                        TextButton(onPressed: () {}, child: Text("Apply"))
                      ],
                    )
                  ])));
        });
  }

  void onShowCalendar(BuildContext context, TextEditingController controller) {
    showDialog<Widget>(
        context: context,
        barrierColor: Colors.white,
        builder: (BuildContext context) {
          return SfDateRangePicker(
            showActionButtons: true,
            selectionMode: DateRangePickerSelectionMode.range,
            monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
            onSubmit: (Object? value) {
              var date = value as PickerDateRange;
              controller.text =
                  "${date.startDate?.month}.${date.startDate?.day} - ${date.endDate?.month}.${date.endDate?.day}";
              Navigator.pop(context);
            },
            onCancel: () {
              Navigator.pop(context);
            },
          );
        });
  }

  Widget body(ScrollController scrollController) {
    return EntityListExpanded(scrollController: scrollController, entities: [
      Order(
          name: "order1",
          status: "submitted",
          offerGuid: "offerGuid",
          masterGuid: "masterGuid",
          clientName: "clientName",
          clientGuid: "clientGuid",
          skillGuid: "skillGuid",
          masterName: "masterName",
          skillName: "skillName"),
      Order(
          name: "order2",
          status: "submitted",
          offerGuid: "offerGuid",
          masterGuid: "masterGuid",
          clientName: "clientName",
          clientGuid: "clientGuid",
          skillGuid: "skillGuid",
          masterName: "masterName",
          skillName: "skillName")
    ]);
  }
}
