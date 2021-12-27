import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/services/notification_service.dart';
import 'package:beauty_link/services/order_service.dart';
import 'package:flutter/material.dart';

class FitOfferInfoPageBloc extends BaseBlocV2 {
  Offer fitOffer;
  AppUser client;

  FitOfferInfoPageBloc(BaseStateV2 initialState, this.fitOffer, this.client) : super(initialState);

  Future getOfferInfo() async {
    //await OfferService().getOffersByMaster(master.uidFB).then((value) => offers = value);
  }

  Future createOrder() async {
    await OrderService().addOrder(Order(
        name: fitOffer.name,
        status: fitOffer.status,
        masterGuid: fitOffer.masterGuid ?? "noGuid",
        offerGuid: fitOffer.guid ?? 'noGuid',
        clientName: client.name ?? 'noName',
        clientGuid: client.uidFB ?? 'noGuid',
        skillGuid: fitOffer.skillGuid ?? 'noName',
        masterName: fitOffer.masterName ?? 'noName',
        skillName: fitOffer.skillName ?? 'noName'));
    await NotificationService().sendMessage(client.uidFB, fitOffer.masterGuid, "Add order. Client: ${client.name}");
  }
}

class FitOfferInfoPageEvent extends BaseEventV2 {
  FitOfferInfoPageBloc bloc;
  FitOfferInfoPageEvent(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getOfferInfo();
  }
}

class CreateOrderBtnClickEvent extends BaseEventV2 {
  FitOfferInfoPageBloc bloc;
  BuildContext context;
  CreateOrderBtnClickEvent(this.context, this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.createOrder().then((value) => Navigator.pop(context));
  }
}
