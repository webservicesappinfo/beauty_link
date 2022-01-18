import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class AddUserPageBloc extends BaseBlocV2 {
  String? userName;
  AddUserPageBloc(BaseStateV2 initialState) : super(initialState);

  Future addUser() async {
    if (userName?.isEmpty ?? true) throw Exception("userName is null");
    var uid = Uuid();
    await UserService().addUser(AppUser(name: userName, uidFB: uid.v1()));
  }

  void onChangedUserName(String name) => userName = name;
}

class AddUserBtnClick extends BaseEventV2<AddUserPageBloc> {
  AddUserBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.addUser().then((value) => Navigator.pop(context));
  }
}
