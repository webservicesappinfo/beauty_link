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

class AddEntityPageLoadByUser extends BaseEvent {
  AddEntityPageLoadByUser()
      : super([LoadingState(), AddEntityPageByUserLoadedState()],
            EventExceptionBase("AddPageByUserLoad error"));
}

class AddEntityPageLoadByCompany extends BaseEvent {
  AddEntityPageLoadByCompany()
      : super([LoadingState(), AddEntityPageByCompanyLoadedState()],
            EventExceptionBase("AddPageByUserLoad error"));
}

class AddEntityPageLoadByCanBeContainsCompany extends BaseEvent {
  String userGuid;
  AddEntityPageLoadByCanBeContainsCompany({
    required this.userGuid,
  }) : super([LoadingState(), AddEntityPageByCompanyLoadedState()],
            EventExceptionBase("AddPageByUserLoad error"));
}

class AddEntityPageLoadBySkill extends BaseEvent {
  AddEntityPageLoadBySkill()
      : super([LoadingState(), AddEntityPageBySkillLoadedState()],
            EventExceptionBase("AddPageByUserLoad error"));
}

class CompaniesPageLoadEvent extends BaseEvent {
  String userGuid;
  String type;

  CompaniesPageLoadEvent({required this.userGuid, required this.type})
      : super([
          LoadingState(),
          LoadedCompaniesState(userGuid: userGuid, type: type)
        ], EventExceptionBase("LoadCompaniesPageEvent error"));
}

class SkillsPageLoadEvent extends BaseEvent {
  String? userGuid;

  SkillsPageLoadEvent({this.userGuid})
      : super([
          LoadingState(),
          LoadedSkillsState(userGuid: userGuid)
        ], EventExceptionBase("SkillsPageLoadEvent error"));
}
