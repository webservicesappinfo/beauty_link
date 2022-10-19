import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/pages/old_ui/master_offers/master_offers_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MasterCompanyInfoPageBloc extends BaseBloc {
  Company company;
  AppUser master;

  MasterCompanyInfoPageBloc(BaseState initialState, this.company, this.master) : super(initialState);

  Future getCompanyInfo() async {
    /*await CompanyService().getCompany(company.guid ?? '').then((value) {
      if (value != null) {
        company = value;
      }
    });*/
  }
}

class MasterOfferInfoPageEvent extends BaseEvent<MasterCompanyInfoPageBloc> {
  MasterOfferInfoPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    var bloc = BlocProvider.of<MasterCompanyInfoPageBloc>(context);
    await bloc.getCompanyInfo();
  }
}

class OffersBtnClick extends BaseEvent<MasterCompanyInfoPageBloc> {
  OffersBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(context,
            MaterialPageRoute(builder: (context) => MasterOffersPage(user: bloc.master, company: bloc.company)))
        .then((value) => MasterOfferInfoPageEvent(context)..invoke());
  }
}

class DelMasterBtnClick extends BaseEvent<MasterCompanyInfoPageBloc> {
  DelMasterBtnClick(BuildContext context) : super(context);

  Future<void> execute() async {}
}
