import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/pages/for_test/add_user_company/add_user_company_page.dart';
import 'package:beauty_link/services/company_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCompaniesPageBloc extends BaseBlocV2 {
  AppUser user;
  String companyType;
  List<Company> companies = [];
  UserCompaniesPageBloc(BaseStateV2 initialState, this.user, this.companyType) : super(initialState);

  Future getCompanies() async {
    if (user.uidFB?.isEmpty ?? true) throw Exception("user is null");
    if (companyType.isEmpty) throw Exception("companyType is null");
    await CompanyService().getCompanies(user.uidFB ?? '', companyType).then((value) => companies = value);
  }
}

class LoadUserCompaniesPageEvent extends BaseEventV2 {
  UserCompaniesPageBloc bloc;
  LoadUserCompaniesPageEvent(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getCompanies();
  }
}

class AddCompanyBtnClick extends BaseEventV2 {
  UserCompaniesPageBloc bloc;
  BuildContext context;

  AddCompanyBtnClick(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddUserCompanyPage(user: bloc.user),
      ),
    ).then((value) => bloc.add(LoadUserCompaniesPageEvent(bloc)));
  }
}
