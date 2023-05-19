import 'dart:developer';

import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/admin_view/admin_view.dart';
import 'package:beauty_link/pages/client_view/client_view.dart';
import 'package:beauty_link/pages/master_view/master_view.dart';
import 'package:beauty_link/pages/admin_view/admin_view_bloc.dart';
import 'package:beauty_link/pages/main_page/main_page_bloc.dart';
import 'package:beauty_link/pages/app_bar_context_menu_pages/profile_page.dart';
import 'package:beauty_link/pages/app_bar_context_menu_pages/scrolling_header.dart';
import 'package:beauty_link/services/auth_service.dart';
import 'package:beauty_link/widgets/custom_popup.dart';
import 'package:beauty_link/widgets/custom_text_field.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_indicator/page_indicator.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<MainPageBloc>(create: (BuildContext context) => MainPageBloc(InitState())),
          BlocProvider<AdminViewBloc>(create: (BuildContext context) => AdminViewBloc(InitState()))
        ],
        child: BlocBuilder<MainPageBloc, BaseState>(builder: (context, state) {
          return Builder(builder: (context) {
            if (state.its<InitState, BaseEvent>()) {
              LoadMainPageEvent(context).invoke();
              return LoadingWidget();
            } else if (state.its<BeginEventState, BaseEvent>() ||
                state.its<BeginEventState, ChangeUserEvent>() ||
                state.its<BeginEventState, LoadMainPageEvent>())
              return LoadingWidget();
            else if (state.its<EndEventState, LoadMainPageEvent>() || state.its<EndEventState, ChangeUserEvent>())
              return _onLoadMainPage(context);
            else {
              log("mainPage empty state: ${state.runtimeType} event: ${state.event.runtimeType}");
              return Text('empty state');
            }
          });
        }));
  }

  Widget _onLoadMainPage(BuildContext context) {
    final PageController controller = PageController();
    var bloc = BlocProvider.of<MainPageBloc>(context);
    return Scaffold(
        appBar: AppBar(
            title: Text('Beauty Link'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            )),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(16.0), bottomRight: Radius.circular(16.0)),
                      color: Colors.pink),
                  height: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 3.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(bottomLeft: Radius.circular(16.0), bottomRight: Radius.circular(16.0)),
                          color: Colors.white),
                      height: 1.0,
                    ),
                  ),
                )),
            backgroundColor: Colors.white,
            actions: <Widget>[
              Row(
                children: [
                  DropdownButton<AppUser>(
                      items: _getUsersList(bloc.users),
                      onChanged: (value) => ChangeUserEvent(context, value).invoke(),
                      hint: Text('${bloc.curUser?.name ?? 'Add user'}', style: TextStyle(color: Colors.black))),
                  IconButton(
                    onPressed: () => _addUserDlg(context),
                    icon: Icon(Icons.add),
                    iconSize: 20,
                    splashRadius: 15,
                  ),
                  IconButton(
                    onPressed: () => DelUserEvent(context, bloc.curUser).invoke(),
                    icon: Icon(Icons.remove_circle),
                    iconSize: 20,
                    splashRadius: 15,
                  ),
                  CustomPopup(["profile", "signOut", "users", "EntityListExpanded", "ScrollingHeader"],
                      (String choice) {
                    switch (choice) {
                      case "profile":
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                        break;
                      case "signOut":
                        AuthService().signOut();
                        break;
                      case "ScrollingHeader":
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ScrollingHeaderExample()));
                        break;
                    }
                  }),
                ],
              )
            ]),
        body: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: NotificationListener(
              onNotification: (notificationInfo) {
                if (notificationInfo is ScrollStartNotification)
                  ScrollPageEvent(context, true).invoke();
                else if (notificationInfo is ScrollEndNotification) ScrollPageEvent(context, false).invoke();
                return true;
              },
              child: PageIndicatorContainer(
                child: PageView(controller: controller, children: <Widget>[
                  Center(child: ClientView()),
                  Center(child: MasterView()),
                  Center(child: AdminView())
                ]),
                align: IndicatorAlign.top,
                length: 3,
                indicatorSpace: 20.0,
                padding: const EdgeInsets.all(10),
                indicatorColor: Colors.transparent,
                indicatorSelectorColor: Colors.blue,
                shape: IndicatorShape.circle(size: 12),
              ),
            )),
        floatingActionButton: Column(children: [
          SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            DropdownButton<AppUser>(
                items: _getUsersList(bloc.users),
                onChanged: (value) => ChangeUserEvent(context, value).invoke(),
                hint: Text('${bloc.curUser?.name ?? 'Add user'}', style: TextStyle(color: Colors.black))),
            IconButton(
              onPressed: () => _addUserDlg(context),
              icon: Icon(Icons.add),
              iconSize: 20,
              splashRadius: 15,
            ),
            IconButton(
              onPressed: () => DelUserEvent(context, bloc.curUser).invoke(),
              icon: Icon(Icons.remove_circle),
              iconSize: 20,
              splashRadius: 15,
            )
          ])
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop);
  }

  List<DropdownMenuItem<AppUser>> _getUsersList(List<AppUser> users) {
    List<DropdownMenuItem<AppUser>> list = [];
    for (var user in users)
      list.add(DropdownMenuItem<AppUser>(value: user, child: Row(children: [Text("${user.name}")])));
    return list;
  }

  void _addUserDlg(BuildContext context) {
    var userName = "";
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return Dialog(
              elevation: 0,
              backgroundColor: Colors.white,
              child: Container(
                  height: 120,
                  child: Column(children: [
                    CustomTextField(hint: 'enter name', ontextChanged: (value) => userName = value),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              AddUserEvent(context, userName).invoke();
                              Navigator.pop(context);
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)))),
                            child: const Text("Add")),
                        OutlinedButton(
                            onPressed: () => Navigator.pop(context),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)))),
                            child: const Text("Cancel")),
                      ],
                    )
                  ])));
        });
  }
}
