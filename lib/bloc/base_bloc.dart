import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBloc extends Bloc<BaseEvent, BaseState> {
  BaseBloc(BaseState initialState) : super(initialState);

  @override
  Stream<BaseState> mapEventToState(BaseEvent event) async* {
    while (true) {
      var next = true;
      await event.next().then((value) => next = value);
      if (!next) break;
      yield event.currentState;
    }
  }
}