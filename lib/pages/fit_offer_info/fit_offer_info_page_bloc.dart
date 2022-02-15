import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/pages/user_info/user_info_page.dart';
import 'package:beauty_link/services/order_service.dart';
import 'package:flutter/material.dart';

class FitOfferInfoPageBloc extends BaseBloc {
  Offer fitOffer;
  AppUser client;

  FitOfferInfoPageBloc(BaseState initialState, this.fitOffer, this.client) : super(initialState);

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
  }
}

class FitOfferInfoPageEvent extends BaseEvent<FitOfferInfoPageBloc> {
  FitOfferInfoPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getOfferInfo();
  }
}

class CreateOrderBtnClickEvent extends BaseEvent<FitOfferInfoPageBloc> {
  CreateOrderBtnClickEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.createOrder().then(
        (value) => Navigator.push(context, MaterialPageRoute(builder: (context) => UserInfoPage(user: bloc.client))));
  }
}
