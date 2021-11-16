import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';

abstract class BaseEvent {
  final EventExceptionBase? exception;
  List<BaseState> _states;
  BaseEvent(this._states, this.exception);
  int _index = 0;
  BaseState currentState = InitState();

  Future<bool> next() async {
    try {
      if (_index < _states.length) {
        print("call method next ${_states[_index].runtimeType}");
        await _states[_index].execute();
        currentState = _states[_index];
        _index++;
        return true;
      } else {
        _index = 0;
        return false;
      }
    } catch (e, s) {
      currentState =
          ExceptionState(exception ?? EventExceptionBase(e.toString()));
      return false;
    }
  }
}

class EventExceptionBase {
  String msg;
  EventExceptionBase(this.msg);
}

class CounterEvent extends BaseEvent {
  CounterEvent()
      : super([InitState(), LoadingState(), LoadedState()],
            EventExceptionBase("CounterEvent error"));
}

class HomePopupBtnClickEvent extends BaseEvent {
  final String key;
  HomePopupBtnClickEvent(this.key)
      : super([HomePopupBtnClickState(key)],
            EventExceptionBase("HomePopupBtnClickEvent error"));
}

class UsersPageLoadEvent extends BaseEvent {
  UsersPageLoadEvent()
      : super([LoadingState(), LoadedUsersState()],
            EventExceptionBase("LoadAddTestUserPageEvent error"));
}

class UserInfoPageLoadEvent extends BaseEvent {
  UserInfoPageLoadEvent()
      : super([LoadingState(), LoadedUsersState()],
            EventExceptionBase("LoadTestUserInfoPageEvent error"));
}

class AddEntityPageByUserLoad extends BaseEvent {
  AddEntityPageByUserLoad()
      : super([LoadingState(), AddEntityPageByUserLoadedState()],
            EventExceptionBase("AddPageByUserLoad error"));
}

class AddEntityPageByCompanyLoad extends BaseEvent {
  AddEntityPageByCompanyLoad()
      : super([LoadingState(), AddEntityPageByCompanyLoadedState()],
            EventExceptionBase("AddPageByUserLoad error"));
}

class CompaniesPageLoadEvent extends BaseEvent {
  String userGuid;
  bool owner;

  CompaniesPageLoadEvent({required this.userGuid, required this.owner})
      : super([
          LoadingState(),
          LoadedCompaniesState(userGuid: userGuid, owner: owner)
        ], EventExceptionBase("LoadCompaniesPageEvent error"));
}
