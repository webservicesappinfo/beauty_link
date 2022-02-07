import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/pages/for_test/client_orders/client_orders_page.dart';
import 'package:beauty_link/pages/for_test/find_offer/find_offer_page.dart';
import 'package:beauty_link/pages/for_test/master_orders/master_orders_page.dart';
import 'package:beauty_link/pages/for_test/user_companies/user_companies_page.dart';
import 'package:beauty_link/pages/for_test/master_offers/master_offers_page.dart';
import 'package:beauty_link/services/skill_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInfoPageBloc extends BaseBlocV2 {
  AppUser user;
  UserInfoPageBloc(BaseStateV2 initialState, this.user) : super(initialState);

  Future getUserInfo() async {}

  Future delUser() async {
    await UserService().delUser(user);
  }

  Future addSkill(Skill? skill) async {
    await SkillService().addSkill(skill);
  }
}

class LoadUserInfoPageEvent extends BaseEventV2<UserInfoPageBloc> {
  LoadUserInfoPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getUserInfo();
  }
}

class CompaniesBtnClickEvent extends BaseEventV2<UserInfoPageBloc> {
  String companyType;
  CompaniesBtnClickEvent(BuildContext context, this.companyType) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserCompaniesPage(companyType: companyType, user: bloc.user)),
    ).then((value) => LoadUserInfoPageEvent(context)..invoke());
  }
}

class FindOfferBtnClicEvent extends BaseEventV2<UserInfoPageBloc> {
  FindOfferBtnClicEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FindOfferPage(client: bloc.user)),
    ).then((value) => LoadUserInfoPageEvent(context)..invoke());
  }
}

class MasterOrdersBtnClicEvent extends BaseEventV2<UserInfoPageBloc> {
  MasterOrdersBtnClicEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MasterOrdersPage(master: bloc.user)),
    ).then((value) => LoadUserInfoPageEvent(context)..invoke());
  }
}

class ClientOrdersBtnClicEvent extends BaseEventV2<UserInfoPageBloc> {
  ClientOrdersBtnClicEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ClientOrdersPage(client: bloc.user)),
    ).then((value) => LoadUserInfoPageEvent(context)..invoke());
  }
}

class DelUserEvent extends BaseEventV2<UserInfoPageBloc> {
  DelUserEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.delUser().then((value) => Navigator.pop(context));
  }
}

class AddSkillEvent extends BaseEventV2<UserInfoPageBloc> {
  AddSkillEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.delUser().then((value) => Navigator.pop(context));
  }
}
