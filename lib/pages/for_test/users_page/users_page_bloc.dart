import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/services/user_service.dart';

class UsersPageBloc extends BaseBloc {
  List<AppUser> users = [];
  AppUser? tapUser;

  UsersPageBloc(BaseState initialState) : super(initialState);

  Future fetchUsers() async {
    await UserService().getUsers().then((value) => users = value);
  }
}
