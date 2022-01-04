import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/services/order_service.dart';
import 'package:flutter/material.dart';

class MasterOrderInfoPageBloc extends BaseBlocV2 {
  Order order;
  AppUser master;

  MasterOrderInfoPageBloc(BaseStateV2 initialState, this.order, this.master) : super(initialState);

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

class MasterOrderInfoPageEvent extends BaseEventV2 {
  MasterOrderInfoPageBloc bloc;
  MasterOrderInfoPageEvent(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getOrderInfo();
  }
}

class CancelOrderBtnClickEvent extends BaseEventV2 {
  MasterOrderInfoPageBloc bloc;
  BuildContext context;
  CancelOrderBtnClickEvent(this.context, this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.delOrder().then((value) => Navigator.pop(context));
  }
}

class AcceptOrderBtnClickEvent extends BaseEventV2 {
  MasterOrderInfoPageBloc bloc;
  BuildContext context;
  AcceptOrderBtnClickEvent(this.context, this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.acceptOrder().then((value) => Navigator.pop(context));
  }
}

class ExecuteOrderBtnClickEvent extends BaseEventV2 {
  MasterOrderInfoPageBloc bloc;
  BuildContext context;
  ExecuteOrderBtnClickEvent(this.context, this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.executeOrder().then((value) => Navigator.pop(context));
  }
}
