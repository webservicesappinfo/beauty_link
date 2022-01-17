import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/services/company_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:beauty_link/widgets/custom_dropdownfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyInfoPageBloc extends BaseBlocV2 {
  Company company;
  List<AppUser> canJoinUsers = [];
  List<AppUser> selectedUsers = [];

  CompanyInfoPageBloc(BaseStateV2 initialState, this.company) : super(initialState);

  Future getCompanyInfo() async {
    await CompanyService().getCompany(company.guid ?? '').then((value) {
      if (value != null) {
        company = value;
      }
    });
    await UserService().getFitForCompanyUsers(company.guid ?? '', false).then((value) => canJoinUsers = value);
  }

  Future delCompany() async {
    await CompanyService().delCompany(company.guid);
  }

  void onSelectMasterChanged(List<DropDownFieldItem> items) =>
      selectedUsers = items.map((e) => e.entity as AppUser).toList();
}

class CompanyInfoPageLoadEvent extends BaseEventV2 {
  CompanyInfoPageBloc bloc;
  CompanyInfoPageLoadEvent(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getCompanyInfo();
  }
}

class AddMasterByQREvent extends BaseEventV2 {
  BuildContext context;

  AddMasterByQREvent(this.context) : super();

  @override
  Future<void> execute() async {
    var bloc = BlocProvider.of<CompanyInfoPageBloc>(context);
    /*Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddUserPage(),
      ),
    ).then((value) => bloc.add(CompanyInfoPageLoadEvent(bloc)));*/
  }
}

class AddMastersFromList extends BaseEventV2 {
  BuildContext context;

  AddMastersFromList(this.context) : super();

  @override
  Future<void> execute() async {
    var bloc = BlocProvider.of<CompanyInfoPageBloc>(context);
    for (var user in bloc.selectedUsers)
      await CompanyService().joinToCompany(user.uidFB, user.name, bloc.company.guid, bloc.company.name);
    bloc.add(CompanyInfoPageLoadEvent(bloc));
  }
}
