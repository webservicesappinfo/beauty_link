import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/pages/old_ui/master_order_info/master_order_info_page.dart';
import 'package:beauty_link/services/order_service.dart';
import 'package:flutter/material.dart';

class MasterOrdersPageBloc extends BaseBloc {
  AppUser master;
  List<Order> orders = [];
  Order? tapOrder;
  String status = "all";

  MasterOrdersPageBloc(BaseState initialState, this.master) : super(initialState);

  Future getOrders() async {
    await OrderService().getOrders(master.uidFB, true).then((value) {
      orders = value;
      if (status != "all") orders = orders.where((element) => element.status?.toLowerCase() == status).toList();
    });
  }
}

class LoadMasterOrdersPageEvent extends BaseEvent<MasterOrdersPageBloc> {
  LoadMasterOrdersPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getOrders();
  }
}

class TapOrderEvent extends BaseEvent<MasterOrdersPageBloc> {
  Order _tapOrder;

  TapOrderEvent(BuildContext context, this._tapOrder) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MasterOrderInfoPage(
          master: bloc.master,
          order: _tapOrder,
        ),
      ),
    ).then((value) => LoadMasterOrdersPageEvent(context)..invoke());
  }
}
