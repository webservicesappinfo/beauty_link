import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/pages/for_test/fit_offer_info/fit_offer_info_page.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:flutter/material.dart';

class FitOffersPageBloc extends BaseBlocV2 {
  List<Offer> offers = [];
  AppUser master;
  Skill skill;
  AppUser client;

  FitOffersPageBloc(BaseStateV2 initialState, this.master, this.skill, this.client) : super(initialState);

  Future getOffersByMaster() async {
    await OfferService().getOffers(master.uidFB, skill.guid, client.uidFB, false).then((value) => offers = value);
  }
}

class LoadOffersPageEvent extends BaseEventV2<FitOffersPageBloc> {
  LoadOffersPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getOffersByMaster();
  }
}

class TapOfferEvent extends BaseEventV2<FitOffersPageBloc> {
  Offer offer;

  TapOfferEvent(BuildContext context, this.offer) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FitOfferInfoPage(
          offer: offer,
          client: bloc.client,
        ),
      ),
    ).then((value) => LoadOffersPageEvent(context)..invoke());
  }
}
