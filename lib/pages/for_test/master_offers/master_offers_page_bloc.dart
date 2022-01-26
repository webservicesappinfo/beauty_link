import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/pages/for_test/add_user_offer/add_user_offer_page.dart';
import 'package:beauty_link/pages/for_test/master_offer_info/master_offer_info_page.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:beauty_link/widgets/custom_dropdownbutton.dart';
import 'package:flutter/material.dart';

class MasterOffersPageBloc extends BaseBlocV2 {
  List<Offer> offers = [];
  AppUser user;
  Company company;
  String status = "all";

  MasterOffersPageBloc(BaseStateV2 initialState, this.user, this.company) : super(initialState);

  Future getOffersByMaster() async {
    await OfferService().getOffersByMaster(user.uidFB, null, true).then((value) {
      offers = value;
      if (status != "all") offers = offers.where((element) => element.status?.toLowerCase() == status).toList();
    });
  }
}

class LoadOffersPageEvent extends BaseEventV2<MasterOffersPageBloc> {
  LoadOffersPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getOffersByMaster();
  }
}

class TapUserEvent extends BaseEventV2<MasterOffersPageBloc> {
  Offer offer;
  TapUserEvent(BuildContext context, this.offer) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
            context, MaterialPageRoute(builder: (context) => MasterOfferInfoPage(master: bloc.user, offer: offer)))
        .then((value) => LoadOffersPageEvent(context)..invoke());
  }
}

class AddOfferBtnClick extends BaseEventV2<MasterOffersPageBloc> {
  AddOfferBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => AddUserOfferPage(
                  user: bloc.user,
                  company: bloc.company,
                ))).then((value) => LoadOffersPageEvent(context)..invoke());
  }
}
