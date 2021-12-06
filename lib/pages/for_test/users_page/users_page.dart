import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/pages/for_test/users_page/users_page_bloc.dart';
import 'package:beauty_link/pages/for_test/users_page/users_page_events.dart';
import 'package:beauty_link/pages/for_test/users_page/users_page_states.dart';
import 'package:beauty_link/widgets/LoadingWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => UsersPageBloc(BaseInitState()),
        child: Scaffold(
            appBar: AppBar(title: Text('Users')),
            body: BlocConsumer<UsersPageBloc, BaseState>(
                listener: (context, state) {
              switch (state.runtimeType) {
                case OnTapedUserState:
                  /*Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EntityInfo(
                              entityType: entityType,
                              params: {
                                'name': stateResult[index].name,
                                'guid': stateResult[index].uidFB
                              }),
                        ),
                      ).then((value) {
                        BlocProvider.of<BaseBloc>(context)
                            .add(UsersPageLoadEvent());
                      });*/
                  break;
              }
            }, builder: (context, state) {
              return Column(children: [
                Expanded(child: Builder(builder: (context) {
                  switch (state.runtimeType) {
                    case BaseLoadingState:
                      return LoadingWidget();
                    case UsersPageLoadedState:
                      return _onUsersPageLoadedState(context);
                    default:
                      return Text('empty');
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
            background:
                Container(color: Colors.green, child: Icon(Icons.check)),
            secondaryBackground:
                Container(color: Colors.red, child: Icon(Icons.cancel)),
            onDismissed: (direction) {},
            child: ListTile(
                title: Text(bloc.users[index].name ?? "<Empty>",
                    style: TextStyle(fontSize: 22)),
                onTap: () => {bloc.add(OnTapUserEvent(bloc.users[index]))}),
          );
        });
  }
}
