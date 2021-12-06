import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/for_test/users_page/users_page_states.dart';

class OnTapUserEvent extends BaseEvent {
  AppUser _tapUser;

  OnTapUserEvent(this._tapUser)
      : super([OnTapedUserState(_tapUser)],
            EventExceptionBase("CounterEvent error"));
}
