import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:flutter/material.dart';

class FitOfferInfoPageBloc extends BaseBlocV2 {
  Offer fitOffer;
  AppUser master;
  AppUser client;

  FitOfferInfoPageBloc(BaseStateV2 initialState, this.fitOffer, this.master, this.client) : super(initialState);

  Future getOfferInfo() async {
    //await OfferService().getOffersByMaster(master.uidFB).then((value) => offers = value);
  }

  Future applyOffer() async {
    //await OfferService().getOffersByMaster(master.uidFB).then((value) => offers = value);
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
  CreateOrderBtnClickEvent(BuildContext context, this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.applyOffer();
  }
}
