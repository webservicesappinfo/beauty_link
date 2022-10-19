import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/services/order_service.dart';
import 'package:flutter/material.dart';

class MasterOrderInfoPageBloc extends BaseBloc {
  Order order;
  AppUser master;

  MasterOrderInfoPageBloc(BaseState initialState, this.order, this.master) : super(initialState);

  Future getOrderInfo() async {
    //await OfferService().getOffersByMaster(master.uidFB).then((value) => offers = value);
  }
  Future delOrder() async {
    await OrderService().delOrder(order.guid);
  }

  Future acceptOrder() async {
    await OrderService().acceptOrder(order.guid);
  }

  Future executeOrder() async {
    await OrderService().executeOrder(order.guid);
  }
}

class MasterOrderInfoPageEvent extends BaseEvent<MasterOrderInfoPageBloc> {
  MasterOrderInfoPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getOrderInfo();
  }
}

class CancelOrderBtnClickEvent extends BaseEvent<MasterOrderInfoPageBloc> {
  CancelOrderBtnClickEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.delOrder().then((value) => Navigator.pop(context));
  }
}

class AcceptOrderBtnClickEvent extends BaseEvent<MasterOrderInfoPageBloc> {
  AcceptOrderBtnClickEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.acceptOrder().then((value) => Navigator.pop(context));
  }
}

class ExecuteOrderBtnClickEvent extends BaseEvent<MasterOrderInfoPageBloc> {
  ExecuteOrderBtnClickEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.executeOrder().then((value) => Navigator.pop(context));
  }
}
