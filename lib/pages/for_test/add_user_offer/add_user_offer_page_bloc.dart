import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:flutter/material.dart';

class AddUserOfferPageBloc extends BaseBlocV2 {
  String? offerName;
  AppUser user;
  AddUserOfferPageBloc(BaseStateV2 initialState, this.user) : super(initialState);

  Future addOffer() async {
    if (offerName?.isEmpty ?? true) throw Exception("userName is null");
    await OfferService().addOffer(Offer(name: offerName, masterName: user.name, skillName: 'testSkill'));
  }

  void onChangedOfferName(String name) => offerName = name;
}

class AddOfferBtnClick extends BaseEventV2 {
  AddUserOfferPageBloc bloc;
  BuildContext context;
  AddOfferBtnClick(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    await bloc.addOffer().then((value) => Navigator.pop(context));
  }
}
