import 'dart:developer';

import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/admin_view/admin_view.dart';
import 'package:beauty_link/pages/client_view/client_view.dart';
import 'package:beauty_link/pages/master_view/master_view.dart';
import 'package:beauty_link/pages/admin_view/admin_view_bloc.dart';
import 'package:beauty_link/pages/main_page_bloc.dart';
import 'package:beauty_link/widgets/custom_text_field.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_indicator/page_indicator.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<MainPageBloc>(create: (BuildContext context) => MainPageBloc(InitState())),
          BlocProvider<AdminViewBloc>(create: (BuildContext context) => AdminViewBloc(InitState()))
        ],
        child: BlocBuilder<MainPageBloc, BaseState>(builder: (context, state) {
          return Builder(builder: (context) {
            switch (state.runtimeType) {
              case InitState:
                LoadMainPageEvent(context).invoke();
                return LoadingWidget();
              case BeginEventState:
                return LoadingWidget();
              case EndEventState:
                switch (state.event.runtimeType) {
                  case LoadMainPageEvent:
                    return _onLoadMainPage(context);
                  case ChangeUserEvent:
                    return _onLoadMainPage(context);
                  default:
                    return Text('empty state');
                }
              default:
                return Text('empty state');
            }
          });
        }));
  }
}

Widget _onLoadMainPage(BuildContext context) {
  final PageController controller = PageController();
  var bloc = BlocProvider.of<MainPageBloc>(context);
  return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 15.0),
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
            indicatorColor: Colors.grey,
            indicatorSelectorColor: Colors.blue,
            shape: IndicatorShape.circle(size: 12),
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
