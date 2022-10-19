import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/pages/old_ui/master_offer_info/map_picker_page.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:flutter/material.dart';
import 'package:beauty_link/global.dart' as global;

class MasterOfferInfoPageBloc extends BaseBloc {
  Offer offer;
  AppUser master;

  MasterOfferInfoPageBloc(BaseState initialState, this.offer, this.master) : super(initialState);

  Future getOfferInfo() async {
    //await SkillService().getSkills(master.uidFB).then((value) => skills = value);
  }

  Future delOffer() async {
    await OfferService().delOffer(offer.guid);
  }
}

class MasterOfferInfoPageEvent extends BaseEvent<MasterOfferInfoPageBloc> {
  MasterOfferInfoPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getOfferInfo();
  }
}

class DelOfferEvent extends BaseEvent<MasterOfferInfoPageBloc> {
  DelOfferEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.delOffer().then((value) => Navigator.pop(context));
  }
}

class SetLocationEvent extends BaseEvent<MasterOfferInfoPageBloc> {
  SetLocationEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MapPickerPage(),
        )).then((value) {
      MasterOfferInfoPageEvent(context)..invoke();
    });
  }
}
