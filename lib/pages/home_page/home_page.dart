//import 'dart:html';

import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/pages/profile_page.dart';
import 'package:beauty_link/pages/drop_down_page.dart';
import 'package:beauty_link/pages/old_ui/users_page/entity_list_expanded_page.dart';
import 'package:beauty_link/pages/old_ui/users_page/users_page.dart';
import 'package:beauty_link/services/auth_service.dart';
import 'package:beauty_link/widgets/custom_popup.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../main_page.dart';
import '../scrolling_header.dart';
import 'home_page_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageBloc>(
        create: (context) => HomePageBloc(InitState()),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(title: Text('Beauty Link'), centerTitle: true, actions: <Widget>[
            CustomPopup(["profile", "signOut", "users", "dropDownPage", "EntityListExpanded", "ScrollingHeader", "SliderPage"],
                (String choice) {
              //PopupChoiceEvent(context, choice).invoke();
              switch (choice) {
                case "profile":
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                  break;
                case "signOut":
                  AuthService().signOut();
                  break;
                case "users":
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UsersPage()));
                  break;
                case "dropDownPage":
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DropDownPage()));
                  break;
                case "EntityListExpanded":
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EntityLitsExpandedPage()));
                  break;
                case "ScrollingHeader":
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ScrollingHeaderExample()));
                  break;
                case "SliderPage":
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
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
