//import 'dart:html';

import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/pages/profile_page.dart';
import 'package:beauty_link/pages/test_users_page.dart';
import 'package:beauty_link/services/auth_service.dart';
import 'package:beauty_link/widgets/floating_btn.dart';
import 'package:beauty_link/widgets/home_page_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beauty_link/bloc/base_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BaseBloc>(
        create: (context) => BaseBloc(InitState()),
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('Beauty Link'),
              centerTitle: true,
              actions: <Widget>[HomePagePopup()],
            ),
            body: BlocConsumer<BaseBloc, StateBase>(listener: (context, state) {
              switch (state.runtimeType) {
                case HomePopupBtnClickState:
                  switch ((state as HomePopupBtnClickState).key) {
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
                    case "test":
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TestUsersPage(),
                        ),
                      );
                      break;
                  }
              }
            }, builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      getTextByState(state),
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )
                ],
              );
            }),
            floatingActionButton: FloatingButton()));
  }

  String getTextByState(StateBase state) {
    switch (state.runtimeType) {
      case InitState:
        return "Init";
      case LoadingState:
        return "Loading";
      case LoadedState:
        return "Loaded";
    }
    return "No state";
  }
}
