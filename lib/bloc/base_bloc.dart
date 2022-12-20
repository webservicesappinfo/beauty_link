import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBloc extends Bloc<BaseEvent, BaseState> {
  BaseBloc(BaseState initialState) : super(initialState);

  @override
  Stream<BaseState> mapEventToState(BaseEvent event) async* {
    try {
      yield event.beginInvokeState;
      await event.execute();
      yield event.endInvokeState;
    } catch (e, s) {
      yield ExceptionState(event.exception ?? BaseEventException(event.context, e.toString()));
    }
  }
}
