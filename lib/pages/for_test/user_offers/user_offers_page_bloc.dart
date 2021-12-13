import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:flutter/material.dart';

class UserOffersPageBloc extends BaseBlocV2 {
  List<Offer> offers = [];
  AppUser user;

  UserOffersPageBloc(BaseStateV2 initialState, this.user) : super(initialState);

  Future getOffers() async {
    await OfferService().getOffers(user.uidFB).then((value) => offers = value);
  }
}

class LoadOffersPageEvent extends BaseEventV2 {
  UserOffersPageBloc bloc;
  LoadOffersPageEvent(BuildContext context, this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getOffers();
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

class AddUserBtnClick extends BaseEventV2 {
  UserOffersPageBloc bloc;
  BuildContext context;

  AddUserBtnClick(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    /*Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddUserPage(),
      ),
    ).then((value) => bloc.add(LoadUserPageEvent(context, bloc)));*/
  }
}
