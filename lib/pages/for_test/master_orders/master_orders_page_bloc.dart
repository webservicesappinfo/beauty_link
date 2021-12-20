import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/services/order_service.dart';
import 'package:flutter/material.dart';

class MasterOrdersPageBloc extends BaseBlocV2 {
  AppUser master;
  List<Order> orders = [];
  Order? tapOrder;

  MasterOrdersPageBloc(BaseStateV2 initialState, this.master) : super(initialState);

  Future getOrders() async {
    await OrderService().getOrders(master.uidFB, true).then((value) => orders = value);
  }
}

class LoadMasterOrdersPageEvent extends BaseEventV2 {
  MasterOrdersPageBloc bloc;
  LoadMasterOrdersPageEvent(BuildContext context, this.bloc) : super();

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
    /*Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserInfoPage(user: _tapUser),
      ),
    ).then((value) => bloc.add(LoadMasterOrdersPageEvent(context, bloc)));*/
  }
}
