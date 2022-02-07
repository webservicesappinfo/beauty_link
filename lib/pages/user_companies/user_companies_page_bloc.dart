import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/pages/add_user_company/add_user_company_page.dart';
import 'package:beauty_link/pages/company_info/company_info_page.dart';
import 'package:beauty_link/services/company_service.dart';
import 'package:flutter/material.dart';

class UserCompaniesPageBloc extends BaseBloc {
  AppUser user;
  String companyType;
  List<Company> companies = [];
  UserCompaniesPageBloc(BaseState initialState, this.user, this.companyType) : super(initialState);

  Future getCompanies() async {
    if (user.uidFB?.isEmpty ?? true) throw Exception("user is null");
    if (companyType.isEmpty) throw Exception("companyType is null");
    await CompanyService().getCompanies(user.uidFB ?? '', companyType).then((value) => companies = value);
  }
}

class LoadUserCompaniesPageEvent extends BaseEvent<UserCompaniesPageBloc> {
  LoadUserCompaniesPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getCompanies();
  }
}

class AddCompanyBtnClick extends BaseEvent<UserCompaniesPageBloc> {
  AddCompanyBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddUserCompanyPage(user: bloc.user),
      ),
    ).then((value) => LoadUserCompaniesPageEvent(context)..invoke());
  }
}

class CompanyTap extends BaseEvent<UserCompaniesPageBloc> {
  Company company;

  CompanyTap(BuildContext context, this.company) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CompanyInfoPage(company: company),
      ),
    ).then((value) => LoadUserCompaniesPageEvent(context)..invoke());
  }
}
