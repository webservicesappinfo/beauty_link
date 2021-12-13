import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/for_test/user_companies/user_companies_page.dart';
import 'package:beauty_link/pages/for_test/user_offers/user_offers_page.dart';
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
      MaterialPageRoute(
          builder: (context) => UserCompaniesPage(
                companyType: companyType,
                user: bloc.user,
              )),
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
      MaterialPageRoute(
          builder: (context) => UserOffersPage(
                user: bloc.user,
              )),
    ).then((value) => bloc.add(LoadUserInfoPageEvent(bloc)));
  }
}