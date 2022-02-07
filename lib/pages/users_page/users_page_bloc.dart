import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/add_user/add_user_page.dart';
import 'package:beauty_link/pages/user_info/user_info_page.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';

class UsersPageBloc extends BaseBloc {
  List<AppUser> users = [];
  AppUser? tapUser;

  UsersPageBloc(BaseState initialState) : super(initialState);

  Future fetchUsers() async {
    await UserService().getUsers().then((value) => users = value);
  }
}

class LoadUserPageEvent extends BaseEvent<UsersPageBloc> {
  LoadUserPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.fetchUsers();
  }
}

class TapUserEvent extends BaseEvent<UsersPageBloc> {
  AppUser _tapUser;

  TapUserEvent(BuildContext context, this._tapUser) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserInfoPage(user: _tapUser),
      ),
    ).then((value) => LoadUserPageEvent(context)..invoke());
  }
}

class AddUserBtnClick extends BaseEvent<UsersPageBloc> {
  AddUserBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddUserPage(),
      ),
    ).then((value) => LoadUserPageEvent(context)..invoke());
  }
}
