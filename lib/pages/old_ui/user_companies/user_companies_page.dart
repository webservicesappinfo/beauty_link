import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/pages/old_ui/user_companies/user_companies_page_bloc.dart';
import 'package:beauty_link/widgets/custom_button.dart';
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
            body: BlocConsumer<UserCompaniesPageBloc, BaseState>(listener: (context, state) {
              if (state is InitState) {}
            }, builder: (context, state) {
              return Builder(builder: (context) {
                switch (state.runtimeType) {
                  case InitState:
                    LoadUserCompaniesPageEvent(context)..invoke();
                    return LoadingWidget();
                  case BeginEventState:
                    return LoadingWidget();
                  case EndEventState:
                    switch ((state as EndEventState).event.runtimeType) {
                      case LoadUserCompaniesPageEvent:
                        return _onUserCompaniesPageLoadedState(context);
                      default:
                        return Text('empty state');
                    }
                  default:
                    return Text('empty state');
                }
              });
            })));
  }

  Widget _onUserCompaniesPageLoadedState(BuildContext context) {
    var bloc = BlocProvider.of<UserCompaniesPageBloc>(context);
    if (bloc.companyType == 'owner')
      return Column(children: [
        Expanded(
            child: EntityListWidget(
                entities: bloc.companies,
                onTap: (EntityBase entity) => CompanyTap(context, entity as Company)..invoke())),
        SizedBox(height: 10),
        CustomButton(text: 'Add company', clickEvent: () => AddCompanyBtnClick(context)..invoke())
      ]);
    else
      return EntityListWidget(
          entities: bloc.companies, onTap: (EntityBase entity) => CompanyTap(context, entity as Company)..invoke());
  }
}
