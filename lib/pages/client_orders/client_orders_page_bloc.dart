import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/pages/client_order_info/client_order_info_page.dart';
import 'package:beauty_link/pages/find_offer/find_offer_page.dart';
import 'package:beauty_link/services/order_service.dart';
import 'package:flutter/material.dart';

class ClientOrdersPageBloc extends BaseBloc {
  AppUser client;
  List<Order> orders = [];
  Order? tapOrder;
  String status = "all";

  ClientOrdersPageBloc(BaseState initialState, this.client) : super(initialState);

  Future getOrders() async {
    await OrderService().getOrders(client.uidFB, false).then((value) {
      orders = value;
      if (status != "all") orders = orders.where((element) => element.status?.toLowerCase() == status).toList();
    });
  }
}

class LoadClientOrdersPageEvent extends BaseEvent<ClientOrdersPageBloc> {
  LoadClientOrdersPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getOrders();
  }
}

class TapOrderEvent extends BaseEvent<ClientOrdersPageBloc> {
  Order _tapOrder;

  TapOrderEvent(BuildContext context, this._tapOrder) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ClientOrderInfoPage(
                  client: bloc.client,
                  order: _tapOrder,
                ))).then((value) => LoadClientOrdersPageEvent(context)..invoke());
  }
}

class FindBtnClickEvent extends BaseEvent<ClientOrdersPageBloc> {
  FindBtnClickEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FindOfferPage(client: bloc.client),
      ),
    ).then((value) => LoadClientOrdersPageEvent(context)..invoke());
  }
}
