import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/services/company_service.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:beauty_link/services/skill_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../global.dart';

class AddEntityPage extends StatelessWidget {
  String? _name;
  String? _desc;
  String? _masterName;
  String? _skillName;
  EntityType entityType;
  final Map params;
  AddEntityPage({Key? key, required this.entityType, required this.params}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BaseBloc(BaseInitState()),
      child: Scaffold(
        appBar: AppBar(title: Text('Add $entityType')),
        body: BlocConsumer<BaseBloc, BaseState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            switch (state.runtimeType) {
              case BaseInitState:
                return _onInitState(BlocProvider.of<BaseBloc>(context));
              case BaseLoadingState:
                return _onLoadingState();
              case AddEntityPageByUserLoadedState:
                return _onLoadedByUserState(context);
              case AddEntityPageByCompanyLoadedState:
                return _onLoadedByCompanyState(context);
              case AddEntityPageByCanBeContainsCompanyLoadedState:
                return _onLoadedByCanBeContainsCompanyState(context);
              case AddEntityPageBySkillLoadedState:
                return _onLoadedBySkillState(context);
              case AddEntityPageByOfferLoadedState:
                return _onLoadedByOfferState(context);
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
        bloc.add(AddEntityPageLoadByUser());
        break;
      case EntityType.company:
        if (params['companyType'] == 'canBeContains')
          bloc.add(AddEntityPageLoadByCanBeContainsCompany(userGuid: params['guid']));
        else
          bloc.add(AddEntityPageLoadByCompany());
        break;
      case EntityType.skill:
        bloc.add(AddEntityPageLoadBySkill());
        break;
      case EntityType.offer:
        bloc.add(AddEntityPageLoadByOffer());
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
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
      Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(hintText: 'Enter a search term'),
          onChanged: (value) {
            _name = value;
          },
        ),
      ),
      ElevatedButton(onPressed: () => _addUser(context), child: Text('Confirm')),
    ]);
  }

  Widget _onLoadedByCompanyState(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
      Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(hintText: 'Enter a search term'),
          onChanged: (value) {
            _name = value;
          },
        ),
      ),
      ElevatedButton(onPressed: () => _addCompany(context), child: Text('Confirm')),
    ]);
  }

  Widget _onLoadedByCanBeContainsCompanyState(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
      Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(hintText: 'Enter a search term'),
          onChanged: (value) {
            _name = value;
          },
        ),
      ),
      ElevatedButton(onPressed: () => _addCompany(context), child: Text('Confirm')),
    ]);
  }

  Widget _onLoadedBySkillState(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
      Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(hintText: 'Enter name'),
          onChanged: (value) {
            _name = value;
          },
        ),
      ),
      Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(hintText: 'Enter desc'),
          onChanged: (value) {
            _desc = value;
          },
        ),
      ),
      ElevatedButton(onPressed: () => _addSkill(context), child: Text('Confirm')),
    ]);
  }

  Widget _onLoadedByOfferState(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
      Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(hintText: 'Enter name'),
          onChanged: (value) {
            _name = value;
          },
        ),
      ),
      Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(hintText: 'Enter masterName'),
          onChanged: (value) {
            _masterName = value;
          },
        ),
      ),
      Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(hintText: 'Enter skillName'),
          onChanged: (value) {
            _masterName = value;
          },
        ),
      ),
      ElevatedButton(onPressed: () => _addOffer(context), child: Text('Confirm')),
    ]);
  }

  void _addUser(BuildContext context) {
    var uid = Uuid();
    UserService().addUser(AppUser(name: _name ?? "", uidFB: uid.v1())).then((value) => {
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
    CompanyService().addCompany(Company(name: _name, ownerGuid: params['userGuid'])).then((value) => {
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

  void _addSkill(BuildContext context) {
    SkillService().addSkill(Skill(name: _name, desc: _desc)).then((value) => {
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

  void _addOffer(BuildContext context) {
    OfferService()
        .addOffer(Offer(
            name: _name,
            companyGuid: '',
            companyName: '',
            masterGuid: 'masterGuid',
            masterName: _masterName,
            skillGuid: 'skillGuid',
            skillName: _skillName,
            status: 'actived'))
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
