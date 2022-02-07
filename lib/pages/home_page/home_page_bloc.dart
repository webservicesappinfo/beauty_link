import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/pages/profile_page.dart';
import 'package:beauty_link/pages/test3_page.dart';
import 'package:beauty_link/pages/users_page/users_page.dart';
import 'package:beauty_link/services/auth_service.dart';
import 'package:flutter/material.dart';

class HomePageBloc extends BaseBloc {
  HomePageBloc(BaseState initialState) : super(initialState);
}

class HomePageLoadEvent extends BaseEvent<HomePageBloc> {
  HomePageLoadEvent(BuildContext context) : super(context);

  @override
  Future<void> execute() async {
    //await bloc.getCompanyInfo();
  }
}

class PopupChoiceEvent extends BaseEvent<HomePageBloc> {
  String choice;
  PopupChoiceEvent(BuildContext context, this.choice) : super(context);

  @override
  Future<void> execute() async {
    switch (choice) {
      case "profile":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfilePage(),
          ),
        );
        break;
      case "signOut":
        AuthService().signOut();
        break;
      case "users":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UsersPage(),
          ),
        );
        break;
      case "test3":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DropDownPage(),
          ),
        );
        break;
    }
  }  
}