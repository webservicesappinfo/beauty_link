import 'dart:developer';

import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/services/main_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class MainPageBloc extends BaseBloc {
  List<AppUser> users = [];
  AppUser? curUser;
  MainPageBloc(BaseState initialState) : super(initialState);

  Future getUsers() async {
    await UserService().getUsers().then((value) => users = value);
  }

  Future<void> getUserData() async {
    curUser = await MainService().getMainData(curUser?.uidFB ?? "");
    log('ChangeUserEvent userName: ${curUser?.name ?? "NoName"}');
  }

  Future addUser(AppUser user) async {
    await UserService().addUser(user).then((value) {
      if (value) {
        users.add(user);
        curUser = user;
      }
    });
  }

  Future delUser(AppUser? user) async {
    await UserService().delUser(user).then((value) {
      if (value) {
        users.remove(user);
        curUser = users.length > 0 ? users[0] : null;
      }
    });
  }
}

class LoadMainPageEvent extends BaseEvent<MainPageBloc> {
  LoadMainPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getUsers();
    bloc.curUser = bloc.users.length > 0 ? bloc.users[0] : null;
    if (bloc.curUser != null) {
      await bloc.getUserData();
    }
  }
}

class AddUserEvent extends BaseEvent<MainPageBloc> {
  String user;
  AddUserEvent(BuildContext context, this.user) : super(context);

  @override
  Future<void> execute() async {
    await bloc.addUser(AppUser(name: user, uidFB: Uuid().v1()));
    bloc.add(LoadMainPageEvent(context));
  }
}

class DelUserEvent extends BaseEvent<MainPageBloc> {
  AppUser? user;
  DelUserEvent(BuildContext context, this.user) : super(context);

  @override
  Future<void> execute() async {
    await bloc.delUser(user);
    bloc.add(LoadMainPageEvent(context));
  }
}

class ChangeUserEvent extends BaseEvent<MainPageBloc> {
  AppUser? user;
  ChangeUserEvent(BuildContext context, this.user) : super(context);

  @override
  Future<void> execute() async {
    bloc.curUser = user;
    await bloc.getUserData();
  }
}
