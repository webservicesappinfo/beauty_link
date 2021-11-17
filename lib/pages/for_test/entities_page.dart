import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/global.dart';
import 'package:beauty_link/pages/for_test/entity_info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_entity_page.dart';

class EntitiesPage extends StatelessWidget {
  EntityType entityType;
  final Map params;

  EntitiesPage({Key? key, required this.entityType, required this.params})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BaseBloc>(
        create: (context) => BaseBloc(InitState()),
        child: Scaffold(
            appBar: AppBar(title: Text('$entityType list')),
            body: BlocConsumer<BaseBloc, BaseState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return Column(
                  children: [
                    Expanded(child: Builder(
                      builder: (context) {
                        switch (state.runtimeType) {
                          case InitState:
                            _onInitState(context);
                            return _onLoadingState();
                          case LoadingState:
                            return _onLoadingState();
                          case LoadedUsersState:
                            return _onLoadedUsersState(
                                state as LoadedUsersState);
                          case LoadedCompaniesState:
                            return _onLoadedCompaniesState(
                                state as LoadedCompaniesState);
                          default:
                            return _onLoadingState();
                        }
                      },
                    )),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return AddEntityPage(
                                    entityType: entityType, params: params);
                              }),
                            ).then((value) {
                              switch (entityType) {
                                case EntityType.user:
                                  BlocProvider.of<BaseBloc>(context)
                                      .add(UsersPageLoadEvent());
                                  break;
                                case EntityType.company:
                                  BlocProvider.of<BaseBloc>(context).add(
                                      CompaniesPageLoadEvent(
                                          userGuid: params['userGuid'],
                                          owner: params['companyType'] ==
                                              'owner'));
                                  break;
                                case EntityType.skill:
                                  // TODO: Handle this case.
                                  break;
                                case EntityType.offer:
                                  // TODO: Handle this case.
                                  break;
                              }
                            });
                          },
                          child: Text('Add $entityType')),
                    )
                  ],
                );
              },
            )));
  }

  void _onInitState(BuildContext context) {
    switch (entityType) {
      case EntityType.user:
        BlocProvider.of<BaseBloc>(context).add(UsersPageLoadEvent());
        break;
      case EntityType.company:
        BlocProvider.of<BaseBloc>(context).add(CompaniesPageLoadEvent(
            userGuid: params['userGuid'],
            owner: params['companyType'] == 'owner'));
        break;
      case EntityType.skill:
        // TODO: Handle this case.
        break;
      case EntityType.offer:
        // TODO: Handle this case.
        break;
    }
  }

  Widget _onLoadingState() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _onLoadedUsersState(LoadedUsersState state) {
    var stateResult = state.result;
    if (stateResult == null)
      return Center(
        child: Text(
          "Users not found",
          style: TextStyle(fontSize: 20.0),
        ),
      );
    else
      return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: stateResult.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(index.toString()),
              background:
                  Container(color: Colors.green, child: Icon(Icons.check)),
              secondaryBackground:
                  Container(color: Colors.red, child: Icon(Icons.cancel)),
              onDismissed: (direction) {},
              child: ListTile(
                title: Text(stateResult[index].name ?? "<Empty>",
                    style: TextStyle(fontSize: 22)),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EntityInfo(
                        entityType: entityType,
                        params: {
                          'name': stateResult[index].name,
                          'guid': stateResult[index].uidFB
                        }),
                  ),
                ),
              ),
            );
          });
  }

  Widget _onLoadedCompaniesState(LoadedCompaniesState state) {
    var stateResult = state.result;
    if (stateResult == null)
      return Center(
        child: Text(
          "Users not found",
          style: TextStyle(fontSize: 20.0),
        ),
      );
    else
      return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: stateResult.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(stateResult[index].name ?? "<Empty>",
                  style: TextStyle(fontSize: 22)),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EntityInfo(
                      entityType: entityType,
                      params: {
                        'name': stateResult[index].name,
                        'guid': stateResult[index].userGuid
                      }),
                ),
              ),
            );
          });
  }

  void _pop(BaseBloc? b) {
    try {
      b?.add(UsersPageLoadEvent());
    } catch (Ex) {
      var e = Ex.runtimeType;
    }
  }
}
