import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/pages/for_test/client_order_info/client_order_info_page.dart';
import 'package:beauty_link/services/order_service.dart';
import 'package:flutter/material.dart';

class ClientOrdersPageBloc extends BaseBlocV2 {
  AppUser client;
  List<Order> orders = [];
  Order? tapOrder;

  ClientOrdersPageBloc(BaseStateV2 initialState, this.client) : super(initialState);

  Future getOrders() async {
    await OrderService().getOrders(client.uidFB, false).then((value) => orders = value);
  }
}

class LoadMasterOrdersPageEvent extends BaseEventV2 {
  ClientOrdersPageBloc bloc;
  LoadMasterOrdersPageEvent(BuildContext context, this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getOrders();
  }
}

class TapOrderEvent extends BaseEventV2 {
  ClientOrdersPageBloc bloc;
  BuildContext context;
  Order _tapOrder;

  TapOrderEvent(this.bloc, this.context, this._tapOrder) : super();

  @override
  Future<void> execute() async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ClientOrderInfoPage(
                  client: bloc.client,
                  order: _tapOrder,
                ))).then((value) => bloc.add(LoadMasterOrdersPageEvent(context, bloc)));
  }
}
