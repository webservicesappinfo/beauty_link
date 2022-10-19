import 'dart:developer';

import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/pages/admin_view/admin_view_bloc.dart';
import 'package:beauty_link/widgets/custom_text_field.dart';
import 'package:beauty_link/widgets/entity_list_expanded.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminView extends StatelessWidget {
  const AdminView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AdminViewBloc(InitState()),
        child: BlocBuilder<AdminViewBloc, BaseState>(builder: (context, state) {
          log('state: $state');
          log('state.event: ${state.event}');
          switch (state.runtimeType) {
            case InitState:
              LoadAdminDataEvent(context).invoke();
              return LoadingWidget();
            case BeginEventState:
              return LoadingWidget();
            case EndEventState:
              switch (state.event.runtimeType) {
                case LoadAdminDataEvent:
                  return _onLoadedAdminView(context);
                case CurrentCompanyChanged:
                  return _onLoadedAdminView(context);
                case AddCompanyBtnClick:
                  return _onLoadedAdminView(context);
                case DelCompanyBtnClick:
                  return _onLoadedAdminView(context);
                default:
                  return Text('empty state');
              }
            default:
              return Text('empty state');
          }
        }));
  }

  Widget _onLoadedAdminView(BuildContext context) {
    var bloc = BlocProvider.of<AdminViewBloc>(context);
    return Stack(children: [
      Column(children: [
        SizedBox(height: 80),
        Center(child: Icon(Icons.person_rounded, size: 70)),
        Center(child: Text("Admin")),
        Center(
            child: Container(
                height: 100,
                width: 200,
                color: Colors.amber,
                child: Column(children: [
                  IconButton(onPressed: () => showCompanyInfoDlg(context), icon: Icon(Icons.info_outline)),
                  Text(bloc.curCompany?.name ?? "noSet"),
                  Text("Owner: ${bloc.curCompany?.ownerName ?? "Owner"}")
                ]))),
        IconButton(onPressed: () => showCompanies(context), icon: Icon(Icons.expand_circle_down))
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

  void showCompanyInfoDlg(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) {
          return Dialog(
              elevation: 0,
              backgroundColor: Colors.white,
              child: Container(
                  height: 100,
                  child: Column(children: [
                    OutlinedButton(
                        onPressed: () => DelCompanyBtnClick(context).invoke(),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)))),
                        child: const Text("Remove"))
                  ])));
        });
  }

  void showCompanies(BuildContext context) {
    var bloc = BlocProvider.of<AdminViewBloc>(context);
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return Dialog(
              elevation: 0,
              backgroundColor: Colors.white,
              child: Container(
                  height: 350,
                  child: Column(children: [
                    IconButton(onPressed: () => onAddCompany(context), icon: Icon(Icons.add_circle)),
                    Expanded(
                        child: CarouselSlider(
                            options: CarouselOptions(
                                height: 50,
                                enableInfiniteScroll: false,
                                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                                aspectRatio: 2.0,
                                enlargeCenterPage: true,
                                scrollDirection: Axis.vertical),
                            items: bloc.admin?.companies
                                ?.map((item) => Container(
                                      child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: GestureDetector(
                                              onTap: () => CurrentCompanyChanged(context, item).invoke(),
                                              child: Container(
                                                  color: Colors.amber,
                                                  child: Center(child: Text(item.name ?? "Noname"))))),
                                      color: Colors.white,
                                    ))
                                .toList()))
                  ])));
        });
  }

  void onAddCompany(BuildContext context) {
    var bloc = BlocProvider.of<AdminViewBloc>(context);
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return Dialog(
              elevation: 0,
              backgroundColor: Colors.white,
              child: Container(
                  height: 150,
                  child: Column(children: [
                    Text("AddCompany"),
                    CustomTextField(
                        hint: "Company name",
                        ontextChanged: (value) {
                          bloc.newCompanyName = value;
                        }),
                    TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                side: BorderSide(color: Colors.lightGreen),
                                borderRadius: BorderRadius.circular(30.0)))),
                        onPressed: () => AddCompanyBtnClick(context).invoke(),
                        child: Text("Apply", style: TextStyle(color: Colors.lightGreen)))
                  ])));
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
                children: [IconButton(onPressed: () {}, icon: Icon(Icons.add_circle))]),
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
