import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/pages/fit_offer_info/fit_offer_info_page.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:flutter/material.dart';

class FitOffersPageBloc extends BaseBloc {
  List<Offer> offers = [];
  AppUser master;
  Skill skill;
  AppUser client;

  FitOffersPageBloc(BaseState initialState, this.master, this.skill, this.client) : super(initialState);

  Future getOffersByMaster() async {
    await OfferService().getOffers(master.uidFB, skill.guid, client.uidFB, false).then((value) => offers = value);
  }
}

class LoadOffersPageEvent extends BaseEvent<FitOffersPageBloc> {
  LoadOffersPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getOffersByMaster();
  }
}

class TapOfferEvent extends BaseEvent<FitOffersPageBloc> {
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
