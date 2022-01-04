import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:beauty_link/services/skill_service.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class AddUserOfferPageBloc extends BaseBlocV2 {
  String? offerName;
  AppUser user;
  List<Skill> skills = [];
  Skill? selectedSkill;

  AddUserOfferPageBloc(BaseStateV2 initialState, this.user) : super(initialState);

  Future getSkills() async {
    await SkillService().getSkills(user.uidFB).then((value) {
      skills = value;
      if (skills.length > 0) selectedSkill = skills[0];
    });
  }

  Future addOffer() async {
    if (offerName?.isEmpty ?? true) throw Exception("userName is null");
    var uid = Uuid();
    await OfferService().addOffer(Offer(
        name: offerName,
        masterGuid: user.uidFB,
        masterName: user.name,
        skillGuid: selectedSkill?.guid,
        skillName: selectedSkill?.name,
        status: 'Actived'));
  }

  void onChangedOfferName(String name) => offerName = name;

  void onSkillChanged(EntityBase? skill) {
    selectedSkill = skill as Skill;
  }
}

class AddOfferInfoPageLoad extends BaseEventV2 {
  AddUserOfferPageBloc bloc;
  AddOfferInfoPageLoad(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getSkills();
  }
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
