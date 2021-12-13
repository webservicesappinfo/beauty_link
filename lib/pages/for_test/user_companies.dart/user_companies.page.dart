import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/pages/for_test/user_companies.dart/user_companies_page_bloc.dart';
import 'package:beauty_link/widgets/entity_list_widget.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCompaniesPage extends StatelessWidget {
  final AppUser user;
  final String companyType;
  const UserCompaniesPage({Key? key, required this.companyType, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => UserCompaniesPageBloc(InitState(), user, companyType),
        child: Scaffold(
            appBar: AppBar(title: Text('$companyType companies')),
            body: BlocConsumer<UserCompaniesPageBloc, BaseStateV2>(listener: (context, state) {
              if (state is InitState) {}
            }, builder: (context, state) {
              return Column(children: [
                Expanded(child: Builder(builder: (context) {
                  var bloc = BlocProvider.of<UserCompaniesPageBloc>(context);
                  switch (state.runtimeType) {
                    case InitState:
                      bloc.add(LoadUserCompaniesPageEvent(bloc));
                      return LoadingWidget();
                    case BeginEventState:
                      return LoadingWidget();
                    case EndEventState:
                      switch ((state as EndEventState).event.runtimeType) {
                        case LoadUserCompaniesPageEvent:
                          return _onUserCompaniesPageLoadedState(bloc.companies);
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

  Widget _onUserCompaniesPageLoadedState(List<Company> companies) {
    return EntityListWidget(entities: companies, onTap: _onTap);
  }

  dynamic _onTap(BuildContext context, EntityBase entity) {
    /*var user = entity as AppUser;
    var bloc = BlocProvider.of<UserCompaniesPageBloc>(context);
    bloc.add(TapUserEvent(context, user));*/
  }
}
