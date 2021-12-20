import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/for_test/find_offer/find_offer_page.dart';
import 'package:beauty_link/pages/for_test/master_orders/master_orders_page.dart';
import 'package:beauty_link/pages/for_test/user_companies/user_companies_page.dart';
import 'package:beauty_link/pages/for_test/master_offers/master_offers_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInfoPageBloc extends BaseBlocV2 {
  AppUser user;
  UserInfoPageBloc(BaseStateV2 initialState, this.user) : super(initialState);
  Future getUserInfo() async {}
}

class LoadUserInfoPageEvent extends BaseEventV2 {
  UserInfoPageBloc bloc;
  LoadUserInfoPageEvent(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getUserInfo();
  }
}

class CompaniesBtnClickEvent extends BaseEventV2 {
  UserInfoPageBloc bloc;
  BuildContext context;
  String companyType;
  CompaniesBtnClickEvent(this.bloc, this.context, this.companyType) : super();

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserCompaniesPage(companyType: companyType, user: bloc.user)),
    ).then((value) => bloc.add(LoadUserInfoPageEvent(bloc)));
  }
}

class OffersBtnClicEvent extends BaseEventV2 {
  UserInfoPageBloc bloc;
  BuildContext context;
  OffersBtnClicEvent(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MasterOffersPage(user: bloc.user)),
    ).then((value) => bloc.add(LoadUserInfoPageEvent(bloc)));
  }
}

class FindOfferBtnClicEvent extends BaseEventV2 {
  UserInfoPageBloc bloc;
  BuildContext context;
  FindOfferBtnClicEvent(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FindOfferPage(client: bloc.user)),
    ).then((value) => bloc.add(LoadUserInfoPageEvent(bloc)));
  }
}

class MasterOrdersBtnClicEvent extends BaseEventV2 {
  UserInfoPageBloc bloc;
  BuildContext context;
  MasterOrdersBtnClicEvent(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MasterOrdersPage(master: bloc.user)),
    ).then((value) => bloc.add(LoadUserInfoPageEvent(bloc)));
  }
}

class ClientOrdersBtnClicEvent extends BaseEventV2 {
  UserInfoPageBloc bloc;
  BuildContext context;
  ClientOrdersBtnClicEvent(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FindOfferPage(client: bloc.user)),
    ).then((value) => bloc.add(LoadUserInfoPageEvent(bloc)));
  }
}
