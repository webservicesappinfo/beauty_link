import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/pages/main_page_bloc.dart';
import 'package:beauty_link/services/main_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class AdminViewBloc extends BaseBloc {
  AppUser? admin;
  AppUser? selectedCanBeMaster;
  AppUser? selectedMasterForOffer;
  Offer? selectedOfferForOrder;
  String? newOfferName;
  String? newOrderName;
  Company? curCompany;
  String? newCompanyName;
  String? listName;
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

  Future<bool> addMaster() async {
    var reply = await MainService().addMaster(selectedCanBeMaster, curCompany);
    return reply;
  }

  Future<bool> delMaster(AppUser master) async {
    var reply = await MainService().delMaster(master, curCompany);
    return reply;
  }

  Future<bool> addOffer() async {
    if (newOfferName == null || selectedMasterForOffer == null || curCompany == null) return false;
    var skillGuid = Uuid().v1().toString();
    var reply = await MainService().addOffer(Offer(
        name: newOfferName,
        companyGuid: curCompany?.guid,
        companyName: curCompany?.name,
        masterGuid: selectedMasterForOffer?.uidFB,
        masterName: selectedMasterForOffer?.name,
        skillGuid: skillGuid,
        skillName: null,
        status: null));
    return reply;
  }

  Future<bool> delOffer(Offer offer) async => await MainService().delOffer(offer);

  Future<bool> addOrder() async {
    if (newOrderName == null || selectedOfferForOrder == null) return false;
    var skillGuid = Uuid().v1().toString();
    var reply = await MainService().addOrder(Order(
        name: newOrderName,
        masterGuid: selectedOfferForOrder?.masterGuid,
        masterName: selectedOfferForOrder?.masterName,
        skillGuid: skillGuid,
        skillName: "",
        status: null));
    return reply;
  }

  Future<bool> delOrder(Order order) async => await MainService().delOrder(order);

  Future getCompanyInfo() async {}
}

class LoadAdminDataEvent extends BaseEvent<AdminViewBloc> {
  LoadAdminDataEvent(super.context) {
    super.kind = "adminView";
  }

  @override
  Future<void> execute() async {
    bloc.admin = BlocProvider.of<MainPageBloc>(context).curUser;
    if ((bloc.admin?.companies?.length ?? 0) > 0) {
      bloc.curCompany = bloc.admin?.companies?[0];
      bloc.getCompanyInfo();
    }
  }
}

class AddCompany extends BaseEvent<AdminViewBloc> {
  AddCompany(super.context) {
    super.kind = "adminView";
  }

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

class DelCompany extends BaseEvent<AdminViewBloc> {
  DelCompany(super.context) {
    super.kind = "adminView";
  }

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
  CurrentCompanyChanged(super.context, this.company) {
    super.kind = "adminView";
  }

  @override
  Future<void> execute() async {
    await bloc.getCompanyInfo().then((value) {
      bloc.curCompany = company;
      Navigator.pop(context);
    });
  }
}

class SelectedCanBeMasterChanged extends BaseEvent<AdminViewBloc> {
  AppUser? selectedMaster;
  SelectedCanBeMasterChanged(super.context, this.selectedMaster) {
    super.kind = "addMasterDlg";
  }
  @override
  Future<void> execute() async {
    bloc.selectedCanBeMaster = selectedMaster;
  }
}

class AddMaster extends BaseEvent<AdminViewBloc> {
  AddMaster(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    var result = await bloc.addMaster();
    if (result) {
      var mainBlock = BlocProvider.of<MainPageBloc>(context);
      await mainBlock.getUserData();
      LoadAdminDataEvent(context).invoke();
    }
    Navigator.pop(context);
  }
}

class DelMaster extends BaseEvent<AdminViewBloc> {
  AppUser master;
  DelMaster(BuildContext context, this.master) : super(context);

  @override
  Future<void> execute() async {
    var result = await bloc.delMaster(master);
    if (result) {
      var mainBlock = BlocProvider.of<MainPageBloc>(context);
      await mainBlock.getUserData();
      LoadAdminDataEvent(context).invoke();
    }
    Navigator.pop(context);
  }
}

class SelectedMasterForOfferChanged extends BaseEvent<AdminViewBloc> {
  AppUser? selectedMaster;
  SelectedMasterForOfferChanged(super.context, this.selectedMaster) {
    super.kind = "addOfferDlg";
  }
  @override
  Future<void> execute() async => bloc.selectedMasterForOffer = selectedMaster;
}

class SelectedOfferForOrderChanged extends BaseEvent<AdminViewBloc> {
  Offer? selectedOffer;
  SelectedOfferForOrderChanged(super.context, this.selectedOffer) {
    super.kind = "addOrderDlg";
  }
  @override
  Future<void> execute() async => bloc.selectedOfferForOrder = selectedOffer;
}

class ListTypeChanged extends BaseEvent<AdminViewBloc> {
  String listName;
  ListTypeChanged(super.context, this.listName) {
    //super.kind = "adminView";
  }
  @override
  Future<void> execute() async => bloc.listName = listName;
}

class AddOffer extends BaseEvent<AdminViewBloc> {
  AddOffer(super.context);

  @override
  Future<void> execute() async {
    var result = await bloc.addOffer();
    if (result) {
      var mainBlock = BlocProvider.of<MainPageBloc>(context);
      await mainBlock.getUserData();
      LoadAdminDataEvent(context).invoke();
    }
    Navigator.pop(context);
  }
}

class DelOffer extends BaseEvent<AdminViewBloc> {
  Offer offer;
  DelOffer(super.context, this.offer);

  @override
  Future<void> execute() async {
    var result = await bloc.delOffer(offer);
    if (result) {
      var mainBlock = BlocProvider.of<MainPageBloc>(context);
      await mainBlock.getUserData();
      LoadAdminDataEvent(context).invoke();
    }
    Navigator.pop(context);
  }
}

class AddOrder extends BaseEvent<AdminViewBloc> {
  AddOrder(super.context);

  @override
  Future<void> execute() async {
    var result = await bloc.addOrder();
    if (result) {
      var mainBlock = BlocProvider.of<MainPageBloc>(context);
      await mainBlock.getUserData();
      LoadAdminDataEvent(context).invoke();
    }
    Navigator.pop(context);
  }
}

class DelOrder extends BaseEvent<AdminViewBloc> {
  Order order;
  DelOrder(super.context, this.order);

  @override
  Future<void> execute() async {
    var result = await bloc.delOrder(order);
    if (result) {
      var mainBlock = BlocProvider.of<MainPageBloc>(context);
      await mainBlock.getUserData();
      LoadAdminDataEvent(context).invoke();
    }
    Navigator.pop(context);
  }
}
