import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/services/order_service.dart';
import 'package:flutter/material.dart';

class ClientOrderInfoPageBloc extends BaseBloc {
  Order order;
  AppUser client;

  ClientOrderInfoPageBloc(BaseState initialState, this.order, this.client) : super(initialState);

  Future getOrderInfo() async {
    //await OfferService().getOffersByMaster(master.uidFB).then((value) => offers = value);
  }

  Future delOrder() async {
    await OrderService().delOrder(order.guid);
  }
}

class ClientOrderInfoPageEvent extends BaseEvent<ClientOrderInfoPageBloc> {
  ClientOrderInfoPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getOrderInfo();
  }
}

class CancelOrderBtnClickEvent extends BaseEvent<ClientOrderInfoPageBloc> {
  CancelOrderBtnClickEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.delOrder().then((value) => Navigator.pop(context));
  }
}
