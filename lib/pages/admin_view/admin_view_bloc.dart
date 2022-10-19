import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/pages/main_page_bloc.dart';
import 'package:beauty_link/services/main_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class AdminViewBloc extends BaseBloc {
  AppUser? admin;
  Company? curCompany;
  String? newCompanyName;
  AdminViewBloc(BaseState initialState) : super(initialState);

  Future<bool> addCompany() async {
    var reply = await MainService().addCompany(admin,
        Company(guid: Uuid().v1().toString(), name: newCompanyName, ownerGuid: admin?.uidFB, ownerName: admin?.name));
    return reply;
  }

  Future<bool> delCompany() async {
    var reply = await MainService().delCompany(curCompany);
    return reply;
  }

  Future getCompanyInfo() async {}
}

class LoadAdminDataEvent extends BaseEvent<AdminViewBloc> {
  LoadAdminDataEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    bloc.admin = BlocProvider.of<MainPageBloc>(context).curUser;
    if ((bloc.admin?.companies?.length ?? 0) > 0) {
      bloc.curCompany = bloc.admin?.companies?[0];
      bloc.getCompanyInfo();
    }
  }
}

class AddCompanyBtnClick extends BaseEvent<AdminViewBloc> {
  AddCompanyBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    var result = await bloc.addCompany();
    if (result) {
      var mainBlock = BlocProvider.of<MainPageBloc>(context);
      await mainBlock.getUserData();
      LoadAdminDataEvent(context).invoke();
    }
    var count = 0;
    Navigator.popUntil(context, (route) => count++ == 2);
  }
}

class DelCompanyBtnClick extends BaseEvent<AdminViewBloc> {
  DelCompanyBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    var result = await bloc.delCompany();
    if (result) {
      var mainBlock = BlocProvider.of<MainPageBloc>(context);
      await mainBlock.getUserData();
      LoadAdminDataEvent(context).invoke();
    }
    Navigator.pop(context);
  }
}

class CurrentCompanyChanged extends BaseEvent<AdminViewBloc> {
  Company company;
  CurrentCompanyChanged(BuildContext context, this.company) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getCompanyInfo().then((value) {
      bloc.curCompany = company;
      Navigator.pop(context);
    });
  }
}
