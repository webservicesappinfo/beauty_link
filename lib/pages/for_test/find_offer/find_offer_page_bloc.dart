import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/pages/for_test/fit_offers/fit_offers_page.dart';
import 'package:beauty_link/services/skill_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class FindOfferPageBloc extends BaseBlocV2 {
  AppUser client;
  AppUser? selectedMaster;
  Skill? selectedSkill;
  List<AppUser> masters = [];
  List<Skill> skills = [];
  String? masterName;
  PickerDateRange? pickerDateRange;

  FindOfferPageBloc(BaseStateV2 initialState, this.client) : super(initialState);

  Future getMasters() async {
    await UserService().getUsers().then((value) {
      masters = value.where((element) => element.uidFB != client.uidFB).toList();
      masters.insert(0, AppUser(name: 'all'));
      if (masters.length > 0) selectedMaster = masters[0];
    });
  }

  Future getSkills() async {
    await SkillService().getSkills(selectedMaster?.uidFB).then((value) {
      skills = value;
      skills.insert(0, Skill(name: 'all'));
      if (skills.length > 0) selectedSkill = skills[0];
    });
  }

  void onMasterChanged(EntityBase? master) {
    selectedMaster = master as AppUser;
    getSkills();
  }

  void onSkillChanged(EntityBase? skill) {
    selectedSkill = skill as Skill;
  }
}

class LoadFindOfferPageEvent extends BaseEventV2 {
  FindOfferPageBloc bloc;
  LoadFindOfferPageEvent(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getMasters();
    await bloc.getSkills();
  }
}

class FindBtnClickEvent extends BaseEventV2 {
  FindOfferPageBloc bloc;
  BuildContext context;
  FindBtnClickEvent(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    if (bloc.selectedMaster != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FitOffersPage(
              master: bloc.selectedMaster ?? AppUser(),
              skill: bloc.selectedSkill ?? Skill(name: 'empty'),
              client: bloc.client),
        ),
      ).then((value) => bloc.add(LoadFindOfferPageEvent(bloc)));
    }
  }
}
