import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/pages/for_test/add_user_offer/add_user_offer_page.dart';
import 'package:beauty_link/pages/for_test/master_order_info/master_order_info_page.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:flutter/material.dart';

class MasterOffersPageBloc extends BaseBlocV2 {
  List<Offer> offers = [];
  AppUser user;

  MasterOffersPageBloc(BaseStateV2 initialState, this.user) : super(initialState);

  Future getOffersByMaster() async {
    await OfferService().getOffersByMaster(user.uidFB, true).then((value) => offers = value);
  }
}

class LoadOffersPageEvent extends BaseEventV2 {
  MasterOffersPageBloc bloc;
  LoadOffersPageEvent(BuildContext context, this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getOffersByMaster();
  }
}

class TapUserEvent extends BaseEventV2 {
  MasterOffersPageBloc bloc;
  BuildContext context;
  Offer offer;

  TapUserEvent(this.bloc, this.context, this.offer) : super();

  @override
  Future<void> execute() async {
    /*Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MasterOrderInfoPage(master: _tapUser),
      ),
    ).then((value) => bloc.add(LoadUserPageEvent(context, bloc)));*/
  }
}

class AddOfferBtnClick extends BaseEventV2 {
  MasterOffersPageBloc bloc;
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
