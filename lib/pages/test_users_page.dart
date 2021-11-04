import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/pages/test_add_user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BaseBloc>(
        create: (context) => BaseBloc(InitState()),
        child: Scaffold(
            appBar: AppBar(title: Text('TestUsers')),
            body: Column(
              children: [
                Expanded(
                    child: BlocConsumer<BaseBloc, StateBase>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          switch (state.runtimeType) {
                            case LoadingState:
                              Center(
                                child: CircularProgressIndicator(),
                              );
                              break;
                            case LoadedTestUsersPageState:
                              var stateresult =
                                  (state as LoadedTestUsersPageState).result;
                              if (stateresult == null)
                                return Center(
                                  child: Text(
                                    "Users not found",
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                );
                              else
                                return ListView.builder(
                                    padding: const EdgeInsets.all(8),
                                    itemCount: stateresult.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Text(
                                          stateresult[index].name ?? "<Empty>",
                                          style: TextStyle(fontSize: 22));
                                    });
                          }
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        })),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TestUserAddPage(),
                          ),
                        );
                      },
                      child: Text('Add User')),
                )
              ],
            )));
  }
}
