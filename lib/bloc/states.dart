import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/services/company_service.dart';
import 'package:beauty_link/services/offer_service.dart';
import 'package:beauty_link/services/skill_service.dart';
import 'package:beauty_link/services/user_service.dart';
import 'package:flutter/material.dart';

import 'events.dart';

abstract class BaseState<T> {
  T? result;
  Future execute(BaseBloc bloc);
}

class BaseInitState extends BaseState {
  @override
  Future execute(BaseBloc bloc) async {}
}

class ExceptionState extends BaseState {
  EventExceptionBase? exception;
  ExceptionState(this.exception) : assert(exception != null);
  @override
  Future execute(BaseBloc bloc) async {}
}

class BaseLoadingState extends BaseState {
  @override
  Future execute(BaseBloc bloc) async {}
}

class LoadedState extends BaseState {
  @override
  Future execute(BaseBloc bloc) async {
    await Future.delayed(Duration(seconds: 2));
  }
}

class HomePopupBtnClickState extends BaseState {
  final String key;
  HomePopupBtnClickState(this.key);
  @override
  Future execute(BaseBloc bloc) async {
    // TODO: implement execute
  }
}

class LoadedUsersState extends BaseState<List<AppUser>> {
  @override
  Future execute(BaseBloc bloc) async {
    result = await UserService().getUsers();
  }
}

class AddEntityPageByUserLoadedState extends BaseState<void> {
  @override
  Future execute(BaseBloc bloc) async {
    //result = await UserService().getUsers();
  }
}

class LoadedUserInfoState extends BaseState<List<AppUser>> {
  @override
  Future execute(BaseBloc bloc) async {
    //result = await UserService().get();
  }
}

class AddEntityPageByCompanyLoadedState extends BaseState<void> {
  @override
  Future execute(BaseBloc bloc) async {
    //result = await UserService().getUsers();
  }
}

class AddEntityPageByCanBeContainsCompanyLoadedState extends BaseState<List<Company>> {
  String userGuid;
  AddEntityPageByCanBeContainsCompanyLoadedState({required this.userGuid}) : super();

  @override
  Future execute(BaseBloc bloc) async {
    result = await CompanyService().getCompanies(userGuid, 'canBeContains');
  }
}

class AddEntityPageBySkillLoadedState extends BaseState<void> {
  @override
  Future execute(BaseBloc bloc) async {
    //result = await UserService().getUsers();
  }
}

class LoadedCompaniesState extends BaseState<List<Company>> {
  String userGuid;
  String type;
  LoadedCompaniesState({required this.userGuid, required this.type}) : super();
  @override
  Future execute(BaseBloc bloc) async {
    result = await CompanyService().getCompanies(userGuid, type);
  }
}

class LoadedSkillsState extends BaseState<List<Skill>> {
  String? userGuid;
  LoadedSkillsState({this.userGuid}) : super();
  @override
  Future execute(BaseBloc bloc) async {
    result = await SkillService().getSkills(userGuid);
  }
}

class LoadedOffersState extends BaseState<List<Offer>> {
  String? userGuid;
  LoadedOffersState({this.userGuid}) : super();
  @override
  Future execute(BaseBloc bloc) async {
    result = await OfferService().getOffersByMaster(userGuid, null, true);
  }
}

class AddEntityPageByOfferLoadedState extends BaseState<void> {
  @override
  Future execute(BaseBloc bloc) async {
    //result = await UserService().getUsers();
  }
}
