import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/global.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/pages/for_test/entities_page.dart';
import 'package:beauty_link/services/company_service.dart';
import 'package:beauty_link/services/skill_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EntityInfo extends StatelessWidget {
  final EntityType entityType;
  final Map<String, String?> params;

  const EntityInfo({Key? key, required this.entityType, required this.params}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BaseBloc>(
        create: (context) => BaseBloc(BaseInitState()),
        child: Scaffold(appBar: AppBar(title: Text('$entityType Info')), body: _onLoaded(context)));
  }

  Widget _onLoaded(BuildContext context) {
    return Column(
      children: [
        Center(child: Builder(builder: (context) {
          switch (entityType) {
            case EntityType.user:
              return _onUser(context);
            case EntityType.company:
              return _onCompany(context);
            case EntityType.skill:
              return _onSkill(context);
            default:
              return Center(
                child: Text(
                  "Empty",
                  style: TextStyle(fontSize: 20.0),
                ),
              );
          }
        })),
      ],
    );
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
                            params: {'userGuid': params['guid'], 'companyType': 'owner'}),
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
                            params: {'userGuid': params['guid'], 'companyType': 'contains'}),
                      ));
                },
                child: Text('ContainsCompanies'))),
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
                            params: {'userGuid': params['guid'], 'companyType': 'canBeContains'}),
                      ));
                },
                child: Text('CanBeContainsCompanies'))),
        ElevatedButton(onPressed: () => _delEntity(context), child: Text('Remove $entityType')),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EntitiesPage(entityType: EntityType.offer, params: {
                      'userGuid': params['guid'],
                    }),
                  ));
            },
            child: Text('Offers')),
      ],
    );
  }

  Widget _onCompany(BuildContext context) {
    switch (params['companyType']) {
      case 'owner':
        return Column(
          children: [
            Text("Type: Owner"),
            Text("Name: ${params['name'] ?? "NoName"}"),
            ElevatedButton(onPressed: () => _delEntity(context), child: Text('Remove $entityType'))
          ],
        );
      case 'contains':
        return Column(
          children: [
            Text("Type: Contains"),
            Text("Name: ${params['name'] ?? "NoName"}"),
            ElevatedButton(onPressed: () => _delEntity(context), child: Text('Remove $entityType'))
          ],
        );
      case 'canBeContains':
        return Column(
          children: [
            Text("Type: Can be contains"),
            Text("Name: ${params['name'] ?? "NoName"}"),
            ElevatedButton(
                onPressed: () => CompanyService()
                    .joinToCompany(params['ownerGuid'], params['guid'], params['name'])
                    .then((value) => Navigator.pop(context)),
                child: Text('Join!'))
          ],
        );
      default:
        return Text('Default');
    }
  }

  Widget _onSkill(BuildContext context) {
    return Column(children: [
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
        child: Text(
          params['desc'] ?? "NoDesc",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      ElevatedButton(onPressed: () => _delEntity(context), child: Text('Del skill')),
    ]);
  }

  void _delEntity(BuildContext context) {
    switch (entityType) {
      case EntityType.user:
        UserService().delUser(AppUser(uidFB: params['guid'], name: '')).then((value) {
          Navigator.pop(context);
        });
        break;
      case EntityType.company:
        CompanyService().delCompany(params['guid']).then((value) => Navigator.pop(context));
        break;
      case EntityType.skill:
        SkillService().delSkill(params['guid']).then((value) => Navigator.pop(context));
        break;
      case EntityType.offer:
        // TODO: Handle this case.
        break;
    }
  }
}
