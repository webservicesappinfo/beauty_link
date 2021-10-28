import 'package:beauty_link/bloc/states.dart';

abstract class EventBase {
  List<StateBase> _states;
  EventBase(this._states);
  int _index = 0;
  StateBase currentState = StateInit();
  Future<bool> next() async {
    try {
      if (_index < _states.length - 1) {
        await _states[_index].execute();
        currentState = _states[_index];
        _index++;
        return true;
      } else {
        _index = 0;
        return false;
      }
    } catch (Exception) {
      currentState = _states.last;
      return false;
    }
  }
}

class CounterEvent extends EventBase {
  CounterEvent() : super([StateInit(), StateLoading(), StateLoaded(), StateError("error")]);
}
