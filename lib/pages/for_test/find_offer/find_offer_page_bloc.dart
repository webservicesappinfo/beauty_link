import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/pages/for_test/fit_offers/fit_offers_page.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindOfferPageBloc extends BaseBlocV2 {
  AppUser client;
  AppUser? selectedMaster;
  List<AppUser> masters = [];
  String? masterName;
  FindOfferPageBloc(BaseStateV2 initialState, this.client) : super(initialState);

  Future getMasters() async {
    await UserService().getUsers().then((value) {
      masters = value.where((element) => element.uidFB != client.uidFB).toList();
      masters.insert(0, AppUser(name: 'all'));
      if (masters.length > 0) selectedMaster = masters[0];
    });
  }

  void onMasterChanged(EntityBase? master) => selectedMaster = master as AppUser;
}

class LoadFindOfferPageEvent extends BaseEventV2 {
  FindOfferPageBloc bloc;
  LoadFindOfferPageEvent(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getMasters();
  }
}

class FindBtnClickEvent extends BaseEventV2 {
  FindOfferPageBloc bloc;
  BuildContext context;
  FindBtnClickEvent(this.bloc, this.context) : super();

  @override
  Future<void> execute() async {
    if (bloc.selectedMaster != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FitOffersPage(master: bloc.selectedMaster ?? AppUser(), client: bloc.client),
        ),
      ).then((value) => bloc.add(LoadFindOfferPageEvent(bloc)));
    }
  }
}
