import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/services/company_service.dart';
import 'package:flutter/material.dart';

class AddUserCompanyPageBloc extends BaseBlocV2 {
  String? companyName;
  AppUser user;
  AddUserCompanyPageBloc(BaseStateV2 initialState, this.user) : super(initialState);

  Future addCompany() async {
    if (companyName?.isEmpty ?? true) throw Exception("userName is null");
    await CompanyService().addCompany(Company(name: companyName, ownerGuid: user.uidFB, ownerName: user.name));
  }

  void onChangedCompanyName(String name) => companyName = name;
}

class AddUserBtnClick extends BaseEventV2 {
  AddUserCompanyPageBloc bloc;
  BuildContext context;
  AddUserBtnClick(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    await bloc.addCompany().then((value) => Navigator.pop(context));
  }
}
