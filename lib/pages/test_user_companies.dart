import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestUserCompanies extends StatelessWidget {
  final String companyType;
  BaseBloc? _bloc;

  TestUserCompanies({Key? key, required this.companyType}) : super(key: key);

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
                            case InitState:
                              _bloc = BlocProvider.of<BaseBloc>(context);
                              _bloc?.add(LoadAddTestUserPageEvent());
                              break;
                            case LoadingState:
                              Center(
                                child: CircularProgressIndicator(),
                              );
                              break;
                            case LoadedTestUsersState:
                              var stateresult =
                                  (state as LoadedTestUsersState).result;
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
                                      return ListTile(
                                        title: Text(
                                            stateresult[index].name ??
                                                "<Empty>",
                                            style: TextStyle(fontSize: 22)),
                                        onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => TestUserInfo(
                                                name: stateresult[index].name,
                                                guid: stateresult[index].uidFB),
                                          ),
                                        ),
                                      );
                                    });
                          }
                          return Center(
                            child: Text(
                              "InitState",
                              style: TextStyle(fontSize: 20.0),
                            ),
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
                        ).then((value) => _pop(_bloc));
                      },
                      child: Text('Add User')),
                )
              ],
            )));
  }

  void _pop(BaseBloc? b) {
    try {
      b?.add(LoadAddTestUserPageEvent());
    } catch (Ex) {
      var e = Ex.runtimeType;
    }
  }
}