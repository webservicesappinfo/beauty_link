import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/pages/for_test/users_page/users_page_bloc.dart';
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
            body: BlocConsumer<UsersPageBloc, BaseStateV2>(listener: (context, state) {
              if (state is InitState) {}
            }, builder: (context, state) {
              return Builder(builder: (context) {
                var bloc = BlocProvider.of<UsersPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    bloc.add(LoadUserPageEvent(context, bloc));
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
    //return EntityListWidget(entities: bloc.users, onTap: _onTap);
    return Column(children: [
      Expanded(child: EntityListWidget(entities: bloc.users, onTap: _onTap)),
      SizedBox(height: 10),
      CustomButton(text: 'Add user', clickEvent: AddUserBtnClick(bloc, context), bloc: bloc)
    ]);
  }

  dynamic _onTap(BuildContext context, EntityBase entity) {
    var user = entity as AppUser;
    var bloc = BlocProvider.of<UsersPageBloc>(context);
    bloc.add(TapUserEvent(bloc, context, user));
  }
}
