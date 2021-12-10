import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/for_test/user_companies.dart/user_companies.page.dart';
import 'package:beauty_link/pages/for_test/users_page/users_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInfoPageBloc extends BaseBlocV2 {
  AppUser user;
  UserInfoPageBloc(BaseStateV2 initialState, this.user) : super(initialState);
  Future getUserInfo() async {}
}

class LoadUserInfoPageEvent extends BaseEventV2 {
  LoadUserInfoPageEvent(BuildContext context) : super(context: context);

  @override
  Future<void> execute() async {
    var bloc = BlocProvider.of<UserInfoPageBloc>(context);
    await bloc.getUserInfo();
  }
}

class CompaniesBtnClickEvent extends BaseEventV2 {
  String companyType;
  CompaniesBtnClickEvent(BuildContext context, this.companyType) : super(context: context);

  @override
  Future<void> execute() async {
    var bloc = BlocProvider.of<UserInfoPageBloc>(context);
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => UserCompaniesPage(
                companyType: companyType,
                user: bloc.user,
              )),
    ).then((value) => bloc.add(LoadUserInfoPageEvent(context)));
  }
}
