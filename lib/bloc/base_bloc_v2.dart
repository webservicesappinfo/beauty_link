import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

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
  late BaseStateV2 beginInvokeState;
  late BaseStateV2 endInvokeState;
  BaseEventException? exception;

  BaseEventV2() {
    beginInvokeState = BeginEventState(this);
    endInvokeState = EndEventState(this);
    exception = BaseEventException("${this.runtimeType} exception!");
  }

  Future<void> execute() async {}
}

class BaseEventException {
  String msg;
  BaseEventException(this.msg);
}

abstract class BaseStateV2<T> {
  T? event;
  BaseStateV2(this.event);
}

class InitState extends BaseStateV2 {
  InitState() : super(null);
}

class ExceptionState extends BaseStateV2 {
  BaseEventException? exception;
  ExceptionState(this.exception) : super(exception);
}

class BeginEventState extends BaseStateV2 {
  BeginEventState(BaseEventV2 event) : super(event);
}

class EndEventState extends BaseStateV2 {
  EndEventState(BaseEventV2 event) : super(event);
}
