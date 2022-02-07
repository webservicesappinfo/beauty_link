import 'package:beauty_link/bloc/events.dart';

abstract class BaseState<T> {
  T? event;
  BaseState(this.event);
}

class InitState extends BaseState {
  InitState() : super(null);
}

class ExceptionState extends BaseState {
  BaseEventException? exception;
  ExceptionState(this.exception) : super(exception);
}

class BeginEventState extends BaseState {
  BeginEventState(BaseEvent event) : super(event);
}

class EndEventState extends BaseState {
  EndEventState(BaseEvent event) : super(event);
}