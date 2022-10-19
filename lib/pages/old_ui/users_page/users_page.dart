import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/pages/old_ui/users_page/users_page_bloc.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/entity_list_widget.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => UsersPageBloc(InitState()),
        child: Scaffold(
            appBar: AppBar(title: Text('Users')),
            body: BlocConsumer<UsersPageBloc, BaseState>(listener: (context, state) {
              if (state is InitState) {}
            }, builder: (context, state) {
              return Builder(builder: (context) {
                var bloc = BlocProvider.of<UsersPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    LoadUserPageEvent(context)..invoke();
                    return LoadingWidget();
                  case BeginEventState:
                    return LoadingWidget();
                  case EndEventState:
                    switch ((state as EndEventState).event.runtimeType) {
                      case LoadUserPageEvent:
                        return _onUsersPageLoadedState(context);
                      default:
                        return Text('empty state');
                    }
                  default:
                    return Text('empty state');
                }
              });
            })));
  }

  Widget _onUsersPageLoadedState(BuildContext context) {
    var bloc = BlocProvider.of<UsersPageBloc>(context);
    return Column(children: [
      Expanded(
          child: EntityListWidget(
              entities: bloc.users, onTap: (EntityBase entity) => TapUserEvent(context, entity as AppUser)..invoke())),
      CustomButton(text: 'Add user', clickEvent: () => AddUserBtnClick(context)..invoke())
    ]);
  }
}
