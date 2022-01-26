import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/for_test/user_info/user_info_page_bloc.dart';
import 'package:beauty_link/pages/for_test/users_page/users_page_bloc.dart';
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
                  bottom: TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.person), text: 'Client'),
                        Tab(icon: Icon(Icons.account_box), text: 'Master'),
                        Tab(icon: Icon(Icons.group), text: 'Admin'),
                        Tab(icon: Icon(Icons.admin_panel_settings), text: 'Profile'),
                      ],
                      indicator: ShapeDecoration(
                          shape: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent, width: 0, style: BorderStyle.solid)),
                          gradient: LinearGradient(colors: [Colors.pink, Color(0xff01ff80)]))),
                  title: Text(user.name ?? 'noName')),
              body: BlocConsumer<UserInfoPageBloc, BaseStateV2>(
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
    var bloc = BlocProvider.of<UserInfoPageBloc>(context);
    return TabBarView(
      children: [
        Column(children: [
          Expanded(
              child: CustomGridView(items: [
            CustomGridViewItem(
                onTap: () {
                  FindOfferBtnClicEvent(context)..invoke();
                },
                text: 'Find Offer'),
            CustomGridViewItem(onTap: () => ClientOrdersBtnClicEvent(context)..invoke(), text: 'Orders')
          ]))
        ]),
        Column(children: [
          Expanded(
              child: CustomGridView(items: [
            CustomGridViewItem(
                onTap: () => CompaniesBtnClickEvent(context, "contains")..invoke(), text: 'ContainCompanies'),
            CustomGridViewItem(
                onTap: () => CompaniesBtnClickEvent(context, "canbecontains")..invoke(), text: 'JoinCompanies'),
            CustomGridViewItem(onTap: () => MasterOrdersBtnClicEvent(context)..invoke(), text: 'Orders')
          ]))
        ]),
        Column(children: [
          Expanded(
              child: CustomGridView(items: [
            CustomGridViewItem(onTap: () => CompaniesBtnClickEvent(context, "owner")..invoke(), text: 'Companies')
          ]))
        ]),
        Column(
          children: [
            Text('User name: ${bloc.user.name ?? 'empty'}'),
            CustomButton(
              clickEvent: () => DelUserEvent(context),
              text: "Del User",
            )
          ],
        )
      ],
    );
  }
}
