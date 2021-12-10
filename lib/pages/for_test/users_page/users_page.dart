import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/pages/for_test/user_info_page.dart/user_info_page_bloc.dart';
import 'package:beauty_link/pages/for_test/users_page/users_page_bloc.dart';
import 'package:beauty_link/widgets/LoadingWidget.dart';
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
              return Column(children: [
                Expanded(child: Builder(builder: (context) {
                  var bloc = BlocProvider.of<UsersPageBloc>(context);
                  switch (state.runtimeType) {
                    case InitState:
                      bloc.add(LoadUserPageEvent(context));
                      return LoadingWidget();
                    case BeginInvokeEventState:
                      return LoadingWidget();
                    case EndInvokeEventState:
                      switch ((state as EndInvokeEventState).event.runtimeType) {
                        case LoadUserPageEvent:
                          return _onUsersPageLoadedState(context);
                        default:
                          return Text('empty state');
                      }
                    default:
                      return Text('empty state');
                  }
                }))
              ]);
            })));
  }

  Widget _onUsersPageLoadedState(BuildContext context) {
    var bloc = BlocProvider.of<UsersPageBloc>(context);
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: bloc.users.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(index.toString()),
            background: Container(color: Colors.green, child: Icon(Icons.check)),
            secondaryBackground: Container(color: Colors.red, child: Icon(Icons.cancel)),
            onDismissed: (direction) {},
            child: ListTile(
                title: Text(bloc.users[index].name ?? "<Empty>", style: TextStyle(fontSize: 22)),
                onTap: () => {bloc.add(TapUserEvent(context, bloc.users[index]))}),
          );
        });
  }
}
