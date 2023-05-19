import 'dart:developer';

import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/pages/admin_view/admin_view_bloc.dart';
import 'package:beauty_link/pages/main_page/main_page_bloc.dart';
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
        child: BlocBuilder<AdminViewBloc, BaseState>(
            buildWhen: (prevState, state) => state.kind() == "adminView",
            builder: (context, state) {
          log("adminView main rebuild");
          if (state.its<InitState, BaseEvent>()) {
            LoadAdminDataEvent(context).invoke();
            return LoadingWidget();
          } else if (state.its<BeginEventState, BaseEvent>())
            return LoadingWidget();
          else if (state.its<EndEventState, LoadAdminDataEvent>() ||
              state.its<EndEventState, CurrentCompanyChanged>() ||
              state.its<EndEventState, AddCompany>() ||
              state.its<EndEventState, DelCompany>() ||
              state.its<EndEventState, ScrollPageEvent>()) {
            log("state: ${state.runtimeType} event: ${state.event.runtimeType}");
            return _onLoadedAdminView(context);
          } else {
            log("empty");
            return Text('empty state');
          }
        }));
  }

  Widget _onLoadedAdminView(BuildContext context) {
    var bloc = BlocProvider.of<AdminViewBloc>(context);
    return Stack(children: [
      Column(children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text("Admin")),
        ),
        Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: BlocBuilder<AdminViewBloc, BaseState>(
                //bloc: bloc,
                buildWhen: (prevState, state) => state.its<EndEventState, ScrollPageEvent>(),
                builder: (context, state) {
                  log("scrollingPage : ${bloc.scrollingPage}, state: $state, event: ${state.event}");
                  return Visibility(
                    visible: !bloc.scrollingPage,
                    child: Container(
                        color: Colors.amber,
                        height: 100,
                        width: 30,
                        child: Center(child: RotatedBox(quarterTurns: 1, child: Text("Master")))),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  height: 100,
                  width: 200,
                  child: Column(children: [
                    IconButton(onPressed: () => showCompanyInfoDlg(context), icon: Icon(Icons.info_outline)),
                    Text(bloc.curCompany?.name ?? "noSet"),
                    Text("Owner: ${bloc.curCompany?.ownerName ?? "Owner"}")
                  ]),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.pinkAccent, spreadRadius: 3)])),
            )
          ],
        ),
        IconButton(onPressed: () => showCompanies(context), icon: Icon(Icons.expand_circle_down))
      ]),
      DraggableScrollableSheet(
          initialChildSize: 0.3,
          minChildSize: 0.3,
          maxChildSize: 0.7,
          builder: (BuildContext context, ScrollController scrollController) {
            return Column(children: [
              listHeader(context),
              Expanded(child: Container(color: Colors.pink[50], child: body(scrollController, context)))
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
                    Center(
                      child: OutlinedButton(
                          onPressed: () => DelCompany(context).invoke(),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)))),
                          child: Text("Remove")),
                    )
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
                                height: 30,
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
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(color: Colors.pinkAccent, spreadRadius: 3)
                                                      ]),
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
                    Row(children: [
                      TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.lightGreen),
                                  borderRadius: BorderRadius.circular(30.0)))),
                          onPressed: () => AddCompany(context).invoke(),
                          child: Text("Apply", style: TextStyle(color: Colors.lightGreen))),
                      TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.red), borderRadius: BorderRadius.circular(30.0)))),
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel", style: TextStyle(color: Colors.red)))
                    ])
                  ])));
        });
  }

  void onAddMaster(BuildContext context) {
    var bloc = BlocProvider.of<AdminViewBloc>(context);
    var mainBloc = BlocProvider.of<MainPageBloc>(context);
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
                    Text("AddMaster"),
                    DropdownButton<AppUser>(
                        items: _getCanBeMastersList(mainBloc.users, context),
                        onChanged: (value) => SelectedCanBeMasterChanged(context, value).invoke(),
                        hint: BlocBuilder<AdminViewBloc, BaseState>(
                            bloc: bloc,
                            buildWhen: (prevState, state) => state.kind() == "addMasterDlg",
                            builder: (context, state) => Text(state.its<EndEventState, SelectedCanBeMasterChanged>()
                                ? '${bloc.selectedCanBeMaster?.name ?? 'select master'}'
                                : 'select master'))),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.lightGreen),
                                  borderRadius: BorderRadius.circular(30.0)))),
                          onPressed: () => AddMaster(context).invoke(),
                          child: Text("Apply", style: TextStyle(color: Colors.lightGreen))),
                      TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.red), borderRadius: BorderRadius.circular(30.0)))),
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel", style: TextStyle(color: Colors.red)))
                    ])
                  ])));
        });
  }

  void onAddOffer(BuildContext context) {
    var bloc = BlocProvider.of<AdminViewBloc>(context);
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return Dialog(
              elevation: 0,
              backgroundColor: Colors.white,
              child: Container(
                  height: 200,
                  child: Column(children: [
                    Text("AddOffer"),
                    CustomTextField(
                        hint: "Offer name",
                        ontextChanged: (value) {
                          bloc.newOfferName = value;
                        }),
                    DropdownButton<AppUser>(
                        items: _getMastersList(context),
                        onChanged: (value) => SelectedMasterForOfferChanged(context, value).invoke(),
                        hint: BlocBuilder<AdminViewBloc, BaseState>(
                            bloc: bloc,
                            buildWhen: (prevState, state) => state.kind() == "addOfferDlg",
                            builder: (context, state) => Text(state.its<EndEventState, SelectedMasterForOfferChanged>()
                                ? '${bloc.selectedMasterForOffer?.name ?? 'select master'}'
                                : 'select master'))),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.lightGreen),
                                  borderRadius: BorderRadius.circular(30.0)))),
                          onPressed: () => AddOffer(context).invoke(),
                          child: Text("Apply", style: TextStyle(color: Colors.lightGreen))),
                      TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.red), borderRadius: BorderRadius.circular(30.0)))),
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel", style: TextStyle(color: Colors.red)))
                    ])
                  ])));
        });
  }

  void onAddOrder(BuildContext context) {
    var bloc = BlocProvider.of<AdminViewBloc>(context);
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return Dialog(
              elevation: 0,
              backgroundColor: Colors.white,
              child: Container(
                  height: 200,
                  child: Column(children: [
                    Text("AddOrder"),
                    CustomTextField(
                        hint: "Order name",
                        ontextChanged: (value) {
                          bloc.newOrderName = value;
                        }),
                    DropdownButton<Offer>(
                        items: _getOrdersList(context),
                        onChanged: (value) => SelectedOfferForOrderChanged(context, value).invoke(),
                        hint: BlocBuilder<AdminViewBloc, BaseState>(
                            bloc: bloc,
                            buildWhen: (prevState, state) => state.kind() == "addOrderDlg",
                            builder: (context, state) => Text(state.its<EndEventState, SelectedOfferForOrderChanged>()
                                ? '${bloc.selectedOfferForOrder?.name ?? 'select offer'}'
                                : 'select offer'))),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.lightGreen),
                                  borderRadius: BorderRadius.circular(30.0)))),
                          onPressed: () => AddOrder(context).invoke(),
                          child: Text("Apply", style: TextStyle(color: Colors.lightGreen))),
                      TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.red), borderRadius: BorderRadius.circular(30.0)))),
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel", style: TextStyle(color: Colors.red)))
                    ])
                  ])));
        });
  }

  List<DropdownMenuItem<AppUser>> _getCanBeMastersList(List<AppUser> users, BuildContext context) {
    List<DropdownMenuItem<AppUser>> list = [];
    var mainBloc = BlocProvider.of<MainPageBloc>(context);
    for (var user in users) {
      if (user.uidFB == mainBloc.curUser?.uidFB) continue;
      list.add(DropdownMenuItem<AppUser>(value: user, child: Row(children: [Text("${user.name}")])));
    }
    return list;
  }

  List<DropdownMenuItem<AppUser>> _getMastersList(BuildContext context) {
    List<DropdownMenuItem<AppUser>> list = [];
    var bloc = BlocProvider.of<AdminViewBloc>(context);
    var masters = bloc.curCompany?.masters;
    if (masters != null)
      for (var master in masters) {
        list.add(DropdownMenuItem<AppUser>(value: master, child: Row(children: [Text("${master.name}")])));
      }
    return list;
  }

  List<DropdownMenuItem<Offer>> _getOrdersList(BuildContext context) {
    List<DropdownMenuItem<Offer>> list = [];
    var bloc = BlocProvider.of<AdminViewBloc>(context);
    var masters = bloc.curCompany?.masters;
    if (masters != null)
      for (var master in masters) {
        var offers = master.offers;
        if (offers != null)
          for (var offer in offers)
            list.add(
                DropdownMenuItem<Offer>(value: offer, child: Row(children: [Text("${offer.name} - ${master.name}")])));
      }
    return list;
  }

  Widget listHeader(BuildContext context) {
    var bloc = BlocProvider.of<AdminViewBloc>(context);
    return Column(children: [
      Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.pink[50],
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomRadioButton(
              enableShape: true,
              elevation: 0,
              width: 80,
              //absoluteZeroSpacing: true,
              unSelectedColor: Colors.white,
              selectedColor: Color.fromARGB(255, 161, 240, 168),
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
              defaultSelected: "MASTERS",
              buttonTextStyle: ButtonTextStyle(
                  selectedColor: Colors.black, unSelectedColor: Colors.black, textStyle: TextStyle(fontSize: 12)),
              radioButtonValue: (value) => ListTypeChanged(context, "$value").invoke(),
            ),
            IconButton(
                iconSize: 40,
                padding: EdgeInsets.only(left: 40),
                onPressed: () {
                  log("currentListName: ${bloc.listName}");
                  if (bloc.listName == "MASTERS")
                    onAddMaster(context);
                  else if (bloc.listName == "OFFERS")
                    onAddOffer(context);
                  else if (bloc.listName == "ORDERS") onAddOrder(context);
                },
                icon: Icon(Icons.add_circle_outline_sharp))
          ]))
    ]);
  }

  Widget body(ScrollController scrollController, BuildContext context) {
    var bloc = BlocProvider.of<AdminViewBloc>(context);
    return BlocBuilder<AdminViewBloc, BaseState>(
        buildWhen: (prevState, state) => state.its<EndEventState, ListTypeChanged>(),
        builder: (context, state) {
          switch (bloc.listName) {
            case "MASTERS":
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: EntityListExpanded(
                  scrollController: scrollController,
                  entities: (bloc.curCompany?.masters ?? []),
                  body: masterListBody,
                  entityCallBack: (entity) => DelMaster(context, entity as AppUser).invoke(),
                ),
              );
            case "OFFERS":
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: EntityListExpanded(
                  scrollController: scrollController,
                  entities: (bloc.curCompany?.getCompanyOffers() ?? []),
                  body: offerListBody,
                  entityCallBack: (entity) => DelOffer(context, entity as Offer).invoke(),
                ),
              );
            case "ORDERS":
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: EntityListExpanded(
                  scrollController: scrollController,
                  entities: (bloc.curCompany?.getCompanyOrders() ?? []),
                  body: offerListBody,
                  entityCallBack: (entity) => DelOrder(context, entity as Order).invoke(),
                ),
              );
          }
          return Text("empty");
        });
  }

  Widget masterListBody(BuildContext context, EntityBase entity, Function? callBack) {
    var master = entity as AppUser;
    return Column(children: [
      Text("Name: ${master.name}"),
      TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: BorderSide(color: Colors.red), borderRadius: BorderRadius.circular(30.0)))),
          onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(title: Text("Warning!"), content: Text("Del master?"), actions: [
                  TextButton(
                    child: Text("Cancel"),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    child: Text("Continue"),
                    onPressed: () {
                      if (callBack != null) callBack(master);
                    },
                  )
                ]);
              }),
          child: Text("Del", style: TextStyle(color: Colors.red)))
    ]);
  }

  Widget offerListBody(BuildContext context, EntityBase entity, Function? callBack) {
    var offer = entity as Offer;
    return Column(children: [
      Text("Offer name: ${offer.name}"),
      TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: BorderSide(color: Colors.red), borderRadius: BorderRadius.circular(30.0)))),
          onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(title: Text("Warning!"), content: Text("Del offer?"), actions: [
                  TextButton(
                    child: Text("Cancel"),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    child: Text("Continue"),
                    onPressed: () {
                      if (callBack != null) callBack(offer);
                    },
                  )
                ]);
              }),
          child: Text("Del", style: TextStyle(color: Colors.red)))
    ]);
  }
}
