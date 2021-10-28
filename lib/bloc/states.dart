import 'package:flutter/material.dart';

abstract class StateBase {
  Future execute();
}

class StateInit extends StateBase {
  @override
  Future execute() async {}
}

class StateError extends StateBase {
  String? message;
  StateError(this.message) : assert(message != null);
  @override
  Future execute() async {}
}

class StateLoading extends StateBase {
  @override
  Future execute() async {
    //await Future.delayed(Duration(seconds: 3));
  }
}

class StateLoaded extends StateBase {
  @override
  Future execute() async {
    await Future.delayed(Duration(seconds: 2));
  }
}