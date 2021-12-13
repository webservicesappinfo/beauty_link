import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/for_test/add_user/add_user_page.dart';
import 'package:beauty_link/pages/for_test/user_info/user_info_page.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beauty_link/pages/for_test/user_info/user_info_page_bloc.dart';

class UsersPageBloc extends BaseBlocV2 {
  List<AppUser> users = [];
  AppUser? tapUser;

  UsersPageBloc(BaseStateV2 initialState) : super(initialState);

  Future fetchUsers() async {
    await UserService().getUsers().then((value) => users = value);
  }
}

class LoadUserPageEvent extends BaseEventV2 {
  UsersPageBloc bloc;
  LoadUserPageEvent(BuildContext context, this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.fetchUsers();
  }
}

class TapUserEvent extends BaseEventV2 {
  UsersPageBloc bloc;
  BuildContext context;
  AppUser _tapUser;

  TapUserEvent(this.bloc, this.context, this._tapUser) : super();

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserInfoPage(user: _tapUser),
      ),
    ).then((value) => bloc.add(LoadUserPageEvent(context, bloc)));
  }
}

class AddUserBtnClick extends BaseEventV2 {
  UsersPageBloc bloc;
  BuildContext context;

  AddUserBtnClick(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddUserPage(),
      ),
    ).then((value) => bloc.add(LoadUserPageEvent(context, bloc)));
  }
}
