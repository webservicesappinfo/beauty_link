import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';

import 'events.dart';

abstract class StateBase<T> {
  T? result;
  Future execute();
}

class InitState extends StateBase {
  @override
  Future execute() async {}
}

class ExceptionState extends StateBase {
  EventExceptionBase? exception;
  ExceptionState(this.exception) : assert(exception != null);
  @override
  Future execute() async {}
}

class LoadingState extends StateBase {
  @override
  Future execute() async {}
}

class LoadedState extends StateBase {
  @override
  Future execute() async {
    await Future.delayed(Duration(seconds: 2));
  }
}

class LoadedTestUsersPageState extends StateBase<List<AppUser>> {
  @override
  Future execute() async {
    result = await UserService().getUsers();
  }
}

class HomePopupBtnClickState extends StateBase {
  final String key;
  HomePopupBtnClickState(this.key);
  @override
  Future execute() async {
    // TODO: implement execute
  }
}
