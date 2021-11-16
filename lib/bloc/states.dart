import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/services/company_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';

import 'events.dart';

abstract class BaseState<T> {
  T? result;
  Future execute();
}

class InitState extends BaseState {
  @override
  Future execute() async {}
}

class ExceptionState extends BaseState {
  EventExceptionBase? exception;
  ExceptionState(this.exception) : assert(exception != null);
  @override
  Future execute() async {}
}

class LoadingState extends BaseState {
  @override
  Future execute() async {}
}

class LoadedState extends BaseState {
  @override
  Future execute() async {
    await Future.delayed(Duration(seconds: 2));
  }
}

class HomePopupBtnClickState extends BaseState {
  final String key;
  HomePopupBtnClickState(this.key);
  @override
  Future execute() async {
    // TODO: implement execute
  }
}

class LoadedUsersState extends BaseState<List<AppUser>> {
  @override
  Future execute() async {
    result = await UserService().getUsers();
  }
}

class AddEntityPageByUserLoadedState extends BaseState<void> {
  @override
  Future execute() async {
    //result = await UserService().getUsers();
  }
}

class AddEntityPageByCompanyLoadedState extends BaseState<void> {
  @override
  Future execute() async {
    //result = await UserService().getUsers();
  }
}

class LoadedUserInfoState extends BaseState<List<AppUser>> {
  @override
  Future execute() async {
    //result = await UserService().get();
  }
}

class LoadedCompaniesState extends BaseState<List<Company>> {
  String userGuid;
  bool owner;
  LoadedCompaniesState({required this.userGuid, required this.owner}) : super();
  @override
  Future execute() async {
    result = await CompanyService().getCompanies(userGuid, owner);
  }
}
