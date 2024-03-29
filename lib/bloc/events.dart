import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseEvent<T extends BaseBloc> {
  late BaseState beginInvokeState;
  late BaseState endInvokeState;
  BaseEventException? exception;
  final BuildContext context;
  dynamic kind;

  BaseEvent(this.context) {
    beginInvokeState = BeginEventState(this);
    endInvokeState = EndEventState(this);
    //exception = BaseEventException(context, "${this.runtimeType} exception!");
  }
  T get bloc => BlocProvider.of<T>(context);
  void invoke() => bloc.add(this);

  Future<void> execute() async {}
}

class BaseEventException extends BaseEvent {
  String msg;
  BaseEventException(BuildContext context, this.msg) : super(context);
}
