import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/custom_check_box.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'master_company_info_bloc.dart';

class MasterCompanyInfoPage extends StatelessWidget {
  final Company company;
  final AppUser master;
  const MasterCompanyInfoPage({Key? key, required this.company, required this.master}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MasterCompanyInfoPageBloc(InitState(), company, master),
        child: Scaffold(
            appBar: AppBar(title: Text('${company.name}')),
            body: BlocConsumer<MasterCompanyInfoPageBloc, BaseState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                var bloc = BlocProvider.of<MasterCompanyInfoPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    bloc.add(MasterOfferInfoPageEvent(context));
                    return LoadingWidget();
                  case BeginEventState:
                    return LoadingWidget();
                  case EndEventState:
                    switch ((state as EndEventState).event.runtimeType) {
                      case MasterOfferInfoPageEvent:
                        return _onLoadPageEvent(bloc, context);
                      default:
                        return Text('empty state');
                    }
                  default:
                    return Text('empty state');
                }
              },
            )));
  }

  Widget _onLoadPageEvent(MasterCompanyInfoPageBloc bloc, BuildContext context) {
    return Center(
        child: Column(
      children: [
        Icon(Icons.person, size: 40),
        Text('Company name: ${bloc.company.name}'),
        Text('Master name: ${bloc.master.name}'),
        CustomCheckBox(checked: false, title: 'owner'),
        CustomCheckBox(checked: false, title: 'admin'),
        CustomCheckBox(checked: false, title: 'master'),
        CustomButton(text: "Offers", clickEvent: () => OffersBtnClick(context)..invoke()),
        CustomButton(text: "Del master", clickEvent: () => DelMasterBtnClick(context)..invoke())
      ],
    ));
  }
}
