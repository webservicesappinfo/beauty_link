import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/for_test/users_page/users_page_bloc.dart';

class UsersPageLoadedState extends BaseState {
  UsersPageLoadedState() : super();

  @override
  Future execute(BaseBloc bloc) async {
    await (bloc as UsersPageBloc).fetchUsers();
  }
}

class OnTapedUserState extends BaseState {
  AppUser _tapUser;
  OnTapedUserState(this._tapUser) : super();

  @override
  Future execute(BaseBloc bloc) async {
    (bloc as UsersPageBloc).tapUser = _tapUser;
  }
}
