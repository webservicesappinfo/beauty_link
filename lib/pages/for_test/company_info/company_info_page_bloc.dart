import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/services/company_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyInfoPageBloc extends BaseBlocV2 {
  Company company;

  CompanyInfoPageBloc(BaseStateV2 initialState, this.company) : super(initialState);

  Future getCompanyInfo() async {
    await CompanyService().getCompany(company.guid ?? '').then((value) {
      if (value != null) {
        company = value;
      }
    });
  }

  Future delCompany() async {
    await CompanyService().delCompany(company.guid);
  }
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
