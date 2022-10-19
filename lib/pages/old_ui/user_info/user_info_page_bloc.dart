import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/pages/old_ui/client_orders/client_orders_page.dart';
import 'package:beauty_link/pages/old_ui/find_offer/find_offer_page.dart';
import 'package:beauty_link/pages/old_ui/master_orders/master_orders_page.dart';
import 'package:beauty_link/pages/old_ui/user_companies/user_companies_page.dart';
import 'package:beauty_link/services/skill_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';

class UserInfoPageBloc extends BaseBloc {
  AppUser user;
  UserInfoPageBloc(BaseState initialState, this.user) : super(initialState);

  Future getUserInfo() async {}

  Future delUser() async {
    await UserService().delUser(user);
  }

  Future addSkill(Skill? skill) async {
    await SkillService().addSkill(skill);
  }
}

class LoadUserInfoPageEvent extends BaseEvent<UserInfoPageBloc> {
  LoadUserInfoPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getUserInfo();
  }
}

class CompaniesBtnClickEvent extends BaseEvent<UserInfoPageBloc> {
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

class FindOfferBtnClicEvent extends BaseEvent<UserInfoPageBloc> {
  FindOfferBtnClicEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FindOfferPage(client: bloc.user)),
    ).then((value) => LoadUserInfoPageEvent(context)..invoke());
  }
}

class MasterOrdersBtnClicEvent extends BaseEvent<UserInfoPageBloc> {
  MasterOrdersBtnClicEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MasterOrdersPage(master: bloc.user)),
    ).then((value) => LoadUserInfoPageEvent(context)..invoke());
  }
}

class ClientOrdersBtnClicEvent extends BaseEvent<UserInfoPageBloc> {
  ClientOrdersBtnClicEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ClientOrdersPage(client: bloc.user)),
    ).then((value) => LoadUserInfoPageEvent(context)..invoke());
  }
}

class DelUserEvent extends BaseEvent<UserInfoPageBloc> {
  DelUserEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.delUser().then((value) => Navigator.pop(context));
  }
}

class AddSkillEvent extends BaseEvent<UserInfoPageBloc> {
  AddSkillEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.delUser().then((value) => Navigator.pop(context));
  }
}
