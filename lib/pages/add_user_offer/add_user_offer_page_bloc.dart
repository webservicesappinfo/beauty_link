import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/pages/master_offers/master_offers_page.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:beauty_link/services/skill_service.dart';
import 'package:beauty_link/widgets/custom_dropdownfield.dart';
import 'package:flutter/material.dart';

class AddUserOfferPageBloc extends BaseBloc {
  String? offerName;
  AppUser user;
  Company company;
  List<Skill> skills = [];
  Skill? selectedSkill;

  AddUserOfferPageBloc(BaseState initialState, this.user, this.company) : super(initialState);

  Future getSkills() async {
    await SkillService().getSkills(user.uidFB).then((value) {
      skills = value;
      if (skills.length > 0) selectedSkill = skills[0];
    });
  }

  Future addOffer() async {
    if (offerName?.isEmpty ?? true) throw Exception("userName is null");
    await OfferService().addOffer(Offer(
        name: offerName,
        companyGuid: company.guid,
        companyName: company.name,
        masterGuid: user.uidFB,
        masterName: user.name,
        skillGuid: selectedSkill?.guid,
        skillName: selectedSkill?.name,
        status: 'Actived'));
  }

  void onChangedOfferName(String name) => offerName = name;

  void onSkillChanged(DropDownFieldItem? item) => selectedSkill = item?.entity as Skill;
}

class AddOfferInfoPageLoad extends BaseEvent<AddUserOfferPageBloc> {
  AddOfferInfoPageLoad(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getSkills();
  }
}

class AddOfferBtnClick extends BaseEvent<AddUserOfferPageBloc> {
  AddOfferBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.addOffer().then((value) => Navigator.pop(context));
  }
}
