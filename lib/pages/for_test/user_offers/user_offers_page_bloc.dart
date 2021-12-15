import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/pages/for_test/add_user_offer/add_user_offer_page.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:flutter/material.dart';

class UserOffersPageBloc extends BaseBlocV2 {
  List<Offer> offers = [];
  AppUser user;

  UserOffersPageBloc(BaseStateV2 initialState, this.user) : super(initialState);

  Future getOffersByMaster() async {
    await OfferService().getOffersByMaster(user.uidFB).then((value) => offers = value);
  }
}

class LoadOffersPageEvent extends BaseEventV2 {
  UserOffersPageBloc bloc;
  LoadOffersPageEvent(BuildContext context, this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getOffersByMaster();
  }
}

class TapUserEvent extends BaseEventV2 {
  UserOffersPageBloc bloc;
  BuildContext context;
  Offer offer;

  TapUserEvent(this.bloc, this.context, this.offer) : super();

  @override
  Future<void> execute() async {
    /*Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserInfoPage(user: _tapUser),
      ),
    ).then((value) => bloc.add(LoadUserPageEvent(context, bloc)));*/
  }
}

class AddOfferBtnClick extends BaseEventV2 {
  UserOffersPageBloc bloc;
  BuildContext context;

  AddOfferBtnClick(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddUserOfferPage(user: bloc.user),
      ),
    ).then((value) => bloc.add(LoadOffersPageEvent(context, bloc)));
  }
}
