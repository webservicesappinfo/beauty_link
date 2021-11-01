import 'package:beauty_link/bloc/states.dart';

abstract class EventBase {
  final EventExceptionBase exception;
  List<StateBase> _states;
  EventBase(this._states, this.exception);
  int _index = 0;
  StateBase currentState = InitState();
  Future<bool> next() async {
    try {
      if (_index < _states.length) {
        await _states[_index].execute();
        currentState = _states[_index];
        _index++;
        return true;
      } else {
        _index = 0;
        return false;
      }
    } catch (Exception) {
      currentState = ExceptionState(exception);
      return false;
    }
  }
}

class EventExceptionBase {
  String msg;
  EventExceptionBase(this.msg);
}

class CounterEvent extends EventBase {
  CounterEvent()
      : super([InitState(), LoadingState(), LoadedState()],
            EventExceptionBase("CounterEvent error"));
}

class HomePopupBtnClickEvent extends EventBase {
  final String key;
  HomePopupBtnClickEvent(this.key)
      : super([HomePopupBtnClickState(key)], EventExceptionBase("HomePopupBtnClickEvent error"));
}
