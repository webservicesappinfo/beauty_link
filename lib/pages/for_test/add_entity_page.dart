import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/services/company_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../global.dart';

class AddEntityPage extends StatelessWidget {
  String? _name;
  EntityType entityType;
  final Map params;
  AddEntityPage({Key? key, required this.entityType, required this.params})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BaseBloc(InitState()),
      child: Scaffold(
        appBar: AppBar(title: Text('Add $entityType')),
        body: BlocConsumer<BaseBloc, BaseState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            switch (state.runtimeType) {
              case InitState:
                return _onInitState(BlocProvider.of<BaseBloc>(context));
              case LoadingState:
                return _onLoadingState();
              case AddEntityPageByUserLoadedState:
                return _onLoadedByUserState(context);
              case AddEntityPageByCompanyLoadedState:
                return _onLoadedByCompanyState(context);
              default:
                return _onLoadingState();
            }
          },
        ),
      ),
    );
  }

  Widget _onInitState(BaseBloc bloc) {
    switch (entityType) {
      case EntityType.user:
        bloc.add(AddEntityPageByUserLoad());
        break;
      case EntityType.company:
        bloc.add(AddEntityPageByCompanyLoad());
        break;
      case EntityType.skill:
        // TODO: Handle this case.
        break;
      case EntityType.offer:
        // TODO: Handle this case.
        break;
    }
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _onLoadingState() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _onLoadedByUserState(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: 'Enter a search term'),
              onChanged: (value) {
                _name = value;
              },
            ),
          ),
          ElevatedButton(
              onPressed: () => _addUser(context), child: Text('Confirm')),
        ]);
  }

  Widget _onLoadedByCompanyState(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: 'Enter a search term'),
              onChanged: (value) {
                _name = value;
              },
            ),
          ),
          ElevatedButton(
              onPressed: () => _addCompany(context), child: Text('Confirm')),
        ]);
  }

  void _addUser(BuildContext context) {
    var uid = Uuid();
    UserService()
        .addUser(AppUser(name: _name, uidFB: uid.v1()))
        .then((value) => {
              if (value)
                Navigator.pop(context)
              else
                AlertDialog(
                  title: Text("Error"),
                  content: Text("Error"),
                  actions: [
                    ElevatedButton(
                        child: Text("Ok"),
                        onPressed: () {
                          Navigator.of(context).pop(); // Return value
                        }),
                  ],
                )
            });
  }

  void _addCompany(BuildContext context) {
    CompanyService()
        .addCompany(Company(name: _name, userGuid: params['userGuid']))
        .then((value) => {
              if (value)
                Navigator.pop(context)
              else
                AlertDialog(
                  title: Text("Error"),
                  content: Text("Error"),
                  actions: [
                    ElevatedButton(
                        child: Text("Ok"),
                        onPressed: () {
                          Navigator.of(context).pop(); // Return value
                        }),
                  ],
                )
            });
  }
}
