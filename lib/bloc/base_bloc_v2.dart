import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBlocV2 extends Bloc<BaseEventV2, BaseStateV2> {
  BaseBlocV2(BaseStateV2 initialState) : super(initialState);

  @override
  Stream<BaseStateV2> mapEventToState(BaseEventV2 event) async* {
    try {
      yield event.beginInvokeState;
      await event.execute();
      yield event.endInvokeState;
    } catch (e, s) {
      yield ExceptionState(event.exception ?? BaseEventException(e.toString()));
    }
  }
}

abstract class BaseEventV2 {
  final BuildContext context;
  final BaseStateV2 beginInvokeState;
  final BaseStateV2 endInvokeState;
  final BaseEventException? exception;

  BaseEventV2(
      {required this.context,
      required this.beginInvokeState,
      required this.endInvokeState,
      this.exception});

  Future<void> execute() async {}
}

class BaseEventException {
  String msg;
  BaseEventException(this.msg);
}

abstract class BaseStateV2<T> {
  T? event;
}

class InitState extends BaseStateV2 {}

class ExceptionState extends BaseStateV2 {
  BaseEventException? exception;
  ExceptionState(this.exception) : assert(exception != null);
}

class BaseBeginInvokeState<T> extends BaseStateV2<T> {}

class BaseEndInvokeState<T> extends BaseStateV2<T> {}
