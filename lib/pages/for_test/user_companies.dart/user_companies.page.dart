import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/for_test/user_companies.dart/user_companies_page_bloc.dart';
import 'package:beauty_link/widgets/LoadingWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCompaniesPage extends StatelessWidget {
  final AppUser user;
  final String companyType;
  const UserCompaniesPage({Key? key, required this.companyType, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => UserCompaniesPageBloc(InitState(), user, companyType),
        child: Scaffold(
            appBar: AppBar(title: Text('$companyType companies')),
            body: BlocConsumer<UserCompaniesPageBloc, BaseStateV2>(listener: (context, state) {
              if (state is InitState) {}
            }, builder: (context, state) {
              return Column(children: [
                Expanded(child: Builder(builder: (context) {
                  var bloc = BlocProvider.of<UserCompaniesPageBloc>(context);
                  switch (state.runtimeType) {
                    case InitState:
                      bloc.add(LoadUserCompaniesPageEvent(context, user, companyType));
                      return LoadingWidget();
                    case BeginInvokeEventState:
                      return LoadingWidget();
                    case EndInvokeEventState:
                      switch ((state as EndInvokeEventState).event.runtimeType) {
                        case LoadUserCompaniesPageEvent:
                          return _onUserCompaniesPageLoadedState(context);
                        default:
                          return Text('empty state');
                      }
                    default:
                      return Text('empty state');
                  }
                }))
              ]);
            })));
  }

  Widget _onUserCompaniesPageLoadedState(BuildContext context) {
    var bloc = BlocProvider.of<UserCompaniesPageBloc>(context);
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: bloc.companies.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(index.toString()),
            background: Container(color: Colors.green, child: Icon(Icons.check)),
            secondaryBackground: Container(color: Colors.red, child: Icon(Icons.cancel)),
            onDismissed: (direction) {},
            child: ListTile(
                title: Text(bloc.companies[index].name ?? "<Empty>", style: TextStyle(fontSize: 22)),
                onTap: () => {/*bloc.add(TapUserEvent(context, bloc.users[index]))*/}),
          );
        });
  }
}
