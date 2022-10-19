import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/services/company_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddUserCompanyPageBloc extends BaseBloc {
  String? companyName;
  AppUser user;
  AddUserCompanyPageBloc(BaseState initialState, this.user) : super(initialState);

  Future addCompany() async {
    if (companyName?.isEmpty ?? true) throw Exception("userName is null");
    await CompanyService().addCompany(Company(name: companyName, ownerGuid: user.uidFB, ownerName: user.name));
  }

  void onChangedCompanyName(String name) => companyName = name;
}

class AddUserBtnClick extends BaseEvent<AddUserCompanyPageBloc> {
  AddUserBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.addCompany().then((value) => Navigator.pop(context));
  }
}
