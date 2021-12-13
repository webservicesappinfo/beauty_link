import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/for_test/user_info_page.dart/user_info_page_bloc.dart';
import 'package:beauty_link/pages/for_test/users_page/users_page_bloc.dart';
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
        child: Scaffold(
            appBar: AppBar(title: Text('${user.name}')),
            body: BlocConsumer<UserInfoPageBloc, BaseStateV2>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                var bloc = BlocProvider.of<UserInfoPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    bloc.add(LoadUserInfoPageEvent(bloc));
                    return LoadingWidget();
                  case BeginEventState:
                    return LoadingWidget();
                  case EndEventState:
                    switch ((state as EndEventState).event.runtimeType) {
                      case LoadUserInfoPageEvent:
                        return Column(
                          children: [
                            Text('${bloc.user.name ?? 'empty'}'),
                            SizedBox(height: 10),
                            CustomButton(
                              bloc: bloc,
                              clickEvent: CompaniesBtnClickEvent(bloc, context, "owner"),
                              text: "OwnerCompanies",
                            ),
                            SizedBox(height: 10),
                            CustomButton(
                              bloc: bloc,
                              clickEvent: CompaniesBtnClickEvent(bloc, context, "contains"),
                              text: "ContainsCompanies",
                            ),
                            SizedBox(height: 10),
                            CustomButton(
                              bloc: bloc,
                              clickEvent: CompaniesBtnClickEvent(bloc, context, "canbecontains"),
                              text: "CanBeContainCompanies",
                            )
                          ],
                        );
                      case CompaniesBtnClickEvent:
                        return LoadingWidget();
                      default:
                        return Text('empty state');
                    }
                  default:
                    return Text('empty state');
                }
              },
            )));
  }
}
