import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/pages/QR/qr_page.dart';
import 'package:beauty_link/pages/old_ui/master_company_info/master_company_info_page.dart';
import 'package:beauty_link/pages/old_ui/master_offer_info/map_picker_page.dart';
import 'package:beauty_link/services/company_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:beauty_link/widgets/custom_dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CompanyInfoPageBloc extends BaseBloc {
  Company company;
  List<AppUser> canJoinUsers = [];
  List<AppUser> selectedUsers = [];

  CompanyInfoPageBloc(BaseState initialState, this.company) : super(initialState);

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

class CompanyInfoPageLoadEvent extends BaseEvent<CompanyInfoPageBloc> {
  CompanyInfoPageLoadEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.getCompanyInfo();
  }
}

class AddMasterByQREvent extends BaseEvent<CompanyInfoPageBloc> {
  AddMasterByQREvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QRPage(),
      ),
    ).then((value) => CompanyInfoPageLoadEvent(context)..invoke());
  }
}

class AddMastersFromList extends BaseEvent<CompanyInfoPageBloc> {
  AddMastersFromList(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    for (var user in bloc.selectedUsers)
      await CompanyService().joinToCompany(user.uidFB, user.name, bloc.company.guid, bloc.company.name);
    CompanyInfoPageLoadEvent(context)..invoke();
  }
}

class SetLocationBtnClick extends BaseEvent<CompanyInfoPageBloc> {
  SetLocationBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MapPickerPage(defLocation: bloc.company.location)),
    ).then((value) {
      bloc.company.location = value != null ? (value as List<LatLng?>)[0] : null;
      if (bloc.company.location != null)
        setLocation();
      else
        CompanyInfoPageLoadEvent(context)..invoke();
    });
  }

  Future<void> setLocation() async {
    await CompanyService().setCompanyLocation(bloc.company);
    CompanyInfoPageLoadEvent(context)..invoke();
  }
}

class OnMasterTab extends BaseEvent<CompanyInfoPageBloc> {
  final AppUser master;
  OnMasterTab(BuildContext context, this.master) : super(context);

  @override
  Future<void> execute() async {
    Navigator.push(context,
            MaterialPageRoute(builder: (context) => MasterCompanyInfoPage(company: bloc.company, master: master)))
        .then((value) => CompanyInfoPageLoadEvent(context)..invoke());
  }
}

class DelCompanyBtnClick extends BaseEvent<CompanyInfoPageBloc> {
  DelCompanyBtnClick(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    await bloc.delCompany().then((value) => Navigator.pop(context));
  }
}
