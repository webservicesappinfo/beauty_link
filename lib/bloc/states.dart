import 'package:flutter/material.dart';

import 'events.dart';

abstract class StateBase {
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
  Future execute() async {
    //await Future.delayed(Duration(seconds: 3));
  }
}

class LoadedState extends StateBase {
  @override
  Future execute() async {
    await Future.delayed(Duration(seconds: 2));
  }
}

class HomePopupBtnClickState extends StateBase{
  final String key;
  HomePopupBtnClickState(this.key);
  @override
  Future execute() async {
    // TODO: implement execute    
  }
}