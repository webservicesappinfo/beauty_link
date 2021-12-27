import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:flutter/cupertino.dart';

class MasterOfferInfoPageBloc extends BaseBlocV2 {
  Offer offer;
  AppUser master;

  MasterOfferInfoPageBloc(BaseStateV2 initialState, this.offer, this.master) : super(initialState);

  Future getOfferInfo() async {
    //await OfferService().getOffersByMaster(master.uidFB, true).then((value) => offers = value);
  }

  Future delOffer() async {
    await OfferService().delOffer(offer.guid);
  }
}

class MasterOfferInfoPageEvent extends BaseEventV2 {
  MasterOfferInfoPageBloc bloc;
  MasterOfferInfoPageEvent(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getOfferInfo();
  }
}

class DelOfferEvent extends BaseEventV2 {
  MasterOfferInfoPageBloc bloc;
  BuildContext context;
  DelOfferEvent(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    await bloc.delOffer().then((value) => Navigator.pop(context));
  }
}
