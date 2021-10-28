import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBloc extends Bloc<EventBase, StateBase> {
  BaseBloc(StateBase initialState) : super(initialState);

  @override
  Stream<StateBase> mapEventToState(EventBase event) async* {
    while (true) {
      var next = true;
      await event.next().then((value) => next = value);
      if (!next) break;
      yield event.currentState;
    }
  }
}