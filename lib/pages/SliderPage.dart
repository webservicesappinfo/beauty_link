import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/pages/fit_offers/fit_offers_page.dart';
import 'package:beauty_link/widgets/custom_text_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../widgets/custom_dropdownfield.dart';
import '../widgets/entity_list_expanded.dart';
import 'users_page/entity_list_expanded_page.dart';

class IntroScreenDefault extends StatelessWidget {
  const IntroScreenDefault({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: PageIndicatorContainer(
              child: PageView(controller: controller, children: <Widget>[
                Center(child: UserView()),
                Center(child: MasterView()),
                Center(child: CompanyView())
              ]),
              align: IndicatorAlign.top,
              length: 3,
              indicatorSpace: 20.0,
              padding: const EdgeInsets.all(10),
              indicatorColor: Colors.grey,
              indicatorSelectorColor: Colors.blue,
              shape: IndicatorShape.circle(size: 12),
            )));
  }
}

class UserView extends StatelessWidget {
  UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(children: [
        SizedBox(height: 30),
        Center(child: Icon(Icons.person_rounded, size: 70)),
        Center(child: Text("Client", style: TextStyle(fontSize: 20))),
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(children: [Text("Information", style: TextStyle(fontSize: 30))])),
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(children: [Text("Information", style: TextStyle(fontSize: 30))]))
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
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FitOffersPage(
                                        master: AppUser(), skill: Skill(name: 'empty'), client: AppUser()))),
                            child: Text("Apply"))
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

class MasterView extends StatelessWidget {
  const MasterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(children: [
        SizedBox(height: 30),
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

class CompanyView extends StatelessWidget {
  const CompanyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(children: [
        SizedBox(height: 30),
        Center(child: Icon(Icons.person_rounded, size: 70)),
        Center(child: Text("Admin")),
        Center(
            child: Container(
                height: 100,
                width: 200,
                color: Colors.amber,
                child: Column(
                  children: [
                    Text("ActiveCompany"),
                    Text("Owner: Owner"),
                  ],
                ))),
        IconButton(onPressed: () => changeCompany(context), icon: Icon(Icons.expand_circle_down))
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

  void changeCompany(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return Dialog(
              elevation: 0,
              backgroundColor: Colors.white,
              child: Container(
                  height: 350,
                  child: Column(
                    children: [
                      IconButton(onPressed: () => onAddColum(context), icon: Icon(Icons.add_circle)),
                      Expanded(
                        child: CarouselSlider(
                            options: CarouselOptions(
                                height: 50,
                                enableInfiniteScroll: false,
                                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                                aspectRatio: 2.0,
                                enlargeCenterPage: true,
                                scrollDirection: Axis.vertical),
                            items: List.generate(3, (index) => Text("Company$index"))
                                .map((item) => Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                            onTap: () => Navigator.pop(context),
                                            child: Container(
                                                color: Colors.amber, child: Center(child: Text(item.toString())))),
                                      ),
                                      color: Colors.white,
                                    ))
                                .toList()),
                      ),
                    ],
                  )));
        });
  }

  void onAddColum(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return Dialog(
              elevation: 0,
              backgroundColor: Colors.white,
              child: Container(
                  height: 150,
                  child: Column(
                    children: [
                      Text("AddCompany"),
                      CustomTextField(hint: "Company name", ontextChanged: (value) {}),
                      TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                side: BorderSide(color: Colors.lightGreen), borderRadius: BorderRadius.circular(30.0))),
                          ),
                          onPressed: () {
                            var count = 0;
                            Navigator.popUntil(context, (route) => count++ == 2);
                          },
                          child: Text("Apply", style: TextStyle(color: Colors.lightGreen)))
                    ],
                  )));
        });
  }

  Widget listHeader() {
    return Column(
      children: [
        CustomRadioButton(
          elevation: 0,
          enableShape: true,
          //absoluteZeroSpacing: true,
          unSelectedColor: Colors.white,
          buttonLables: [
            'Orders',
            'Offers',
            'Masters',
          ],
          buttonValues: [
            "ORDERS",
            "OFFERS",
            "MASTERS",
          ],
          buttonTextStyle: ButtonTextStyle(
              selectedColor: Colors.white, unSelectedColor: Colors.black, textStyle: TextStyle(fontSize: 16)),
          radioButtonValue: (value) {
            print(value);
          },
          selectedColor: Colors.green,
        ),
        Container(
            height: 30,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [IconButton(onPressed: (){}, icon: Icon(Icons.add_circle))]),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)))),
      ],
    );
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
