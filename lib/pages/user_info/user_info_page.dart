import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/pages/user_info/client_tabs_page.dart';
import 'package:beauty_link/pages/user_info/user_info_page_bloc.dart';
import 'package:beauty_link/pages/users_page/users_page.dart';
import 'package:beauty_link/widgets/custom_gridview.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInfoPage extends StatelessWidget {
  final AppUser user;
  const UserInfoPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => UserInfoPageBloc(InitState(), user),
        child: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                title: Center(child: Text("${user.name}")),
                  automaticallyImplyLeading: false,
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(20),
                      child: TabBar(
                          tabs: [
                            Tab(text: 'Client'),
                            Tab(text: 'Master'),
                            Tab(text: 'Admin'),
                            //Tab(text: 'Profile'),
                            IconButton(
                                onPressed: () =>
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => UsersPage())),
                                icon: Icon(Icons.exit_to_app),
                                iconSize: 30)
                          ],
                          indicator: ShapeDecoration(
                              shape: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent, width: 0, style: BorderStyle.solid)),
                              gradient: LinearGradient(colors: [Colors.pink, Color(0xff01ff80)])),
                          onTap: (value) {}))),
              body: BlocConsumer<UserInfoPageBloc, BaseState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  var bloc = BlocProvider.of<UserInfoPageBloc>(context);
                  switch (state.runtimeType) {
                    case InitState:
                      LoadUserInfoPageEvent(context)..invoke();
                      return LoadingWidget();
                    case BeginEventState:
                      return LoadingWidget();
                    case EndEventState:
                      switch ((state as EndEventState).event.runtimeType) {
                        case LoadUserInfoPageEvent:
                          return _onLoadUserInfoPageEvent(context);
                        case CompaniesBtnClickEvent:
                          return LoadingWidget();
                        default:
                          return Text('empty state');
                      }
                    default:
                      return Text('empty state');
                  }
                },
              ),
            )));
  }

  Widget _onLoadUserInfoPageEvent(BuildContext context) {
    return TabBarView(children: [
      ClientTabPage(0xffff5722, user),
      Column(children: [
        Expanded(
            child: CustomGridView(items: [
          CustomGridViewItem(onTap: () => CompaniesBtnClickEvent(context, "contains")..invoke(), text: 'Companies'),
          CustomGridViewItem(onTap: () => MasterOrdersBtnClicEvent(context)..invoke(), text: 'Orders')
        ]))
      ]),
      Column(children: [
        Expanded(
            child: CustomGridView(items: [
          CustomGridViewItem(onTap: () => CompaniesBtnClickEvent(context, "owner")..invoke(), text: 'Companies')
        ]))
      ]),
      /*Column(children: [
        Text('User name: ${bloc.user.name ?? 'empty'}'),
        CustomButton(
          clickEvent: () => _displayAddSkillDialog(context, bloc),
          text: "Add Skill",
        ),
        CustomButton(
          clickEvent: () => DelUserEvent(context).invoke(),
          text: "Del User",
        )
      ]),*/
      Container()
    ]);
  }

  Future<void> _displayAddSkillDialog(BuildContext context, UserInfoPageBloc bloc) async {
    var _skillNameController = TextEditingController();
    var _skillDescController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text('Add skill'),
              content: Column(children: [
                TextField(
                  controller: _skillNameController,
                  decoration: InputDecoration(hintText: "Skill name"),
                ),
                TextField(
                  controller: _skillDescController,
                  decoration: InputDecoration(hintText: "Skill desc"),
                )
              ]),
              actions: <Widget>[
                TextButton(child: Text('CANCEL'), onPressed: () => Navigator.pop(context)),
                TextButton(
                    child: Text('OK'),
                    onPressed: () {
                      bloc.addSkill(Skill(name: _skillNameController.text, desc: _skillDescController.text));
                      Navigator.pop(context);
                    })
              ]);
        });
  }
}
