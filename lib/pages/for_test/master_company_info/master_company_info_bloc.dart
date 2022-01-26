import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/pages/for_test/master_offers/master_offers_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MasterCompanyInfoPageBloc extends BaseBlocV2 {
  Company company;
  AppUser master;

  MasterCompanyInfoPageBloc(BaseStateV2 initialState, this.company, this.master) : super(initialState);

  Future getCompanyInfo() async {
    /*await CompanyService().getCompany(company.guid ?? '').then((value) {
      if (value != null) {
        company = value;
      }
    });*/
  }
}

class MasterOfferInfoPageEvent extends BaseEventV2<MasterCompanyInfoPageBloc> {
  MasterOfferInfoPageEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    var bloc = BlocProvider.of<MasterCompanyInfoPageBloc>(context);
    await bloc.getCompanyInfo();
  }
}

class OffersBtnClick extends BaseEventV2<MasterCompanyInfoPageBloc> {
  OffersBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(context,
            MaterialPageRoute(builder: (context) => MasterOffersPage(user: bloc.master, company: bloc.company)))
        .then((value) => MasterOfferInfoPageEvent(context)..invoke());
  }
}

class DelMasterBtnClick extends BaseEventV2<MasterCompanyInfoPageBloc> {
  DelMasterBtnClick(BuildContext context) : super(context);

  Future<void> execute() async {}
}
