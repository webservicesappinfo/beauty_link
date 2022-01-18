import 'package:flutter/cupertino.dart';
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

abstract class BaseEventV2<T extends BaseBlocV2> {
  late BaseStateV2 beginInvokeState;
  late BaseStateV2 endInvokeState;
  BaseEventException? exception;
  final BuildContext context;

  BaseEventV2(this.context) {
    beginInvokeState = BeginEventState(this);
    endInvokeState = EndEventState(this);
    exception = BaseEventException("${this.runtimeType} exception!");
  }
  T get bloc => BlocProvider.of<T>(context);
  void invoke() => bloc.add(this);

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
