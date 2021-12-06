import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersPageBloc extends BaseBlocV2 {
  List<AppUser> users = [];
  AppUser? tapUser;

  UsersPageBloc(BaseStateV2 initialState) : super(initialState);

  Future fetchUsers() async {
    await UserService().getUsers().then((value) => users = value);
  }
}

class LoadUserPageEvent extends BaseEventV2 {
  LoadUserPageEvent(BuildContext context)
      : super(
          context: context,
          beginInvokeState: BaseBeginInvokeState<LoadUserPageEvent>(),
          endInvokeState: BaseEndInvokeState<LoadUserPageEvent>(),
        );

  @override
  Future<void> execute() async {
    var bloc = BlocProvider.of<UsersPageBloc>(context);
    await bloc.fetchUsers();
  }
}

class TapUserEvent extends BaseEventV2 {
  AppUser _tapUser;

  TapUserEvent(BuildContext context, this._tapUser)
      : super(
          context: context,
          beginInvokeState: BaseBeginInvokeState<TapUserEvent>(),
          endInvokeState: BaseEndInvokeState<TapUserEvent>(),
        );

  @override
  Future<void> execute() async {
    
  }
}
