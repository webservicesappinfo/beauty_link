import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/global.dart';
import 'package:beauty_link/pages/for_test/entities_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EntityInfo extends StatelessWidget {
  final EntityType entityType;
  final Map<String, String?> params;

  const EntityInfo({Key? key, required this.entityType, required this.params})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BaseBloc>(
        create: (context) => BaseBloc(InitState()),
        child: Scaffold(
            appBar: AppBar(title: Text('$entityType Info')),
            body: _onLoaded(context)));
  }

  Widget _onLoaded(BuildContext context) {
    switch (entityType) {
      case EntityType.user:
        return _onUser(context);
      default:
        return Center(
          child: Text(
            "Empty",
            style: TextStyle(fontSize: 20.0),
          ),
        );
    }
  }

  Widget _onUser(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            params['name'] ?? "NoName",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EntitiesPage(
                            entityType: EntityType.company,
                            params: {
                              'userGuid': params['guid'],
                              'companyType': 'owner'
                            }),
                      ));
                },
                child: Text('OwnerCompanies'))),
        SizedBox(
          height: 10,
        ),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EntitiesPage(
                            entityType: EntityType.company,
                            params: {
                              'userGuid': params['guid'],
                              'companyType': 'income'
                            }),
                      ));
                },
                child: Text('IncomeCompanies'))),
      ],
    );
  }
}
