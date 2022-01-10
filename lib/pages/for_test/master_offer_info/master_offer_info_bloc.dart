import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/pages/for_test/master_offer_info/map_picker_page.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:flutter/material.dart';
import 'package:beauty_link/global.dart' as global;

class MasterOfferInfoPageBloc extends BaseBlocV2 {
  Offer offer;
  AppUser master;

  MasterOfferInfoPageBloc(BaseStateV2 initialState, this.offer, this.master) : super(initialState);

  Future getOfferInfo() async {
    //await SkillService().getSkills(master.uidFB).then((value) => skills = value);
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

class SetLocationEvent extends BaseEventV2 {
  MasterOfferInfoPageBloc bloc;
  BuildContext context;
  SetLocationEvent(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MapPickerPage(),
        )).then((value) {
      bloc.add(MasterOfferInfoPageEvent(bloc));
    });
  }
}
