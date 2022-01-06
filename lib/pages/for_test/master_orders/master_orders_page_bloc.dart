import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/pages/for_test/master_order_info/master_order_info_page.dart';
import 'package:beauty_link/pages/for_test/master_orders/master_orders_page.dart';
import 'package:beauty_link/services/order_service.dart';
import 'package:beauty_link/widgets/custom_dropdownbutton.dart';
import 'package:flutter/material.dart';

class MasterOrdersPageBloc extends BaseBlocV2 {
  AppUser master;
  List<Order> orders = [];
  Order? tapOrder;
  String status = "all";

  MasterOrdersPageBloc(BaseStateV2 initialState, this.master) : super(initialState);

  Future getOrders() async {
    await OrderService().getOrders(master.uidFB, true).then((value) {
      orders = value;
      if (status != "all") orders = orders.where((element) => element.status?.toLowerCase() == status).toList();
    });
  }

  void onFilterChanged(EntityBase? item) {
    status = (item as DropDownItem).getCaption();
    add(LoadMasterOrdersPageEvent(this));
  }
}

class LoadMasterOrdersPageEvent extends BaseEventV2 {
  MasterOrdersPageBloc bloc;
  LoadMasterOrdersPageEvent(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getOrders();
  }
}

class TapOrderEvent extends BaseEventV2 {
  MasterOrdersPageBloc bloc;
  BuildContext context;
  Order _tapOrder;

  TapOrderEvent(this.bloc, this.context, this._tapOrder) : super();

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
    ).then((value) => bloc.add(LoadMasterOrdersPageEvent(bloc)));
  }
}
