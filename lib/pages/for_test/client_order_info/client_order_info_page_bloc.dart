import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/services/order_service.dart';
import 'package:flutter/material.dart';

class ClientOrderInfoPageBloc extends BaseBlocV2 {
  Order order;
  AppUser client;

  ClientOrderInfoPageBloc(BaseStateV2 initialState, this.order, this.client) : super(initialState);

  Future getOrderInfo() async {
    //await OfferService().getOffersByMaster(master.uidFB).then((value) => offers = value);
  }

  Future delOrder() async {
    await OrderService().delOrder(order.guid);
  }
}

class ClientOrderInfoPageEvent extends BaseEventV2 {
  ClientOrderInfoPageBloc bloc;
  ClientOrderInfoPageEvent(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getOrderInfo();
  }
}

class CancelOrderBtnClickEvent extends BaseEventV2 {
  ClientOrderInfoPageBloc bloc;
  BuildContext context;
  CancelOrderBtnClickEvent(this.context, this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.delOrder().then((value) => Navigator.pop(context));
  }
}
