import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class AddUserPageBloc extends BaseBloc {
  String? userName;
  AddUserPageBloc(BaseState initialState) : super(initialState);

  Future addUser() async {
    if (userName?.isEmpty ?? true) throw Exception("userName is null");
    var uid = Uuid();
    await UserService().addUser(AppUser(name: userName, uidFB: uid.v1()));
  }

  void onChangedUserName(String name) => userName = name;
}

class AddUserBtnClick extends BaseEvent<AddUserPageBloc> {
  AddUserBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.addUser().then((value) => Navigator.pop(context));
  }
}
