//import 'dart:html';

import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/pages/profile_page.dart';
import 'package:beauty_link/pages/test3_page.dart';
import 'package:beauty_link/pages/users_page/users_page.dart';
import 'package:beauty_link/services/auth_service.dart';
import 'package:beauty_link/widgets/custom_popup.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageBloc>(
        create: (context) => HomePageBloc(InitState()),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(title: Text('Beauty Link'), centerTitle: true, actions: <Widget>[
            CustomPopup(["profile", "signOut", "users", "test3"], (String choice) {
              //PopupChoiceEvent(context, choice).invoke();
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
            })
          ]),
          body: BlocConsumer<HomePageBloc, BaseState>(
              listener: (context, state) {},
              builder: (context, state) {
                switch (state.runtimeType) {
                  case InitState:
                    HomePageLoadEvent(context).invoke();
                    return LoadingWidget();
                  case BeginEventState:
                    return LoadingWidget();
                  case EndEventState:
                    switch ((state as EndEventState).event.runtimeType) {
                      case HomePageLoadEvent:
                        return Text("Loaded");
                      default:
                        return Text('empty state');
                    }
                  default:
                    return Text('empty state');
                }
              }),
        ));
  }
}
